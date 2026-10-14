#!/usr/bin/env python3
"""Compile one translation unit and compare its code with the original asm, per function.

The reference is the `asm/` file the source replaces: `src/SDK/OS/OSAlarm.c` is compared with
`asm/SDK/OS/OSAlarm.s`, read from the working tree, or from git history once it has been deleted.
Relocated fields (call targets, `@ha`/`@l`/`@sda21` operands) are masked using our object's
relocations, so only the code itself is compared. A whole-DOL `make` is still the final check.

usage:
  tu_diff.py SRC                        # one line per function: match, or differing lines and sizes
  tu_diff.py SRC -f FUNC --diff         # aligned listing of one function, differences marked
  tu_diff.py SRC -f FUNC --variants V   # score each definition of FUNC in V (blocks split by lines
                                        # of =====) without touching SRC; --keep N writes variant N
  tu_diff.py SRC --ref other.s          # compare against another asm file
  tu_diff.py SRC --flags "-inline auto" # try extra compiler flags
  tu_diff.py SRC --compiler Wii/1.0     # try another compiler version
  tu_diff.py SRC --sdk                  # build with -inline auto, as src/SDK/OS/ is built

Variant blocks replace the function's whole definition, so a block may start with a static inline
helper it needs. Lower scores are better; 0 is a match.
"""
import argparse
import difflib
import os
import re
import shlex
import subprocess
import sys
import tempfile

ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", ".."))
OBJDUMP = "/opt/devkitpro/devkitPPC/bin/powerpc-eabi-objdump"
COMPILER = "GC/3.0"
CFLAGS = ("-Cpp_exceptions off -proc gekko -fp hard -O4,p -nodefaults -msgstyle gcc -ipa file "
          "-i . -I- -i include -i include/SDK -i include/MSL_C -include include/types.h -W all -w nopragmas")

# bits of the instruction word each relocation type fills in
RELOC_MASKS = {
    "R_PPC_REL24": 0x03FFFFFC,
    "R_PPC_REL14": 0x0000FFFC,
    "R_PPC_ADDR16_HA": 0x0000FFFF,
    "R_PPC_ADDR16_HI": 0x0000FFFF,
    "R_PPC_ADDR16_LO": 0x0000FFFF,
    "R_PPC_ADDR16": 0x0000FFFF,
    "R_PPC_EMB_SDA21": 0x001FFFFF,  # rA (r2/r13) and the offset
}


def run(cmd, **kw):
    return subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True, **kw)


def reference_asm(src):
    """The asm text that SRC replaces, from the working tree or git history."""
    rel = os.path.relpath(os.path.abspath(src), ROOT)
    asm = re.sub(r"^src/", "asm/", os.path.splitext(rel)[0]) + ".s"
    if os.path.exists(os.path.join(ROOT, asm)):
        return asm, open(os.path.join(ROOT, asm)).read()
    head = run(["git", "show", f"HEAD:{asm}"])
    if head.returncode == 0:  # deleted but not committed yet
        return f"{asm} (HEAD)", head.stdout
    log = run(["git", "log", "-1", "--format=%H", "--diff-filter=D", "--", asm]).stdout.strip()
    if not log:
        sys.exit(f"no {asm} in the working tree or git history; pass --ref")
    return f"{asm} (deleted in {log[:7]})", run(["git", "show", f"{log}^:{asm}"]).stdout


def parse_reference(text):
    """{function: [(word, text)]} from a .s listing's .text section, in file order."""
    globals_ = set(re.findall(r"^\.global\s+(\S+)", text, re.M))
    funcs, order, cur, in_text = {}, [], None, False
    for line in text.splitlines():
        sec = re.match(r"\s*\.section\s+([.\w]+)", line)
        if sec:
            in_text = sec.group(1) == ".text"
            continue
        if not in_text:
            continue
        label = re.match(r"^([\w.$@?]+):", line)
        if label and (label.group(1) in globals_ or label.group(1).startswith("func_")):
            cur = label.group(1)
            funcs[cur] = []
            order.append(cur)
            continue
        ins = re.match(r"^/\* [0-9A-F]+ [0-9A-F]+  ([0-9A-F]{2}) ([0-9A-F]{2}) ([0-9A-F]{2}) ([0-9A-F]{2}) \*/\s*(.*)", line)
        if ins and cur:
            funcs[cur].append((int("".join(ins.group(1, 2, 3, 4)), 16), ins.group(5).strip()))
    return order, funcs


