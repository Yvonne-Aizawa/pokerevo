#!/usr/bin/env python3
"""Replace .incbin directives in data/rodata/sdata2 .s files with explicit
assembly (.4byte, .float, .asciz, .skip) based on the byte content.

This addresses pret/pokerevo issue #5 ("resolve data") by turning the
baserom.dol-blob placeholders into typed assembly declarations. The
emitted bytes are byte-identical to the original blobs, so the built
DOL keeps its SHA1.

Usage:
    python3 data_resolver.py [--check] [--in-place] PATH [PATH ...]

By default, the tool runs in --check mode: it prints a summary of what
would change but does not modify files. Pass --in-place to actually
rewrite the .s files.
"""

from __future__ import annotations

import argparse
import os
import re
import struct
import sys
from dataclasses import dataclass
from pathlib import Path

# Valid RAM address range for PBR PAL (the DOL's text/data/bss sections
# live inside this range). Values outside it are treated as raw data
# (sizes, indices, magic, etc.) rather than RAM pointers.
RAM_LO = 0x80000000
RAM_HI = 0x81800000

# Match an incbin block, including the .global line and label that precede it:
#
#     .global lbl_80405D60
#     lbl_80405D60:
#         .incbin "baserom.dol", 0x40260C, 0x28
#
# Capture groups: (1) label, (2) offset, (3) size.
INCBIN_BLOCK_RE = re.compile(
    r"(\.global\s+(lbl_80[0-9A-F]{6})\n"
    r"\2:\n"
    r"\s+\.incbin\s+\"baserom\.dol\",\s+0x([0-9A-F]+),\s+0x([0-9A-F]+)\n)"
)


@dataclass
class Incbin:
    """A single .incbin directive and its resolved content."""

    label: str
    offset: int
    size: int
    blob: bytes

    @property
    def kind(self) -> str:
        return classify(self.blob)

    def to_asm(self) -> str:
        """Render the replacement assembly for this incbin.

        The replacement must produce exactly `size` bytes starting at
        `offset` so that the next label sits at the same address as
        before.
        """
        return render(self)


