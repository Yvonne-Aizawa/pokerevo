---
name: record-lesson
description: Record what pokerevo work taught, in the place the next session will look. A proven MWCC behavior goes in the match-function levers, a workflow or build lesson in the skill that covers that step, and session status in memory. Use when a new lever made a function match, when a levers entry turned out wrong, when the same mistake or build failure happened twice, or when the user corrects how work is done.
---

# Record a lesson

Lessons that stay in a chat are lost to the next session. Put each one where it will be looked up.

## Where it goes

| Lesson | Where | Form |
| --- | --- | --- |
| How MWCC compiles something, proven on a real function | `.claude/skills/match-function/levers.md`, under its symptom | The rule, then the function that shows it |
| A data-split, linking or build failure and its fix | `.claude/skills/decompile-file/SKILL.md`, in its section | Symptom, then cause and fix |
| A step that was missed or a convention that was broken | The skill that covers that step | An imperative line with the reason |
| A useful scratchpad script | `tools/decomp/`, with a docstring and usage like `tu_diff.py` | Commit it; the scratchpad is wiped between sessions |
| The workstream's status, plan or the user's choices | Memory | Absolute dates |

## Prove it first

A levers entry must hold beyond the one function where you saw it:
- Check it on a second function, or on a minimal function compiled with `tu_diff.py --ref`.
- If it held only once, write it as what that function needed, not as a rule.
- A lever from pokebw2 (marked **(bw2)**) or another compiler is a hypothesis until it moves output here.
  When it does, drop the mark and add the function.

When an entry turns out wrong or incomplete, correct it. Don't add a contradicting one.

## Style

Plain present tense, as things the compiler does. Code in backticks. One entry per behavior, a few lines,
naming the file or function that shows it, as in

> - A reload of a field the compiler would CSE means the field is `volatile` in the struct (OSSemaphore's
>   `count`).

## Commit

Commit lessons with the work that found them, in the same commit, or on their own as
`Document <what>`. Skill changes under `.claude/` go with the work that prompted them.
