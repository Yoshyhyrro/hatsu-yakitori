/-!
# MachineConstants Notes

This file collects research notes on the design intent, mathematical background, tropical semiring interpretation, proof strategies, etc., separated from the implementation in `HatsuYakitori.MachineConstants`.

## 1. Tropical Semiring Perspective
- The range of values, differences, and minimum width of `octadHeight` correspond to the distance-like structure in min-plus (tropical) geometry.
- `arrowWeight src dst = |octadHeight src - octadHeight dst|` corresponds to the "edge cost" in tropical distance.
- Folding path weights with sum and overall distance with min results in the operations of the tropical semiring (min, +).

## 2. Meaning of minimal_arrow_weight_bound
- Since the values of `octadHeight` are `w.val / 3`, the difference between different classes is always at least 1/3.
- Therefore, it is sufficiently larger than machine epsilon.
- This provides a "resolution lower bound".

## 3. Iwasawa-theoretic Approximation
- `galoisHeight (m * n) = galoisHeight m + galoisHeight n` is trivial from the additivity of log.
- The error term is zero, so the bound holds trivially.

## 4. Implementation Policy
- Leave only constants, small lemmas, and proofs in `MachineConstants.lean`, and consolidate mathematical background and design intent in this note.
- Add research memos and future extension plans here.

-/
