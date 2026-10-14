# Levers by symptom (MWCC GC 3.0, PowerPC, `-O4,p -ipa file`)

Every proven way to move this compiler's output, indexed by what `tools/decomp/tu_diff.py --diff` shows.
Each entry names the function that proved it. Entries marked **(bw2)** come from pokebw2's catalogue for
MWCC ARM (`dsi/1.1p1`). They are hypotheses here until they move PPC output; when one does, drop the mark
and add the function. Add new levers through the `record-lesson` skill.

## Inlining and calls

- The OS library (`src/SDK/OS/`) is built with `-inline auto` (set per directory in the Makefile;
  `tu_diff.py` applies it there too). Small functions of the file are inlined into every caller in the
  file, before or after their definition, and still emitted on their own (OSThread.c's
  `OSGetCurrentThread`, `__OSReschedule`, `__OSGetEffectivePriority`, `OSInitThreadQueue`).
- Under `-inline auto`, a function containing a statement that generates nothing is never inlined: a
  compiled-out `ASSERT(...)` (`((void)0)`, from `SDK/OS/OSAssert.h`) is enough. A small static function
  that stays a `bl` in an OS file had an assertion (OSThread.c's `UnsetRun`, OSTime.c's `GetDates`).
  Their text can't be recovered from the release build; say so in a comment.
- In an OS file, an inlined copy of a function of the same file shows that function was written in C,
  even when its standalone body looks hand-written (OSContext.c's `OSClearContext`, inlined twice into
  `OSDumpContext`); asm functions are never inlined.
- Game code, and GameSpy inside DWC, are built without automatic inlining (GameSpy's `darray.c` and
  `hashtable.c` grow under `-inline auto`). There, a missing `bl` means the original accessed the
  expression directly, or the helper was `static inline` (OSAlloc.c's list helpers, OSStateFlags.c's
  `CheckSum`). Getter calls that look inlined in the asm mean: write the access directly, or a
  `static inline`.
- `tu_diff.py --flags` and `--compiler` test other settings; extra flags go before the include options,
  where MWCC accepts `-ipa`. The Wii compilers in `tools/mwcc_compiler/Wii/` don't match this SDK.
