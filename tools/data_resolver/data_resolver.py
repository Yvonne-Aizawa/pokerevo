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
    """Return one of: 'zero', 'string', 'pointers', 'floats', 'raw'."""
    if not blob:
        return "raw"
    if all(b == 0 for b in blob):
        return "zero"
    if _is_ascii_string(blob):
        return "string"
    if len(blob) % 4 == 0 and len(blob) >= 4:
        ints = struct.unpack(f">{len(blob) // 4}I", blob)
        if all(_looks_like_addr(i) for i in ints):
            return "pointers"
        try:
            floats = struct.unpack(f">{len(blob) // 4}f", blob)
        except struct.error:
            floats = ()
        # Plausibly-float: every value is finite, and at least most are
        # non-zero. The "pointers" check above already rules out
        # all-RAM-address blobs, so this catches genuine float arrays.
        if floats and all(-1e6 < f < 1e6 for f in floats) and sum(
            1 for f in floats if f != 0.0
        ) >= max(1, len(floats) // 2):
            return "floats"
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
    strings: int = 0
    pointers: int = 0
    floats: int = 0
    raw: int = 0

    def add(self, kind: str) -> None:
        self.total += 1
        if kind == "zero":
            self.zeros += 1
        elif kind == "string":
            self.strings += 1
        elif kind == "pointers":
            self.pointers += 1
        elif kind == "floats":
            self.floats += 1
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
        overall.strings += stats.strings
        overall.pointers += stats.pointers
        overall.floats += stats.floats
        overall.raw += stats.raw
        kind = "rewrite" if args.in_place else "scan"
        print(
            f"{path}: {kind} total={stats.total} "
            f"zeros={stats.zeros} strings={stats.strings} "
            f"pointers={stats.pointers} floats={stats.floats} "
            f"raw={stats.raw}"
        )

    print(
        f"--- total: {overall.total}, "
        f"resolvable={overall.zeros + overall.strings + overall.pointers + overall.floats} "
        f"({100 * (overall.zeros + overall.strings + overall.pointers + overall.floats) / max(1, overall.total):.1f}%), "
        f"raw={overall.raw}"
    )
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
