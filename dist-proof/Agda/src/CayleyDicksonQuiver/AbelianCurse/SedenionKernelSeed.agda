-- CayleyDicksonQuiver.AbelianCurse.SedenionKernelSeed
--
-- The elementary, `refl`-checkable part of the sedenion experiment
-- recorded as H8 in `note/CarabinerHypotheses.lagda.md`: for the seed
-- `x = e1 + e10` in `CD 4`, an explicit integer basis of `ker L_x`
-- (left multiplication `y ↦ x * y`) consists of the four vectors below.
-- That the kernel has dimension exactly 4 over ℚ, and the Smith normal
-- form `0^4 1^8 2^4` of the 16x16 matrix `L_x`, are NOT checked here: the
-- project has no matrix rank or Smith form machinery for 16x16 matrices
-- (the same gap as for `zero-divisor-has-gen-inv`). Only the four
-- product identities are, one `refl` each.
--
-- Basis vectors are written in the same left/right binary-tree style as
-- `Hypotheses.basis-e3` and friends (most significant bit outermost):
-- `e4 = 0100`, `e13 = 1101`.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.SedenionKernelSeed where

open import CayleyDicksonQuiver.Hypotheses
  using (CD; add; neg; mul; zeroCD; inl; inr; e-base;
         basis-e1; basis-e5; basis-e6; basis-e7; basis-e10;
         basis-e12; basis-e14; basis-e15)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)

basis-e4 basis-e13 : CD 4
basis-e4  = inl (inr (inl (inl e-base)))
basis-e13 = inr (inr (inl (inr e-base)))

-- The seed. It is a zero divisor: `i = 1` lies in `1..7`, `j = 10` in `9..15` and
-- `10 != 1 + 8`: the closed-form rule of `CarabinerHypotheses` H5.

seed-x : CD 4
seed-x = add 4 basis-e1 basis-e10

-- Four integer kernel vectors of `L_{seed-x}`.

y1 y2 y3 y4 : CD 4
y1 = add 4 basis-e7 basis-e12
y2 = add 4 (neg 4 basis-e6) basis-e13
y3 = add 4 basis-e5 basis-e14
y4 = add 4 (neg 4 basis-e4) basis-e15

seed-x*y1 : mul 4 seed-x y1 ≡ zeroCD 4
seed-x*y1 = refl

seed-x*y2 : mul 4 seed-x y2 ≡ zeroCD 4
seed-x*y2 = refl

seed-x*y3 : mul 4 seed-x y3 ≡ zeroCD 4
seed-x*y3 = refl

seed-x*y4 : mul 4 seed-x y4 ≡ zeroCD 4
seed-x*y4 = refl
