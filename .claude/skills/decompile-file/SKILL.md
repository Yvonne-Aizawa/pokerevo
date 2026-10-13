---
name: decompile-file
description: Decompile one of this repo's asm files to matching C/C++ (byte-identical DOL). Use when decompiling a file, matching a function, fixing a non-matching function, or carving a TU's data out of the monolithic data asm files.
---

# Decompiling a file to matching C in pokerevo

Goal: replace one `asm/**/*.s` text file with a `src/**/*.c(pp)` file such that
the built DOL stays byte-identical (`sha1sum -c pbr_pal.sha1` passes).

## The loop

1. Read the target asm file. Each `asm/X.s` is one original translation unit;
   the functions must appear in the C file **in the same order**.
2. Write `src/<same path>.c`, add a header under `include/` (guard style:
   `POKEREVO_<NAME>_H`, `extern "C"` wrappers; SDK headers get included from
   `include/SDK/os.h` etc.).
3. Swap the object in `obj_files.mk`: change `$(BUILD_DIR)/asm/X.o` to
   `$(BUILD_DIR)/src/X.o` **in place** (link order = memory layout; never
   reorder). `git rm` the asm file.
4. `make && sha1sum -c pbr_pal.sha1`.
5. On mismatch, diff the compiled object against the asm listing:
   `/opt/devkitpro/devkitPPC/bin/powerpc-eabi-objdump -d build/pbr_pal/src/.../X.o`
   and compare instruction-by-instruction with the deleted `.s` (get it from
   git history). Externally-resolved operands show as `0(0)` / `lis rN,0` —
   that's fine, compare the opcodes around them.
6. Iterate on source shape (see "compiler behavior") until identical, then
   commit. One commit per matched file or small group, message
   "Decompile <path> (matching)".

### Fast iteration without a full make

Compile a single TU directly (seconds instead of a full link):

```sh
S=<scratch dir>
wine tools/mwcc_compiler/GC/3.0/mwcceppc.exe -Cpp_exceptions off -proc gekko \
  -fp hard -O4,p -nodefaults -msgstyle gcc -ipa file \
  -i . -I- -i include -i include/SDK -i include/MSL_C \
  -include include/types.h -W all -w nopragmas -lang c99 -c \
  -o $S/test.o $S/test.c
powerpc-eabi-objdump -d $S/test.o
```

Use `-lang c++` for .cpp. Write several source variants to the scratch dir and
compare their codegen in one pass — much faster than editing in place.

## MWCC 3.0 compiler behavior (observed, load-bearing)

- **No automatic inlining**, even with `-O4,p -ipa file`. If the target has no
  `bl`, the original accessed the variable/expression directly, or the helper
  was `static inline` in the original source (see OSAlloc.c). Getter/setter
  calls that look inlined in the asm mean: write the direct access.
- **Callee-saved register allocation follows declaration order** (roughly:
  earlier-declared locals get higher registers, r31 downward). If two locals
  sit in swapped registers (r30↔r31), swap their declaration order. Pattern
  that worked: declare `BOOL enabled; s32 count;` then assign
  `enabled = OSDisableInterrupts();` as a statement, not an initializer.
- **CSE of memory loads is aggressive.** A re-read like `sem->count--` after a
  loop that already loaded `sem->count` gets CSE'd into one load. If the
  target reloads (two `lwz` from the same address with no call between), the
  original field was `volatile` (OSSemaphore.count) — prefer making the struct
  field volatile over cast hacks, then confirm the other functions in the TU
  still match (volatile is fine for single-read/single-write patterns).
- **Branch shapes encode source shape:**
  - `cmp; beq END` ⇐ `if (a && b)` / nested ifs. The optimizer folds
    empty-else and single-case-switch forms into this too.
  - `cmp; bne NEXT; b END` ⇐ `if (x <= A || x == B) { return; }` — the
    early-return `||` form keeps the two-instruction shape. (`&&`, empty
    `else`, and `switch` all fold it away; tested exhaustively for OSNet.)
- **`addi r3, rBase, 0` (not `mr`)** addressing a data symbol means the
  original had **in-TU data** (string literals / static data) addressed via a
  literal-pool base register. `extern` references compile to `mr` for offset
  0 and separate `lis/addi` per symbol — if you see the pooled pattern, the
  TU's data must be carved out of the monolithic data files (next section).
- Absolute low-memory globals (0x8000xxxx) are written as macros:
  `#define __OSStringTable (*(void **)0x800030D0)`. Several accesses to
  nearby addresses share one `lis` automatically. Repeating an absolute
  constant like `(void *)0x80000C00` at each use lets MWCC CSE the `@ha` half
  (one `lis r31, 0x8000` + `addi r3, r31, 0xc00` per use) — don't hoist it
  into a local unless the target shows a full-address register.
- Assignment placement matters at `-O4,p`: `u32 x = 0;` at declaration emits
  the store early; `x = 0;` just before use emits it there (OSReboot).
- Raw asm blobs (exception vectors etc.) are `asm void f(void)` functions with
  `nofralloc` as the first line; an end-marker "function" can be a lone `nop`.
  Compare with `asm/SDK/OS/` history: OSSync.c matched first try.
- Argument-register `mr` scheduling (e.g. `mr r4,r3` before vs. after a
  branch) usually falls out of getting the surrounding structure right; don't
  fight it directly, change the enclosing control flow.

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

Never do a big upfront split: TU boundaries inside the data files are only
discoverable while decompiling the code that uses them.

## Repo facts

- Verification is whole-DOL only: build with `make`, check
  `sha1sum -c pbr_pal.sha1`. There is no per-object matching tool; the map
  file (`build/pbr_pal/pbr_pal.map`) plus `powerpc-eabi-objdump` fill that
  role.
- Compiler: CodeWarrior GC 3.0 via wine; flags in `Makefile` (`CFLAGS`,
  `-lang c99` / `-lang c++`). devkitPPC binutils at
  `/opt/devkitpro/devkitPPC/bin/`.
- `tools/pragma` provides `#pragma regswap` / `#pragma iswap` (post-compile
  instruction patching) as a last resort for register/scheduling mismatches —
  it cannot fix instruction-count differences.
- `extab.s`/`extabindex.s` stay as incbin until C++ exception tables are
  understood; don't touch them.
- Data typed by `tools/data_resolver` (floats/pointers/strings) is **guessed
  from byte patterns** — byte-identical but not ground truth. `.8byte 0x...`
  hex is type-neutral; retype data properly when decompiling its TU.
- Known-good reference points: `src/SDK/OS/*.c` (C, all matching),
  `src/*.cpp` + `src/GScamera.cpp` (C++), `asm/GSvolume_*.s` and
  `data_2b.s` (earlier data splits).
- Good next targets after SDK/OS: remaining small `asm/SDK/OS/*.s`
  (OSStateFlags, OSMessage, OSUtf, OSMutex), then MTX/VI/DVD; game code
  continues at `asm/code_801E0A54.s` (contiguous with the decompiled
  801DAxxx–801E07E8 cluster).
