---
name: match-function
description: Get one pokerevo function that is already written in C to match the original asm under MWCC GC 3.0. Classify the difference, look up the levers for that symptom, score respellings in batches with tools/decomp/tu_diff.py, and stop by fixed rules. Use when tu_diff or the DOL checksum shows a mismatch, or when the user asks to match or fix a function.
---

# Match a function

The aim is the C the original programmers wrote. A match through unnatural C is a weak match: the levers
in [levers.md](levers.md) describe what real source looks like.

## 1. Triage: what kind of difference

```sh
python3 tools/decomp/tu_diff.py src/X.c                  # every function: match, or differing lines and sizes
python3 tools/decomp/tu_diff.py src/X.c -f F --diff      # aligned listing, ours left, original right, ! marks differences
```

The reference is the `asm/` file the source replaces, from git history once it has been deleted. Classify
by what `--diff` shows:

| Class | Looks like | Work on |
| --- | --- | --- |
| Structural | sizes differ by more than a few instructions; branches, loops or blocks differ | control flow first: loop form, `switch` against an `if` chain, early returns, merged tails, inline helpers |
| Extra or missing instruction | ±1 to 3 instructions: a `clrlwi`/`extsh` narrowing, a reload, an `mr`, a folded compare | types (`u8`/`u16`/`s32`, signedness), `volatile`, `const`, a value in a local or not |
| Scheduling | same size and instructions, in another order | statement order, where locals are initialized, `const` pointees |
| Registers | same instructions, registers swapped | declaration order, where a variable is first assigned |
| Stack | same code, other `r1` offsets or frame size | local types and sizes, struct sizes, block-scoped variables |
| `tu_diff` matches, DOL doesn't | relocations: a wrong callee or symbol, or data in the wrong place | the map (`build/pbr_pal/pbr_pal.map`) and `decompile-file`'s data section |

Fix them in that order. Registers and stack slots move with every structural change, so don't tune them
first.

## 2. Look up the levers

Read the section of [levers.md](levers.md) for the class, not the whole file. Entries marked **(bw2)**
come from another MWCC target and are untested here.

## 3. Try in scored batches

Write 3 to 10 respellings of the whole function in a scratchpad file, separated by lines of `=====`, and
score them:

```sh
python3 tools/decomp/tu_diff.py src/X.c -f F --variants $SCRATCH/F_variants.c
python3 tools/decomp/tu_diff.py src/X.c -f F --variants $SCRATCH/F_variants.c --keep N   # write variant N
```

It compiles each variant in a temporary copy, so the source is untouched until `--keep`. The score
counts differing aligned instructions (0 is a match); it measures progress between variants of the same
size. Change one idea per variant, so the score says which idea mattered. A block may start with a
`static inline` helper the variant needs.

## 4. Stop rules

Stop when any of these holds:

- Three batches in a row didn't improve the best score.
- Only a register swap is left, and a sweep of declaration orders didn't move it.
- About 20 minutes on one function, or 45 on one file's leftovers.
- The only matching spelling is unnatural (below).

This repo links the whole DOL from `src/`, so a TU can only replace its asm once every function matches.
When a function won't match, say so to the user with the closest natural C and the remaining difference
in the asm's terms, and leave the asm in place. Don't commit a nonmatching swap.

## 5. Record

If a lever worked that isn't in [levers.md](levers.md), or an entry there turned out wrong, use the
`record-lesson` skill.

## Natural C

Reject these:
- inline asm in a C function (raw-asm functions that were asm originally are fine);
- `volatile` without a hardware or concurrency reason;
- an unused or uninitialized variable, or a temporary whose address is taken for no reason;
- arithmetic on casts the types don't call for;
- the same expression split into pointless temporaries;
- code moved into a branch where it doesn't belong;
- a type that breaks the code's meaning, such as a `u8` that would clip a value.

A `goto` is fine where it is the plain way to say the flow, such as one shared exit. `static inline`
helpers are fine; the SDK uses many. When the only match is an odd shape, keep it, and say in the commit
message and in levers.md that it is probably not the original spelling.
