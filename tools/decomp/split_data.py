#!/usr/bin/env python3
"""Carve one TU's data out of a monolithic data asm file (data_2.s, bss_2.s, sbss_2.s, ...).

The labels from START up to (not including) END move into the TU's C file, which the caller writes.
The lines before START stay in the monolithic file, whose object moves in obj_files.mk to just
before the TU's object. The lines from END on go to a new continuation file, named by END's
address, which takes the monolithic object's old place in obj_files.mk. Nothing else in the link
order moves, so the TU's data lands where it was, as long as no object between the TU and the
monolith's old place contributes to the same section (check the map).

usage:
  split_data.py asm/bss_2.s lbl_805147D8 lbl_805151E0 src/SDK/OS/OSThread.o --align 32 --owner "OSThread.c's statics"

--align is the continuation's alignment: the alignment of the object at END (8 is the usual
contribution alignment; 32 for objects declared ATTRIBUTE_ALIGN(32)).
"""
import argparse
import os
import re
import sys

ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", ".."))


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("asm", help="monolithic asm file, e.g. asm/bss_2.s")
    ap.add_argument("start", help="first label the TU owns")
    ap.add_argument("end", help="first label after the TU's data")
    ap.add_argument("tu", help="the TU's object as obj_files.mk names it after $(BUILD_DIR)/, e.g. src/SDK/OS/OSThread.o")
    ap.add_argument("--align", type=int, default=8)
    ap.add_argument("--owner", default=None, help="for the continuation's comment, e.g. \"OSThread.c's statics\"")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    asm_path = os.path.join(ROOT, args.asm)
    text = open(asm_path, newline="").read()
    if "\r\n" in text:
        sys.exit(f"{args.asm} has CRLF line endings; this script would rewrite them")
    lines = text.split("\n")

    def label_line(name):
        hits = [i for i, l in enumerate(lines) if l == f"{name}:"]
        if len(hits) != 1:
            sys.exit(f"{name}: expected one definition in {args.asm}, found {len(hits)}")
        i = hits[0]
        return i - 1 if i > 0 and lines[i - 1] == f".global {name}" else i

    start, end = label_line(args.start), label_line(args.end)
    if end <= start:
        sys.exit(f"{args.end} does not come after {args.start}")
    end_addr = re.search(r"([0-9A-Fa-f]{8})$", args.end)
    if end_addr:
        end_addr = end_addr.group(1)
    else:  # a named symbol: take its address from the last build's map
        m = re.search(rf"^\s+\S+ \S+ ([0-9a-f]{{8}}) .* {re.escape(args.end)}( \(entry of [^)]*\))? \t",
                      open(os.path.join(ROOT, "build/pbr_pal/pbr_pal.map")).read(), re.M)
        if not m:
            sys.exit(f"can't find {args.end}'s address in build/pbr_pal/pbr_pal.map; build first")
        end_addr = m.group(1)
    end_addr = end_addr.upper()
    # The .include (if any) and the last .section before START, which is the one the data is in
    includes = [l.strip() for l in lines[:start] if l.strip().startswith(".include")][:1]
    sections = [l.strip() for l in lines[:start] if l.strip().startswith(".section")]
    if not sections:
        sys.exit(f"{args.asm} has no .section before {args.start}")
    header = includes + sections[-1:]
    # bss_2 -> bss, data_2b -> data, data_804269E0 -> data; plain names (data, bss) stay
    base = re.sub(r"_(\d+[a-z]?|[0-9A-F]{8})$", "", os.path.splitext(os.path.basename(args.asm))[0])
    cont_name = f"{base}_{end_addr}"
    cont_rel = os.path.join(os.path.dirname(args.asm), cont_name + ".s")
    owner = args.owner or os.path.basename(args.tu).replace(".o", ".c")
    cont = [x for h in header for x in ("\t" + h, "")] + [
            f"# Continuation of {os.path.basename(args.asm)} after {owner} (0x{end_addr}).",
            f"\t.balign {args.align}", ""] + lines[end:]
    removed = lines[start:end]

    mk_path = os.path.join(ROOT, "obj_files.mk")
    mk = open(mk_path).read().split("\n")
    mono_obj = os.path.splitext(args.asm)[0] + ".o"
    mono = [i for i, l in enumerate(mk) if f"$(BUILD_DIR)/{mono_obj}" in l]
    tu = [i for i, l in enumerate(mk) if f"$(BUILD_DIR)/{args.tu}" in l]
    if len(mono) != 1 or len(tu) != 1:
        sys.exit(f"obj_files.mk: expected one {mono_obj} and one {args.tu}, found {len(mono)} and {len(tu)}")
    if mono[0] < tu[0]:
        sys.exit(f"{mono_obj} already links before {args.tu}; this TU's data isn't in its continuation")
    mono_line = mk[mono[0]]
    mk[mono[0]] = mono_line.replace(mono_obj, os.path.splitext(cont_rel)[0] + ".o")
    mk.insert(tu[0], mono_line)

    print(f"{args.asm}: moving {len(removed)} lines ({args.start} .. before {args.end}) to the TU")
    print(f"{cont_rel}: {len(lines) - end} lines, .balign {args.align}")
    print(f"obj_files.mk: {mono_obj} now before {args.tu}; {cont_name}.o at its old place")
    if args.dry_run:
        print("\n".join(removed))
        return
    open(asm_path, "w").write("\n".join(lines[:start]).rstrip("\n") + "\n")
    open(os.path.join(ROOT, cont_rel), "w").write("\n".join(cont))
    open(mk_path, "w").write("\n".join(mk))


if __name__ == "__main__":
    main()