def classify(blob: bytes) -> str:
    """Return one of: 'zero', 'ff', 'string', 'pointers', 'floats',
    'vtable', 'struct_ff', 'byte', 'short', 'doubles', 'raw'.

    The kinds are tried in order from cheapest to most specific; each
    adds a more aggressive detection than the previous one.
    """
    if not blob:
        return "raw"
    if all(b == 0 for b in blob):
        return "zero"
    if all(b == 0xFF for b in blob):
        return "ff"
    if _is_ascii_string(blob):
        return "string"
    # A blob that begins with 0xFF padding and then a string is a
    # common pattern in this binary; treat it as a string.
    stripped = blob.lstrip(b"\xff")
    if stripped and stripped != blob and _is_ascii_string(stripped):
        return "string"
    # A blob of all printable ASCII (no NUL terminator required) is a
    # string table - the strings may continue into the next label's
    # range.
    if len(blob) >= 4 and _is_all_printable_ascii(blob):
        return "string_table"
    # Single-byte blob (used for individual byte fields in sdata2).
    if len(blob) == 1:
        return "byte"
    # 2-byte blob (u16/s16 - used in sdata2 for halfword fields).
    if len(blob) == 2:
        return "short"
    # 8-byte blob that decodes as a valid double (used in sdata2 for
    # double-precision fields such as DBL_MAX, infinity, etc.).
    if len(blob) == 8:
        try:
            struct.unpack(">d", blob)
            return "doubles"
        except struct.error:
            pass
    # Packed big-endian u16 array (e.g. font widths, bit indices,
    # axis tables). Try this BEFORE the float check below because a
    # u16 array can look like 8 bytes of two floats.
    if _is_u16_array(blob):
        return "u16s"
    if len(blob) % 4 == 0 and len(blob) >= 4:
        ints = struct.unpack(f">{len(blob) // 4}I", blob)
        if all(_looks_like_addr(i) for i in ints):
            return "pointers"
        # Vtable pattern: (0x00000000, 0xFFFFFFFF, ptr) repeated N times.
        n = len(ints)
        if n >= 3 and n % 3 == 0 and all(
            ints[i] == 0
            and ints[i + 1] == 0xFFFFFFFF
            and _looks_like_addr(ints[i + 2])
            for i in range(0, n, 3)
        ):
            return "vtable"
        # Struct pattern: (ptr, 0xFFFFFFFF, 0, 0) - 16 bytes per entry.
        if n >= 4 and n % 4 == 0 and all(
            _looks_like_addr(ints[i])
            and ints[i + 1] == 0xFFFFFFFF
            and ints[i + 2] == 0
            and ints[i + 3] == 0
            for i in range(0, n, 4)
        ):
            return "struct_ff"
        # Small vtable: a few ptrs followed by a single 0xFFFFFFFF
        # sentinel (e.g. 3 entries + 4-byte terminator = 16 bytes).
        sentinel_idx = -1
        for i, v in enumerate(ints):
            if v == 0xFFFFFFFF:
                sentinel_idx = i
                break
        if sentinel_idx >= 1 and all(
            _looks_like_addr(ints[i]) for i in range(sentinel_idx)
        ) and all(ints[i] == 0 for i in range(sentinel_idx + 1, n)):
            return "vtable"
        # Float: every value is finite (no NaN/Inf), and most are
        # non-zero. The "pointers" check above already rules out
        # all-RAM-address blobs. We allow the full IEEE-754 single
        # range (about ±3.4e38) so subnormal/small denormals and
        # large finite values still match. Floats win over the
        # UTF-16 fallback below because float values happen to
        # form valid BMP code units by coincidence.
        try:
            floats = struct.unpack(f">{len(blob) // 4}f", blob)
        except struct.error:
            floats = ()
        if floats and all(-3.5e38 < f < 3.5e38 for f in floats) and sum(
            1 for f in floats if f != 0.0
        ) >= max(1, len(floats) // 2):
            return "floats"
    # UTF-16 BE string: every pair of bytes is a valid BMP code unit
    # (no surrogates, no non-character code points), terminated by a
    # NUL pair. Tried AFTER floats because float bit patterns can
    # happen to fall inside the BMP scalar range.
    if len(blob) % 2 == 0 and len(blob) >= 2 and _is_utf16be_string(blob):
        return "utf16"
    return "raw"


def _looks_like_addr(val: int) -> bool:
    return RAM_LO <= val <= RAM_HI and val != 0


def _is_ascii_string(blob: bytes) -> bool:
    """A blob is a printable C string if it ends with NUL and every
    preceding byte is printable ASCII (or a few whitespace controls)."""
    if len(blob) < 2 or blob[-1] != 0:
        return False
    for b in blob[:-1]:
        if b in (0, 9, 10, 13):
            continue
        if 32 <= b < 127:
            continue
        return False
    return True


def _is_all_printable_ascii(blob: bytes) -> bool:
    """Every byte is printable ASCII (0x20-0x7E), NUL, or a few
    whitespace controls (TAB/LF/CR). Used to recognise string tables
    that aren't NUL-terminated at the end of the incbin range (the
    string may be split across adjacent labels)."""
    for b in blob:
        if b in (0, 9, 10, 13):
            continue
        if 32 <= b < 127:
            continue
        return False
    return True


def _is_u16_array(blob: bytes) -> bool:
    """A blob is a packed big-endian u16 array if its length is a
    multiple of 2 and no value, when interpreted as a 16-bit code
    unit, has its high byte inside the RAM pointer range
    0x80-0x81. (Anything outside that range is either a small
    integer, an ASCII byte, or a CJK/BMP code unit.)

    An odd-length blob is also accepted if dropping the last byte
    yields a valid u16 array - the trailing byte is then treated as
    alignment padding for whatever follows the incbin.
    """
    if len(blob) < 2:
        return False
    for size in (len(blob), len(blob) - 1):
        if size < 2 or size % 2 != 0:
            continue
        words = struct.unpack(f">{size // 2}H", blob[:size])
        if all(not 0x8000 <= w <= 0x81FF for w in words):
            return True
    return False


def _is_utf16be_string(blob: bytes) -> bool:
    """A blob is a UTF-16 BE string if every 16-bit code unit is a
    valid Basic Multilingual Plane character (no surrogate halves, no
    U+FFFE / U+FFFF) and the blob ends with a NUL code unit.

    Embedded NULs are allowed (the only required terminator is at the
    end of the blob). Code points outside the BMP (i.e. surrogate
    pairs) are also out of scope - those would be four bytes per char
    and rare in a Wii game from 2007.
    """
    if len(blob) < 2 or len(blob) % 2 != 0:
        return False
    # Must end with a NUL code unit.
    if blob[-2:] != b"\x00\x00":
        return False
    # Every non-trailing code unit must be a valid BMP scalar.
    for i in range(0, len(blob) - 2, 2):
        cu = (blob[i] << 8) | blob[i + 1]
        if 0xD800 <= cu <= 0xDFFF or cu in (0xFFFE, 0xFFFF):
            return False
    return True


def render(inc: Incbin) -> str:
    """Return assembly text that emits exactly `inc.size` bytes."""
    kind = inc.kind
    blob = inc.blob
    if kind == "zero":
        # .skip is the cleanest replacement.
        return f"\t.skip 0x{inc.size:X}\n"
    if kind == "string":
        # Split on NUL so a blob containing multiple concatenated
        # strings (e.g. a Jikkyo script bundle) still assembles back to
        # the original bytes.
        parts = blob.split(b"\x00")
        # split always adds a trailing "" since blob ends with \x00.
        assert parts[-1] == b""
        parts = parts[:-1]
        out = []
        for i, part in enumerate(parts):
            if i > 0:
                out.append("\t.byte 0x00")
            if part:
                # Use .ascii (no implicit NUL) so the trailing \0 of the
                # whole blob is preserved by the explicit .byte 0x00
                # above. Escape non-printable bytes for readability but
                # they are still emitted verbatim.
                out.append("\t.ascii " + _quote_ascii(part))
        if not parts:
            # Empty string is just a NUL.
            out.append("\t.byte 0x00")
        out.append("\t.byte 0x00")
        return "\n".join(out) + "\n"
    if kind == "string_table":
        # A run of one or more NUL-terminated strings, with the
        # final string possibly unterminated at the end of the
        # incbin range (the next label continues it). Emit a series
        # of `.ascii` segments separated by `.byte 0x00`.
        parts = blob.split(b"\x00")
        out = []
        # If the blob ends in NUL, `split` produces a trailing "" we
        # drop. If it does not, the last element is the unterminated
        # tail string.
        ends_with_nul = parts[-1] == b""
        if ends_with_nul:
            parts = parts[:-1]
        for i, part in enumerate(parts):
            if i > 0:
                out.append("\t.byte 0x00")
            if part:
                out.append("\t.ascii " + _quote_ascii(part))
        if ends_with_nul:
            out.append("\t.byte 0x00")
        return "\n".join(out) + "\n"
    if kind == "pointers":
        ints = struct.unpack(f">{inc.size // 4}I", blob)
        # 4 ints per line keeps the diff readable.
        lines = []
        for i in range(0, len(ints), 4):
            chunk = ints[i : i + 4]
            rendered = []
            for v in chunk:
                if v == 0:
                    rendered.append("0x00000000")
                else:
                    # Cross-reference: if the value matches a label
                    # address, render the label. Otherwise emit the hex.
                    addr = f"{v:08X}"
                    label = _label_for_addr(addr)
                    if label is not None:
                        rendered.append(label)
                    else:
                        rendered.append(f"0x{v:08X}")
            lines.append("\t.4byte " + ", ".join(rendered))
        return "\n".join(lines) + "\n"
    if kind == "floats":
        floats = struct.unpack(f">{inc.size // 4}f", blob)
        # Re-encode the original bytes so we can read back the sign
        # bit of zero values (struct.pack(">f", 0.0) and (-0.0) differ
        # in the sign bit, but Python's 0.0 == -0.0 is True).
        raw_ints = struct.unpack(f">{inc.size // 4}I", blob)
        lines = []
        for i in range(0, len(floats), 4):
            chunk = floats[i : i + 4]
            ints_chunk = raw_ints[i : i + 4]
            rendered = []
            for f, raw in zip(chunk, ints_chunk):
                if f == 0.0:
                    # Preserve -0.0 (sign bit set) vs +0.0 (sign bit
                    # clear) by re-emitting the literal.
                    if raw == 0x80000000:
                        rendered.append("-0.0")
                    else:
                        rendered.append("0.0")
                else:
                    # Use repr() (shortest round-trippable form) to
                    # preserve every bit of the original float.
                    rendered.append(repr(f))
            lines.append("\t.float " + ", ".join(rendered))
        return "\n".join(lines) + "\n"
    if kind == "ff":
        # All bytes are 0xFF. Emit as a run of .4byte 0xFFFFFFFF when
        # 4-byte aligned, otherwise as a run of .byte 0xFF.
        if inc.size % 4 == 0:
            n = inc.size // 4
            lines = []
            for i in range(0, n, 8):
                chunk = ["0xFFFFFFFF"] * min(8, n - i)
                lines.append("\t.4byte " + ", ".join(chunk))
            return "\n".join(lines) + "\n"
        return ("\t.byte " + ", ".join(["0xFF"] * inc.size) + "\n")
    if kind == "byte":
        # Single byte.
        return f"\t.byte 0x{blob[0]:02X}\n"
    if kind == "short":
        # Two bytes, emitted as a big-endian halfword.
        v = struct.unpack(">H", blob)[0]
        return f"\t.2byte 0x{v:04X}\n"
    if kind == "u16s":
        # Packed big-endian u16 array. If the blob has an odd
        # number of bytes, the trailing byte is alignment padding
        # and is emitted as a separate .byte directive.
        size = len(blob) & ~1  # round down to even
        words = struct.unpack(f">{size // 2}H", blob[:size])
        lines = []
        for i in range(0, len(words), 8):
            chunk = words[i : i + 8]
            lines.append(
                "\t.2byte " + ", ".join(f"0x{v:04X}" for v in chunk)
            )
        if size < len(blob):
            lines.append(f"\t.byte 0x{blob[-1]:02X}")
        return "\n".join(lines) + "\n"
    if kind == "doubles":
        # 8-byte big-endian double. Use .8byte with the raw hex value
        # so we preserve the exact bit pattern, including NaN payloads
        # and signed-zero sign bits, which the assembler's `.double`
        # would normalize to canonical forms.
        return f"\t.8byte 0x{blob.hex().upper()}\n"
    if kind == "utf16":
        # UTF-16 BE big-endian characters, terminated by a NUL
        # 16-bit code unit. Emit as a series of `.2byte` directives,
        # four per line. The trailing NUL pair is included.
        words = struct.unpack(f">{len(blob) // 2}H", blob)
        lines = []
        for i in range(0, len(words), 4):
            chunk = words[i : i + 4]
            lines.append(
                "\t.2byte " + ", ".join(f"0x{v:04X}" for v in chunk)
            )
        return "\n".join(lines) + "\n"
    if kind == "vtable":
        # Either a repeated (0, 0xFFFFFFFF, ptr) triple (full
        # vtable) or a small list of ptrs terminated by a single
        # 0xFFFFFFFF sentinel.
        ints = struct.unpack(f">{inc.size // 4}I", blob)
        # Detect which pattern we're dealing with by looking at the
        # structure: 0xFFFFFFFF tokens at every 3rd word means the
        # triple pattern; a single 0xFFFFFFFF after a run of
        # pointers means the sentinel pattern.
        sentinel_count = sum(1 for i, v in enumerate(ints) if v == 0xFFFFFFFF)
        is_triple = sentinel_count > 1 and all(
            (i % 3 != 2) or v == 0xFFFFFFFF for i, v in enumerate(ints)
        ) and all(
            ints[i] == 0 and ints[i + 1] == 0xFFFFFFFF and _looks_like_addr(ints[i + 2])
            for i in range(0, len(ints) - 2, 3)
            if i + 2 < len(ints)
        )
        if is_triple:
            lines = []
            for i in range(0, len(ints), 3 * 4):
                chunk = ints[i : i + 12]
                if not chunk:
                    break
                rendered = []
                for j in range(0, len(chunk), 3):
                    _, _, ptr = chunk[j : j + 3]
                    addr = f"{ptr:08X}"
                    label = _label_for_addr(addr)
                    rendered.append("0x00000000")
                    rendered.append("0xFFFFFFFF")
                    rendered.append(label if label else f"0x{ptr:08X}")
                lines.append("\t.4byte " + ", ".join(rendered))
            return "\n".join(lines) + "\n"
        # Sentinel form: ptrs, then 0xFFFFFFFF, then any trailing
        # padding (zeros) we encountered.
        sent_at = ints.index(0xFFFFFFFF)
        ptrs = ints[:sent_at]
        lines = []
        for i in range(0, len(ptrs), 4):
            chunk = ptrs[i : i + 4]
            rendered = [
                (
                    _label_for_addr(f"{v:08X}")
                    if _label_for_addr(f"{v:08X}")
                    else f"0x{v:08X}"
                )
                for v in chunk
            ]
            lines.append("\t.4byte " + ", ".join(rendered))
        lines.append("\t.4byte 0xFFFFFFFF")
        for i in range(sent_at + 1, len(ints), 4):
            chunk = ints[i : i + 4]
            lines.append(
                "\t.4byte " + ", ".join(f"0x{v:08X}" for v in chunk)
            )
        return "\n".join(lines) + "\n"
    if kind == "struct_ff":
        # Repeated (ptr, 0xFFFFFFFF, 0, 0) 16-byte record.
        ints = struct.unpack(f">{inc.size // 4}I", blob)
        lines = []
        for i in range(0, len(ints), 4 * 4):
            chunk = ints[i : i + 16]
            if not chunk:
                break
            rendered = []
            for j in range(0, len(chunk), 4):
                ptr = chunk[j]
                addr = f"{ptr:08X}"
                label = _label_for_addr(addr)
                rendered.append(label if label else f"0x{ptr:08X}")
                rendered.append("0xFFFFFFFF")
                rendered.append("0x00000000")
                rendered.append("0x00000000")
            lines.append("\t.4byte " + ", ".join(rendered))
        return "\n".join(lines) + "\n"
    # Fallback: leave a comment summarizing the blob and emit zeros.
    # We can't emit a .4byte of the raw bytes without first decoding
    # them, and for unknown blobs the safest thing is to keep them as
    # incbin. The caller should not call render() with kind=='raw' on
    # resolved blocks.
    raise ValueError(f"render() called with raw blob: {inc.label}")


_LABEL_ADDR_INDEX: dict[str, str] | None = None


def _label_for_addr(addr: str) -> str | None:
    """Look up the label name for a RAM address (lazy)."""
    global _LABEL_ADDR_INDEX
    if _LABEL_ADDR_INDEX is None:
        _LABEL_ADDR_INDEX = _build_label_index()
    return _LABEL_ADDR_INDEX.get(addr)


def _build_label_index() -> dict[str, str]:
    """Scan all asm files for global `lbl_80XXXXXX:` definitions and
    index them by their 8-hex-digit uppercase address.

    Only labels declared with `.global` are indexed, because the
    assembler only resolves cross-references for global symbols. Local
    labels (e.g. `lbl_8000DD98` inside code_8000ADC0.s) would link-fail
    if emitted into a `.4byte`.
    """
    index: dict[str, str] = {}
    # Match `.global lbl_XXXX` followed (within ~2 lines) by
    # `lbl_XXXX:`. Two separate regexes keep the pass simple: first
    # collect every address that has a `.global` directive, then look
    # for the matching definition.
    global_pat = re.compile(
        r"^\.global\s+(lbl_80[0-9A-F]{6})\s*$", re.M
    )
    def_pat = re.compile(
        r"^lbl_80[0-9A-F]{6}:\s*$", re.M
    )
    for root, _dirs, files in os.walk("asm"):
        for name in files:
            if not name.endswith(".s"):
                continue
            path = os.path.join(root, name)
            try:
                with open(path, encoding="utf-8", errors="replace") as f:
                    text = f.read()
            except OSError:
                continue
            declared = set(global_pat.findall(text))
            if not declared:
                continue
            for m in def_pat.finditer(text):
                lbl = m.group(0).rstrip(":").strip()
                if lbl in declared:
                    index[lbl[4:].upper()] = lbl
    return index


def _quote_ascii(part: bytes) -> str:
    """Quote a bytes object as a GCC-style .ascii string literal.

    The result is wrapped in double quotes with C-style escapes. We
    prefer to keep printable runs as-is for readability, and escape the
    rest.
    """
    out = ['"']
    run_start = 0
    for i, b in enumerate(part):
        if 32 <= b < 127 and b not in (ord('"'), ord('\\')):
            continue
        # Flush printable run
        if i > run_start:
            out.append(part[run_start:i].decode("latin-1"))
        # Escape this byte
        if b == ord('"'):
            out.append('\\"')
        elif b == ord("\\"):
            out.append("\\\\")
        elif b == 9:
            out.append("\\t")
        elif b == 10:
            out.append("\\n")
        elif b == 13:
            out.append("\\r")
        else:
            out.append(f"\\x{b:02x}")
        run_start = i + 1
    if run_start < len(part):
        out.append(part[run_start:].decode("latin-1"))
    out.append('"')
    return "".join(out)


@dataclass
class Stats:
    total: int = 0
    zeros: int = 0
    ffs: int = 0
    strings: int = 0
    string_tables: int = 0
    pointers: int = 0
    floats: int = 0
    vtables: int = 0
    struct_ffs: int = 0
    bytes_: int = 0
    shorts: int = 0
    u16s: int = 0
    doubles: int = 0
    utf16s: int = 0
    raw: int = 0

    def add(self, kind: str) -> None:
        self.total += 1
        if kind == "zero":
            self.zeros += 1
        elif kind == "ff":
            self.ffs += 1
        elif kind == "string":
            self.strings += 1
        elif kind == "string_table":
            self.string_tables += 1
        elif kind == "pointers":
            self.pointers += 1
        elif kind == "floats":
            self.floats += 1
        elif kind == "vtable":
            self.vtables += 1
        elif kind == "struct_ff":
            self.struct_ffs += 1
        elif kind == "byte":
            self.bytes_ += 1
        elif kind == "short":
            self.shorts += 1
        elif kind == "u16s":
            self.u16s += 1
        elif kind == "doubles":
            self.doubles += 1
        elif kind == "utf16":
            self.utf16s += 1
        else:
            self.raw += 1


def resolve_file(path: str, baserom: bytes, *, in_place: bool) -> tuple[str, Stats]:
    """Return the rewritten file contents and a Stats summary."""
    with open(path, encoding="utf-8", errors="replace") as f:
        text = f.read()
    stats = Stats()

    def replace(m: re.Match) -> str:
        # group(1) is the full block: .global lbl_XXX\nlbl_XXX:\n\t.incbin ...\n
        # We want to keep the .global and label lines but replace the
        # .incbin line with the resolved assembly.
        head = m.group(1).rsplit("\n", 2)[0] + "\n"
        label = m.group(2)
        offset = int(m.group(3), 16)
        size = int(m.group(4), 16)
        if size == 0:
            stats.add("raw")
            return m.group(1)
        blob = baserom[offset : offset + size]
        inc = Incbin(label=label, offset=offset, size=size, blob=blob)
        stats.add(inc.kind)
        if inc.kind == "raw":
            return m.group(1)
        return head + inc.to_asm()

    new_text = INCBIN_BLOCK_RE.sub(replace, text)
    if in_place and new_text != text:
        with open(path, "w", encoding="utf-8") as f:
            f.write(new_text)
    return new_text, stats


def main(argv: list[str]) -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("paths", nargs="+", help=".s files to process")
    ap.add_argument(
        "--in-place",
        action="store_true",
        help="rewrite the files (default: check only)",
    )
    ap.add_argument(
        "--baserom",
        default="baserom.dol",
        help="path to the baserom (default: baserom.dol)",
    )
    args = ap.parse_args(argv[1:])

    repo_root = Path(__file__).resolve().parents[2]
    os.chdir(repo_root)
    with open(args.baserom, "rb") as f:
        baserom = f.read()

    overall = Stats()
    for path in args.paths:
        _new_text, stats = resolve_file(path, baserom, in_place=args.in_place)
        overall.total += stats.total
        overall.zeros += stats.zeros
        overall.ffs += stats.ffs
        overall.strings += stats.strings
        overall.string_tables += stats.string_tables
        overall.pointers += stats.pointers
        overall.floats += stats.floats
        overall.vtables += stats.vtables
        overall.struct_ffs += stats.struct_ffs
        overall.bytes_ += stats.bytes_
        overall.shorts += stats.shorts
        overall.u16s += stats.u16s
        overall.doubles += stats.doubles
        overall.utf16s += stats.utf16s
        overall.raw += stats.raw
        kind = "rewrite" if args.in_place else "scan"
        print(
            f"{path}: {kind} total={stats.total} "
            f"zeros={stats.zeros} ffs={stats.ffs} "
            f"strings={stats.strings} string_tables={stats.string_tables} "
            f"pointers={stats.pointers} floats={stats.floats} "
            f"vtables={stats.vtables} struct_ffs={stats.struct_ffs} "
            f"bytes={stats.bytes_} shorts={stats.shorts} "
            f"u16s={stats.u16s} doubles={stats.doubles} "
            f"utf16s={stats.utf16s} raw={stats.raw}"
        )

    print(
        f"--- total: {overall.total}, "
        f"resolvable={overall.zeros + overall.ffs + overall.strings + overall.string_tables + overall.pointers + overall.floats + overall.vtables + overall.struct_ffs + overall.bytes_ + overall.shorts + overall.u16s + overall.doubles + overall.utf16s} "
        f"({100 * (overall.zeros + overall.ffs + overall.strings + overall.string_tables + overall.pointers + overall.floats + overall.vtables + overall.struct_ffs + overall.bytes_ + overall.shorts + overall.u16s + overall.doubles + overall.utf16s) / max(1, overall.total):.1f}%), "
        f"raw={overall.raw}"
    )
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