- A function that is only `b OtherFunction` is a one-line wrapper that tail-calls (OSMutex.c's `OSInitCond`).
- Argument-register `mr` scheduling (`mr r4,r3` before or after a branch) usually falls out of the
  surrounding structure; change the enclosing control flow rather than fighting the `mr`.

## Registers swapped

- Callee-saved registers follow declaration order: earlier-declared locals get higher registers, r31
  downward. If two locals sit in swapped registers (r30↔r31), swap their declarations (OSSemaphore.c).
- Declaring a local and assigning it later as a statement (`BOOL enabled; s32 count;` then
  `enabled = OSDisableInterrupts();`) allocates differently from an initializer (OSSemaphore.c).
- **(bw2)** Of two variables competing for one register, the one used more gets it.
- **(bw2)** A variable gets one register per group of assignments that reach the same uses; a copy of a
  store in each branch splits it.
- **(bw2)** Variables of an inner block are allocated apart from the function's.
- `tools/pragma`'s `#pragma regswap` patches registers after compiling. It is a last resort and should be
  said in a comment; it cannot fix instruction-count differences.

## Instructions in another order (scheduling)

- Assignment placement matters: `u32 x = 0;` at the declaration emits the store early, `x = 0;` just
  before the use emits it there (OSReboot.c).
- **(bw2)** A load through a pointer moves above stores only when the pointee is `const`. A load scheduled
  early points to a `const` parameter.
- **(bw2)** Store order in initialization code is usually source order: try the stores in the asm's order.
- **(bw2)** A nested call made after the outer call's other arguments, where the original makes it first:
  its result was a local.

## An instruction too many or too few

- A reload of a field the compiler would CSE (two `lwz` from the same address with no call or store
  between) means the field is `volatile` in the struct (OSSemaphore's `count`). Make the field volatile
  rather than casting at the access, then check the TU's other functions still match.
- Absolute low-memory globals (0x8000xxxx) are macros: `#define __OSStringTable (*(void **)0x800030D0)`.
  Accesses to nearby addresses share one `lis` on their own. Repeating an absolute constant like
  `(void *)0x80000C00` at each use lets MWCC CSE the `@ha` half (one `lis r31, 0x8000`, then
  `addi r3, r31, 0xc00` per use); don't hoist it into a local unless the target keeps the full address in a
  register (OSReboot.c, OSNet.c).
- `clrlwi rN, rN, 31` on a flags parameter before a loop is `flags & 1` hoisted out of the loop, as in
  OSMessage.c's `!(flags & OS_MESSAGE_BLOCK)`.
- `cmplwi` against a size where the C compares a signed result: the comparison is with `sizeof(...)`,
  which is unsigned (OSStateFlags.c's `NANDRead(...) != sizeof(OSStateFlags)`).
- **(bw2)** A local holding a constant keeps its own register, while a literal is hoisted.

## Branches and block layout

- Blocks are laid out in source order. **(bw2)** `if (!f()) return FALSE; n++;` puts the return before
  the code that goes on.
- `cmp; beq END` comes from `if (a && b)` or nested `if`s. The optimizer folds an empty `else` and a
  single-case `switch` into this too.
- `cmp; bne NEXT; b END` comes from the early-return `||` form,
  `if (x <= A || x == B) { return; }`. `&&`, an empty `else` and `switch` all fold it away (OSNet.c,
  tested exhaustively).
- `cntlzw; srwi` where the target has `cmpwi; beq OK; li r3,0; b END; ... OK: li r3,1`: MWCC folded
  `if (x != 0) return FALSE; return TRUE;` into `return x == 0`. Every plain-`return` shape folds,
  including nesting, `else`, `goto` and other compiler versions. What kept the branches in
  OSStateFlags.c's `__OSWriteStateFlags`: a `BOOL ret` set in an `else if` chain, with the success arm
  doing `goto ok;` to a trailing `ok: return TRUE;`. That shape is probably not the original; look for a
  plainer one when this comes up again.
- **(bw2)** Identical statements in different branches are merged, so a jump into the middle of another
  block means the same code was written there.
- **(bw2)** Early `return FALSE`s go to one shared tail only when the C has one trailing return (an
  `if`/`else if` chain or a result variable).

## Loops

- A `while (cond)` loop compiles to `b TEST` into the bottom test (OSMessage.c, OSMutex.c's
  `__OSUnlockAllMutex`). **(bw2)** A loop that tests once, at its top, is `while (TRUE)` with a `break`
  or `return` (OSMutex.c's `OSLockMutex` is written this way and matches).
- A fixed-count loop over a small struct is unrolled into a chain of `lwz`/`add` (OSStateFlags.c's
  `CheckSum` summing words 1 to 7).

## Data and sections

- `addi r3, rBase, 0` (not `mr`) addressing a data symbol means the TU has its own data (string literals,
  statics) addressed from a pooled base register. `extern` references compile to `mr` at offset 0 and a
  separate `lis/addi` per symbol. If you see the pooled pattern, the TU's data must be carved out of the
  monolithic data files (`decompile-file`, "Data").
- A cast's position decides the width of an addition: `(int)(x / SECS_IN_DAY + BIAS)` adds in 64 bits
  (`addc`, low word only), `(int)(x / SECS_IN_DAY) + BIAS` adds in 32 (`addis/addi`) (OSTime.c's
  `OSTicksToCalendarTime`).
- Identical string literals in one TU are merged into one object (OSStateFlags.c's path, used three
  times).
- **(bw2)** String literals are laid out in the order they first appear in the source.
- `.sbss` variables are emitted in reverse declaration order (OSThread.c: `RunQueueBits`, `RunQueueHint`,
  `Reschedule` declared, emitted `Reschedule` first), globals before statics: OSInterrupt.c's static
  `InterruptHandlerTable`, declared first, comes after its three globals. Its `.bss` objects matched declared as
  `IdleContext`, `IdleThread`, `RunQueue`, `DefaultThread`, emitted `DefaultThread`, `RunQueue`,
  `IdleContext`, `IdleThread`; the rule behind that is not known yet. Check with
  `powerpc-eabi-objdump -t` on the object before splitting.
- Several statics addressed from one base register (`addi r30, r31, 0` then `r31 + 0x318`, `+ 0x418`) are
  in-TU data of one section; `extern` declarations would load each address separately (OSThread.c's
  `__OSThreadInit`).

## 64-bit arithmetic

- `s64` code needs no special spelling: compares become `xoris/subfc/subfe/subfe/neg.` chains, `/` calls
  `__div2i`, and functions with many live 64-bit values save registers with `bl _savegpr_N` instead of
  `stw`s, all from plain C (OSAlarm.c's `InsertAlarm`, `OSSetAlarm`, and the `SetTimer` inline).

- Two reads of hardware registers back to back, where the C reads the second only under a condition
  (`if (a == 0 || (a & __PIRegs[1]) == 0)`): the original read it into a variable first
  (OSInterrupt.c's `intmr`). A volatile read can't be moved into a branch or out of one.

## Raw asm

- Raw asm blobs (exception vectors and the like) are `asm void f(void)` with `nofralloc` as the first
  line. An end-marker "function" can be a lone `nop` (OSSync.c matched first try).
- A global label inside an asm function (`__RAS_OSDisableInterrupts_end`) is an `entry NAME` line in its
  body, with `void NAME(void);` declared before the function, or MWCC rejects it (OSInterrupt.c).