EXTRA_FLAGS = ""
SDK_SOURCE = False


def compile_tu(src, obj):
    lang = "c++" if src.endswith(".cpp") else "c99"
    sdk = "-inline auto" if SDK_SOURCE else ""  # as the Makefile builds src/SDK/OS/
    base = CFLAGS.replace(" -ipa file", "") if "-ipa" in EXTRA_FLAGS else CFLAGS  # a second -ipa is an error
    # Extra flags go before the include options: MWCC treats an -ipa after -include as a late pragma
    head, includes = base.split(" -i . ", 1)
    flags = f"{head} {sdk} {EXTRA_FLAGS} -i . {includes} -lang {lang} -c"
    cc = f"wine tools/mwcc_compiler/{COMPILER}/mwcceppc.exe"
    res = run([sys.executable, "tools/pragma/pragma.py", cc, flags, obj, src])
    msgs = "\n".join(l for l in (res.stdout + res.stderr).splitlines() if "fixme:" not in l and l.strip())
    if res.returncode != 0 or not os.path.exists(obj):
        sys.exit(f"compile failed:\n{msgs}")
    return msgs


def parse_object(obj):
    """{function: [(word, mask, text)]} from our object, masks from its .text relocations."""
    out = run([OBJDUMP, "-dr", "--no-show-raw-insn", obj]).stdout
    raw = run([OBJDUMP, "-d", obj]).stdout
    words = {}
    for m in re.finditer(r"^\s*([0-9a-f]+):\s+((?:[0-9a-f]{2} ){4})", raw, re.M):
        words[int(m.group(1), 16)] = int(m.group(2).replace(" ", ""), 16)
    funcs, order, cur = {}, [], None
    for line in out.splitlines():
        head = re.match(r"^[0-9a-f]+ <(.+)>:$", line)
        if head:
            cur = head.group(1)
            funcs[cur] = []
            order.append(cur)
            continue
        rel = re.match(r"^\s*([0-9a-f]+): (R_PPC_\w+)\s+(\S+)", line)
        if rel and cur is not None:
            addr = int(rel.group(1), 16) & ~3
            for ins_ in funcs[cur]:
                if ins_[0] == addr:
                    ins_[2] |= RELOC_MASKS.get(rel.group(2), 0xFFFFFFFF)
                    ins_[3] += f"  <{rel.group(3)}>"
            continue
        ins = re.match(r"^\s*([0-9a-f]+):\s+(.*)", line)
        if ins and cur is not None:
            addr = int(ins.group(1), 16)
            funcs[cur].append([addr, words.get(addr, 0), 0, ins.group(2).strip()])
    return order, {f: [(w, m, t) for _, w, m, t in v] for f, v in funcs.items()}


def compare(mine, ref):
    """(score, rows): differing aligned lines, with masked comparison."""
    a = [w & ~m for w, m, _ in mine]
    b = [w & ~m for (w, _), (_, m, _) in zip(ref, mine)] + [w for w, _ in ref[len(mine):]]
    rows, score = [], 0
    for op, i1, i2, j1, j2 in difflib.SequenceMatcher(None, a, b, autojunk=False).get_opcodes():
        n = max(i2 - i1, j2 - j1)
        for k in range(n):
            l = mine[i1 + k] if i1 + k < i2 else None
            r = ref[j1 + k] if j1 + k < j2 else None
            if op != "equal":
                score += 1
            rows.append((op != "equal", l, r))
    return score, rows


def show(rows):
    for bad, l, r in rows:
        left = f"{l[0]:08x}  {l[2]}" if l else ""
        right = f"{r[0]:08x}  {r[1]}" if r else ""
        print(f"{'!' if bad else ' '} {left:<52.52} | {right}")


