-- CayleyDicksonQuiver.AbelianCurse.SOReflectionGroup
--
-- The order-8 group SO(V) from note/AbelianCurseHypotheses.lagda.md
-- (AC3), given directly by its multiplication table rather than by
-- 3x3 rational matrices (which this codebase has no representation
-- of yet). Elements are indexed 0..7 in the order fixed by that note:
--
--   0 = id                1 = R1 R12 (sn 2)
--   2 = R1 R2  (sn 1)     3 = R1 R3  (sn 7)
--   4 = R2 R12 (sn 2)     5 = R2 R3  (sn 7)
--   6 = R3 R12 (sn 14)    7 = R1 R2 R3 R12 (sn 14)
--
-- The table was computed from the reflection matrices outside Agda
-- and is asserted here, not derived from any construction of O(V).
-- See `note/AbelianCurseHypotheses.lagda.md` (AC3) for where the
-- table comes from and why `[SO(V),SO(V)]` matters there; this file
-- confirms that computation by Agda's own reduction rather than by
-- the numeric, outside-Agda route the note otherwise relies on.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.SOReflectionGroup where

open import CayleyDicksonQuiver.AbelianCurse.FiniteGroupTable
open import Data.Bool using (Bool; false; true)
open import Data.List using (List; []; _∷_)
open import Data.Nat using (ℕ; zero; suc)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)

nthℕ : List ℕ → ℕ → ℕ
nthℕ []       _       = 0
nthℕ (x ∷ xs) zero    = x
nthℕ (x ∷ xs) (suc k) = nthℕ xs k

mulSO-row : ℕ → List ℕ
mulSO-row 0 = 0 ∷ 1 ∷ 2 ∷ 3 ∷ 4 ∷ 5 ∷ 6 ∷ 7 ∷ []
mulSO-row 1 = 1 ∷ 2 ∷ 4 ∷ 7 ∷ 0 ∷ 6 ∷ 3 ∷ 5 ∷ []
mulSO-row 2 = 2 ∷ 4 ∷ 0 ∷ 5 ∷ 1 ∷ 3 ∷ 7 ∷ 6 ∷ []
mulSO-row 3 = 3 ∷ 6 ∷ 5 ∷ 0 ∷ 7 ∷ 2 ∷ 1 ∷ 4 ∷ []
mulSO-row 4 = 4 ∷ 0 ∷ 1 ∷ 6 ∷ 2 ∷ 7 ∷ 5 ∷ 3 ∷ []
mulSO-row 5 = 5 ∷ 7 ∷ 3 ∷ 2 ∷ 6 ∷ 0 ∷ 4 ∷ 1 ∷ []
mulSO-row 6 = 6 ∷ 5 ∷ 7 ∷ 4 ∷ 3 ∷ 1 ∷ 0 ∷ 2 ∷ []
mulSO-row 7 = 7 ∷ 3 ∷ 6 ∷ 1 ∷ 5 ∷ 4 ∷ 2 ∷ 0 ∷ []
mulSO-row _ = []

invSOList : List ℕ
invSOList = 0 ∷ 4 ∷ 2 ∷ 3 ∷ 1 ∷ 5 ∷ 6 ∷ 7 ∷ []

mulSO : ℕ → ℕ → ℕ
mulSO i j = nthℕ (mulSO-row i) j

invSO : ℕ → ℕ
invSO i = nthℕ invSOList i

SO : CayleyGroup
SO = record { mul = mulSO ; inv = invSO }

------------------------------------------------------------------------
-- The derived series, computed by `refl`
------------------------------------------------------------------------

whole : Subset
whole = full-of 8

derived-1 : Subset
derived-1 = derived-next 8 SO 8 whole

derived-2 : Subset
derived-2 = derived-next 8 SO 8 derived-1

derived-3 : Subset
derived-3 = derived-next 8 SO 8 derived-2

-- [SO(V),SO(V)] is exactly {0,2} = {id, R1 R2}, matching the sn = 1
-- fibre found in the note by an independent (numeric, not Agda) route.

derived-1-is-id-R1R2 :
  derived-1 ≡ true ∷ false ∷ true ∷ false ∷ false ∷ false ∷ false ∷ false ∷ []
derived-1-is-id-R1R2 = refl

-- [[SO(V),SO(V)],[SO(V),SO(V)]] is trivial: the derived series reaches
-- {id} after exactly two steps and stays there.

derived-2-is-trivial :
  derived-2 ≡ true ∷ false ∷ false ∷ false ∷ false ∷ false ∷ false ∷ false ∷ []
derived-2-is-trivial = refl

derived-series-stabilizes : derived-3 ≡ derived-2
derived-series-stabilizes = refl

derived-length-is-2 : size derived-1 ≡ 2
derived-length-is-2 = refl

------------------------------------------------------------------------
-- The lower central series, computed by `refl`
------------------------------------------------------------------------

lcs-1 : Subset
lcs-1 = lcs-next 8 SO 8 whole

lcs-2 : Subset
lcs-2 = lcs-next 8 SO 8 lcs-1

lcs-3 : Subset
lcs-3 = lcs-next 8 SO 8 lcs-2

lcs-1-is-id-R1R2 :
  lcs-1 ≡ true ∷ false ∷ true ∷ false ∷ false ∷ false ∷ false ∷ false ∷ []
lcs-1-is-id-R1R2 = refl

lcs-2-is-trivial :
  lcs-2 ≡ true ∷ false ∷ false ∷ false ∷ false ∷ false ∷ false ∷ false ∷ []
lcs-2-is-trivial = refl

lcs-series-stabilizes : lcs-3 ≡ lcs-2
lcs-series-stabilizes = refl

-- The derived series and the lower central series agree at every
-- step computed here; this is a fact about this particular group, not
-- a general one (they differ for larger nonabelian groups in general).

derived-and-lcs-agree-1 : derived-1 ≡ lcs-1
derived-and-lcs-agree-1 = refl

derived-and-lcs-agree-2 : derived-2 ≡ lcs-2
derived-and-lcs-agree-2 = refl
