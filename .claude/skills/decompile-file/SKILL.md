---
name: decompile-file
description: Decompile one of this repo's asm files to matching C/C++ (byte-identical DOL). Use when decompiling a file, matching a function, fixing a non-matching function, or carving a TU's data out of the monolithic data asm files.
---

# Decompiling a file to matching C in pokerevo

Goal: replace one `asm/**/*.s` text file with a `src/**/*.c(pp)` file such that
the built DOL stays byte-identical (`sha1sum -c pbr_pal.sha1` passes).

## The loop

0. Optionally start the `asm-scout` agent on the asm file first: it reports the functions, the data and
   how to split it, callers, header gaps and risks without filling this context. For a function that
   stays stuck, the `function-matcher` agent can grind it in its own context (one per source file).
1. Read the target asm file. Each `asm/X.s` is one original translation unit;
   the functions must appear in the C file **in the same order**.
2. Write `src/<same path>.c`, add a header under `include/` (guard style:
   `POKEREVO_<NAME>_H`, `extern "C"` wrappers; SDK headers get included from
   `include/SDK/os.h` etc.).
3. Swap the object in `obj_files.mk`: change `$(BUILD_DIR)/asm/X.o` to
   `$(BUILD_DIR)/src/X.o` **in place** (link order = memory layout; never
   reorder). `git rm` the asm file.
4. Check it per function before linking:
   `python3 tools/decomp/tu_diff.py src/X.c` compiles the file and compares
   each function with the asm it replaces (from git history once deleted),
   masking relocated operands. For a function that doesn't match, use the
   `match-function` skill, whose [levers](../match-function/levers.md) hold
   everything known about how MWCC 3.0 compiles.
5. `make && sha1sum -c pbr_pal.sha1` is the final check: it also catches
   wrong call targets, symbols and data placement, which `tu_diff` masks.
6. For files of more than about 10 functions, or changes to shared headers,
   start the `decomp-reviewer` agent on the diff before committing, and fix
   what it finds that is real.
7. Commit: one commit per matched file or small group, message
   "Decompile <path> (matching)", staging files by name. Anything learned
   goes in through `record-lesson`, in the same commit.

## Data: the monolithic files and when to split

All `.data/.sdata/.sbss/...` of hundreds of TUs live in big asm files
(`data.s`, `data_2.s`, `sdata_2.s`, `sbss_2.s`, ...). Section layout = object
order in `obj_files.mk` per section (see `build/pbr_pal/pbr_pal.map`), and the
monolithic objects sit at fixed positions, so **a decompiled TU must not emit
data unless its bytes' original location is exactly where the linker will now
put them**.

Three cases:

1. **Code-only TU** (most SDK files): nothing to do. Easiest wins.
2. **TU references named/shared data**: keep the data in the asm file, rename
   its `lbl_80XXXXXX` to a proper name (sed across `asm/` — check who else
   references it first with grep), declare `extern` in C. Works for
   variables; small-data (`-_SDA_BASE_`-relative in asm) externs compile to
   the right r13-relative access automatically.
3. **TU has its own literals/tables** (strings especially): do a **per-TU
   data split** (template: commit "Decompile SDK/OS/OSNet.c with its own
   string literals"):
   - Find the TU's exact data extent (start label, byte length — count string
     lengths + MWCC's 4-byte literal padding; last literal is NOT padded in
     the object, the linker's alignment of the next object re-creates the pad
     byte(s)).
   - Delete those lines from the monolithic `.s`; put the remainder in a new
     continuation file (e.g. `data_2b.s`) with the same section header plus
     `.balign 4` so the linker aligns it back to the original address.
   - In `obj_files.mk`: insert the monolithic prefix object **before** the
     decompiled TU's object (a data-only object can sit anywhere in the list
     without affecting .text), and put the continuation object at the old
     position.
   - Write the data as ordinary literals/statics in the C file; verify in the
     map that the TU's `.data` lands at the original address with the
     original size.
   - Contributions are packed with ~8-byte alignment; check both split edges
     are 8-aligned before starting, and check the map
     (`grep "1 .data" build/pbr_pal/pbr_pal.map | grep -vE " 000000 "`) after.

Two simpler shapes of case 3:

- **The TU's data is the end of a monolithic file**: delete it there and
  move the monolithic object in `obj_files.mk` to just before the TU. No
  continuation file is needed (OSStateFlags.c's path string was the last
  40 bytes of `data_2.s`).
- **The TU has `.bss`/`.sbss`/`.sdata` statics**: these live in `bss_2.s`,
  `sbss_2.s` and `sdata_2.s`, linked near the end of `obj_files.mk`, and
  split the same way as `.data` whenever no object between the TU and the
  monolith contributes to that section (check the map). OSThread.c split
  all three. The quick route, keeping the object in asm with its label
  renamed and an `extern` in the C, matches only when the code addresses
  each object separately (OSStateFlags.c's `StateFlags`, OSAlarm.c's
  `AlarmQueue`).