def find_function(text, name):
    """(start, end) of NAME's definition in C source text, from its return type's line to its closing brace."""
    m = re.search(rf"^[^\n;{{}}]*\b{re.escape(name)}\s*\([^;{{]*\)\s*\{{", text, re.M)
    if not m:
        sys.exit(f"can't find the definition of {name}")
    depth, i = 0, m.end() - 1
    while i < len(text):
        depth += {"{": 1, "}": -1}.get(text[i], 0)
        if depth == 0:
            return m.start(), i + 1
        i += 1
    sys.exit(f"unbalanced braces in {name}")


def score_source(src_text, src_path, func, ref, tmp):
    path = os.path.join(tmp, os.path.basename(src_path))
    open(path, "w").write(src_text)
    msgs = compile_tu(path, os.path.join(tmp, "v.o"))
    _, mine = parse_object(os.path.join(tmp, "v.o"))
    if func not in mine:
        return None, msgs, []
    score, rows = compare(mine[func], ref[func])
    return score, msgs, rows


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("src")
    ap.add_argument("-f", "--function")
    ap.add_argument("--diff", action="store_true")
    ap.add_argument("--ref")
    ap.add_argument("--variants")
    ap.add_argument("--keep", type=int)
    ap.add_argument("--compiler", default="GC/3.0", help="directory under tools/mwcc_compiler, e.g. Wii/1.0")
    ap.add_argument("--sdk", action="store_true", help="build as SDK code (-inline auto) though outside src/SDK/OS/")
    ap.add_argument("--flags", default="", help="extra compiler flags, e.g. '-inline auto'")
    args = ap.parse_args()
    global EXTRA_FLAGS, COMPILER, SDK_SOURCE
    EXTRA_FLAGS = args.flags
    SDK_SOURCE = os.path.relpath(os.path.abspath(args.src), ROOT).startswith("src/SDK/OS/") or args.sdk
    COMPILER = args.compiler

    if args.ref:
        ref_name, ref_text = args.ref, open(args.ref).read()
    else:
        ref_name, ref_text = reference_asm(args.src)
    ref_order, ref = parse_reference(ref_text)

    with tempfile.TemporaryDirectory() as tmp:
        if args.variants:
            if not args.function:
                sys.exit("--variants needs -f FUNC")
            src_text = open(args.src).read()
            start, end = find_function(src_text, args.function)
            blocks = [b.strip("\n") for b in re.split(r"^=====+\s*$", open(args.variants).read(), flags=re.M)]
            blocks = [b for b in blocks if b.strip()]
            if args.keep is not None:
                open(args.src, "w").write(src_text[:start] + blocks[args.keep] + src_text[end:])
                print(f"kept variant {args.keep} in {args.src}")
                return
            base, _, _ = score_source(src_text, args.src, args.function, ref, tmp)
            print(f"current: {base}")
            for n, block in enumerate(blocks):
                score, msgs, rows = score_source(src_text[:start] + block + src_text[end:], args.src,
                                                 args.function, ref, tmp)
                mine_len = sum(1 for _, l, _ in rows if l)
                note = " (warnings)" if "warning" in msgs.lower() else ""
                print(f"variant {n}: {score} ({mine_len} vs {len(ref[args.function])} instructions){note}")
            return

        msgs = compile_tu(args.src, os.path.join(tmp, "t.o"))
        if msgs:
            print(msgs)
        mine_order, mine = parse_object(os.path.join(tmp, "t.o"))

    print(f"reference: {ref_name}")
    names = [args.function] if args.function else ref_order
    ok = True
    for name in names:
        if name not in mine:
            print(f"  MISSING   {name}")
            ok = False
            continue
        score, rows = compare(mine[name], ref[name])
        size = f"{len(mine[name])} vs {len(ref[name])}"
        print(f"  {'match' if score == 0 else f'{score:>3} diff':<9} {name} ({size} instructions)")
        ok &= score == 0
        if args.diff and score:
            show(rows)
    mine_funcs = [f for f in mine_order if f in ref]
    if mine_funcs != [f for f in ref_order if f in mine]:
        print("  ORDER differs from the original:", " ".join(mine_order))
        ok = False
    extra = [f for f in mine_order if f not in ref]
    if extra:
        print("  not in the original:", " ".join(extra))
    sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
