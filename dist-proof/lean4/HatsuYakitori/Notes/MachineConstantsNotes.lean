import Mathlib.Data.Real.Basic

/-!
# MachineConstants Notes

This file is intentionally **notes-only** (no executable Lean definitions).

It collects design intent, background interpretation, and proof strategy around
`HatsuYakitori.MachineConstants` without risking build failures in the main
library.

## Tropical Semiring Perspective

- The range and differences of `octadHeight` can be read as a min-plus
  (tropical) distance structure.
- `arrowWeight src dst = |octadHeight src - octadHeight dst|` is an edge cost.
- Path folding by `+` and global selection by `min` matches the tropical
  semiring operations.

## minimal_arrow_weight_bound

- If `octadHeight` values land in a lattice like `w.val / 3`, then distinct
  classes differ by at least $1/3$, which is safely above machine epsilon.

## Iwasawa-theoretic Approximation

- When `galoisHeight` is defined via a logarithm, additivity typically makes
  multiplicative-to-additive bounds straightforward.

## Arrow folding / renormalization (Option 2)

The experimental “fold arrows themselves in a loop” scaffold (rooted trees,
iteration, monotone measures) was moved to:

- `HatsuYakitori.Notes.ArrowRenormalization`

so this file stays as prose and does not regress `lake build` due to formatting
issues (notably: Lean forbids tab characters).

-/
