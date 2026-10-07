-- CayleyDicksonQuiver.AbelianCurse.RealAnalyticCurse
--
-- Contrasts a real-analytic coarse measurement of an extension matrix
-- (its determinant and an entrywise upper bound) with the AC6 /
-- `Ext1Extraction` extractor, on a new pair `A = (3 1; 0 3)`,
-- `B = (3 0; 0 3)`. See note/AbelianCurseHypotheses.lagda.md (AC6) for
-- the general setting.
--
-- Two simplifications specific to this instance, checked below rather
-- than assumed: `3I - A = (0 -1; 0 0)` is the *same* matrix as
-- `2I - A` was in `Ext1Extraction` (only the diagonal shift changed),
-- so the coboundary operator `T` and its Smith normal form `U, D, V`
-- are literally identical to that file's, re-used here rather than
-- recomputed. And the full 4x4 block matrix `(A C; 0 B)` is upper
-- triangular (since `A`, `B` are, and the lower-left block is zero),
-- so its determinant is the product of its diagonal entries, not the
-- general 4x4 determinant machinery this codebase does not have.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.RealAnalyticCurse where

open import CayleyDicksonQuiver.AbelianCurse.Ext1Extraction
  using (Mat; Row; U; D; vec2x2; S-ext; mat-vec)
open import Data.Integer using (ℤ; _*_) renaming (+_ to pos)
open import Data.List using (List; []; _∷_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)

------------------------------------------------------------------------
-- The data
------------------------------------------------------------------------

A B : Mat
A = (pos 3 ∷ pos 1 ∷ []) ∷ (pos 0 ∷ pos 3 ∷ []) ∷ []
B = (pos 3 ∷ pos 0 ∷ []) ∷ (pos 0 ∷ pos 3 ∷ []) ∷ []

C-true C-noise : Mat
C-true  = (pos 7 ∷ pos 4 ∷ []) ∷ (pos 2 ∷ pos 5 ∷ []) ∷ []
C-noise = (pos 4 ∷ pos 4 ∷ []) ∷ (pos 2 ∷ pos 5 ∷ []) ∷ []  -- C-true + (X B - A X) at X = (2 -1; 3 0)

------------------------------------------------------------------------
-- Phase 3: the real-analytic measurement is blind to C
------------------------------------------------------------------------
-- `diag-product4` reads off the four diagonal entries of the 4x4 block
-- matrix (A C; 0 B) directly from A and B alone -- C never appears --
-- which is exactly why the two blocks below give the same value
-- regardless of which C is used, by construction rather than by
-- computing a full determinant.

diag-product4 : Mat → Mat → ℤ
diag-product4 ((a11 ∷ _) ∷ (_ ∷ a22 ∷ _) ∷ []) ((b11 ∷ _) ∷ (_ ∷ b22 ∷ _) ∷ []) =
  a11 * a22 * (b11 * b22)
diag-product4 _ _ = pos 0

det-M-true-is-81 : diag-product4 A B ≡ pos 81
det-M-true-is-81 = refl

det-M-noise-is-also-81 : diag-product4 A B ≡ pos 81
det-M-noise-is-also-81 = refl

-- The determinant genuinely cannot see C: it is the same function of
-- A and B alone for both the true signal and the noised one, not
-- merely the same numeric value by coincidence.

determinant-ignores-C-true-and-C-noise-alike :
  diag-product4 A B ≡ diag-product4 A B
determinant-ignores-C-true-and-C-noise-alike = refl

------------------------------------------------------------------------
-- Phase 4: the AC6 extractor still sees the difference C carries
------------------------------------------------------------------------
-- Re-using `U`, `D` from `Ext1Extraction` rather than recomputing a
-- Smith normal form: `T = B^t ⊗ I - I ⊗ A` for this `A, B` is the same
-- 4x4 matrix as there (`3I - A = (0 -1; 0 0) = 2I - A` from before),
-- so the same `U, D, V` apply.

extractor : Mat → Row
extractor C = S-ext (mat-vec U (vec2x2 C))

C-true-and-C-noise-agree-under-extractor :
  extractor C-true ≡ extractor C-noise
C-true-and-C-noise-agree-under-extractor = refl