`tools/decomp/split_data.py` does a split: it cuts the labels from START
up to END out of the monolithic file, writes the continuation named by
END's address with the `.balign` you give, and moves the objects in
`obj_files.mk`. Check the object's layout first (`powerpc-eabi-objdump -t`)
and the map afterwards. The continuation's alignment is the alignment of
the object at END: 8 usually, 32 where that object is 32-aligned (the pad
before it in the original shows this: OSThread's `.bss` is 0x9F8 bytes,
followed by 0x10 of padding before 0x805151E0).
- **A `static` function referenced only from the TU's data** (a callback
  in a table or record) is dropped by the compiler while that data is still
  in asm, because nothing in the C refers to it. Define the data in C (a
  split) rather than making the function global (OSAlarm.c's `OnReset`,
  referenced only from `ResetFunctionInfo`).

Never do a big upfront split: TU boundaries inside the data files are only
discoverable while decompiling the code that uses them.

## Repo facts

- Per-function checking: `tools/decomp/tu_diff.py` (see `match-function`).
  Final verification is the whole DOL: `rm -f build/pbr_pal/pbr_pal.dol &&
  make -j8 && sha1sum -c pbr_pal.sha1`. A failed `make` leaves the old DOL in
  place, and `sha1sum` still passes on it (a link error once went unseen this
  way), so delete the DOL first and chain the commands with `&&`. The map (`build/pbr_pal/pbr_pal.map`) shows
  where each object's sections landed.
- Compiler: CodeWarrior GC 3.0 via wine; flags in `Makefile` (`CFLAGS`,
  `-lang c99` / `-lang c++`). The RVL SDK directories in the
  Makefile's `RVL_SDK_DIRS` add `-inline auto` (see match-function's levers): add a new
  `src/SDK/X/` directory there when its first C file goes in. DWC and game code don't. devkitPPC binutils at
  `/opt/devkitpro/devkitPPC/bin/`.
- `tools/pragma` provides `#pragma regswap` / `#pragma iswap` (post-compile
  instruction patching). Don't use them: the user wants only true matches.
  A file that only matches through a patch is parked instead. A per-file
  compiler flag in the Makefile is fine when it's what makes a file match.
- The linker dead-strips unreferenced functions in C objects (not in asm
  objects, which have no per-function sections), as the original's did. So
  SDK functions missing from an asm file (OSMessage's `OSJamMessage`,
  OSMutex's `OSWaitCond`, OSCache's `L2Enable`/`L2Disable`/
  `L2GlobalInvalidate`) were in the original source and stripped. Write
  them when they matter, as OSCache.c does to put its L2 string first in
  the pool; `tu_diff.py` lists them as "not in the original".
- `make` doesn't notice a removed or renamed source: a stale `.o` left in
  `build/pbr_pal/` still satisfies the link, so the DOL can pass while
  linking old objects. After renaming or deleting an asm file, delete its
  `.o` from `build/` (or `make clean`), and check that the DOL's timestamp
  is fresh before trusting `sha1sum`.
- `make` doesn't track headers for C files (no dependency files), so
  after editing a shared header, `rm -rf build/pbr_pal/src` and rebuild
  before trusting `sha1sum`; `tu_diff.py` always compiles fresh.
- Every directory under `tools/` needs a Makefile: the top-level Makefile
  runs `make` in each one, and a missing one prints `Error 2` in the build
  log while the build carries on. Script-only tools get the no-op Makefile
  of `tools/decomp/`.
- Unused parameters that the SDK's signature requires: `#pragma unused(x)`
  as the first line of the body silences MWCC's warning without changing
  the code (OSAlarm.c's `DecrementerExceptionCallback`).
- `extab.s`/`extabindex.s` stay as incbin until C++ exception tables are
  understood; don't touch them.
- Data typed by `tools/data_resolver` (floats/pointers/strings) is **guessed
  from byte patterns** — byte-identical but not ground truth. `.8byte 0x...`
  hex is type-neutral; retype data properly when decompiling its TU.
- Known-good reference points: `src/SDK/OS/*.c` (C, all matching),
  `src/*.cpp` + `src/GScamera.cpp` (C++), `asm/GSvolume_*.s` and
  `data_2b.s` (earlier data splits).
- Parked: `src/SDK/OS/OSRtc.c` is written but not linked (UnlockSram has an
  r3/r4 swap; see its header comment).
- Parked: `src/SDK/OS/OS.c` is written but not linked (19 of 20 functions
  match; see its header comment for OSInit and the data splits still to do).
- Good next targets: the code-only files left in `asm/SDK/OS/` (OSAlarm,
  OSTime, OSThread, ...), then MTX/VI/DVD. Files with their own strings or
  tables (OSUtf, OSFatal, OSFont, OSError, OSExec, OSRtc) need a data split.
  Game code continues at `asm/code_801E0A54.s` (contiguous with the
  decompiled 801DAxxx–801E07E8 cluster).
