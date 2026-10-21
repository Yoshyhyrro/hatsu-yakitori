-- CayleyDicksonQuiver.AbelianCurse.BlindSpots
--
-- Non-surjectivity of a noise/indeterminacy operator `T_noise` is
-- necessary, but not sufficient, for a specific signal `Δ` to be
-- detectable against it. `T_noise` not surjective gives a nonzero
-- cokernel, hence some nonzero `S` with `S ∘ T_noise = 0` (rigidity
-- holds) -- but `S(Δ) = 0` can still happen, for a `Δ` that happens to
-- land inside `Im(T_noise)` despite `T_noise` not being surjective
-- overall. Detection of `Δ` means `Δ ∉ Im(T_noise)`, equivalently
-- `S(Δ) ≠ 0` for *some* element of a full basis of the cokernel, not
-- `S(Δ) ≠ 0` for one arbitrarily chosen `S`.
--
-- Reuses the matrix machinery from
-- `CayleyDicksonQuiver.AbelianCurse.Ext1Extraction`; see
-- `note/AbelianCurseHypotheses.lagda.md` (AC6) for why this question
-- came up and what it is and is not a resolution of.
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.BlindSpots where

open import CayleyDicksonQuiver.AbelianCurse.Ext1Extraction
  using (Row; Mat; dot; mat-vec; mat-mul)
open import Data.Integer using (ℤ) renaming (+_ to pos; -[1+_] to neg[1+_])
open import Data.List using (List; []; _∷_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Relation.Nullary using (¬_)

------------------------------------------------------------------------
-- Rigidity holds: Ind-Rigid is not surjective, and S is a nonzero
-- element of its cokernel (its left kernel)
------------------------------------------------------------------------

Ind-Rigid : Mat
Ind-Rigid = (pos 1 ∷ pos 2 ∷ neg[1+ 0 ] ∷ []) ∷
            (pos 0 ∷ pos 1 ∷ pos 1      ∷ []) ∷
            (pos 1 ∷ pos 3 ∷ pos 0      ∷ []) ∷ []

S : Row
S = neg[1+ 0 ] ∷ neg[1+ 0 ] ∷ pos 1 ∷ []

S-in-left-kernel : mat-mul 3 (S ∷ []) Ind-Rigid ≡ (pos 0 ∷ pos 0 ∷ pos 0 ∷ []) ∷ []
S-in-left-kernel = refl

------------------------------------------------------------------------
-- A detectable signal: Δ-true is not absorbed, S(Δ-true) ≠ 0
------------------------------------------------------------------------

Δ-true : Row
Δ-true = pos 10 ∷ neg[1+ 4 ] ∷ pos 3 ∷ []

Δ-true-is-detected : ¬ (dot S Δ-true ≡ pos 0)
Δ-true-is-detected ()

------------------------------------------------------------------------
-- A blind spot: Δ-blind lies in Im(Ind-Rigid) despite rigidity holding
------------------------------------------------------------------------

Δ-blind : Row
Δ-blind = pos 1 ∷ pos 1 ∷ pos 2 ∷ []

-- the noise vector witnessing Δ-blind = Ind-Rigid * v, i.e. that
-- Δ-blind really is exactly simulable as noise even though Ind-Rigid
-- is not surjective

v-blind : Row
v-blind = neg[1+ 0 ] ∷ pos 1 ∷ pos 0 ∷ []

Δ-blind-is-exactly-noise : mat-vec Ind-Rigid v-blind ≡ Δ-blind
Δ-blind-is-exactly-noise = refl

Δ-blind-is-invisible-to-S : dot S Δ-blind ≡ pos 0
Δ-blind-is-invisible-to-S = refl

------------------------------------------------------------------------
-- A 2-dimensional cokernel: checking one S is not enough
------------------------------------------------------------------------
-- Ind-Rank1 has rank 1 (every row a multiple of (1,2,-1)), so its
-- cokernel is 2-dimensional, spanned by S0 and S1 below.

Ind-Rank1 : Mat
Ind-Rank1 = (pos 1      ∷ pos 2      ∷ neg[1+ 0 ] ∷ []) ∷
            (pos 2      ∷ pos 4      ∷ neg[1+ 1 ] ∷ []) ∷
            (neg[1+ 0 ] ∷ neg[1+ 1 ] ∷ pos 1      ∷ []) ∷ []

S0 S1 : Row
S0 = neg[1+ 1 ] ∷ pos 1 ∷ pos 0 ∷ []
S1 = pos 1      ∷ pos 0 ∷ pos 1 ∷ []

S0-S1-in-left-kernel :
  mat-mul 3 (S0 ∷ S1 ∷ []) Ind-Rank1 ≡
    (pos 0 ∷ pos 0 ∷ pos 0 ∷ []) ∷ (pos 0 ∷ pos 0 ∷ pos 0 ∷ []) ∷ []
S0-S1-in-left-kernel = refl

-- Δ-mixed is invisible to S0 alone but visible to S1: checking only
-- S0 would have wrongly concluded that Δ-mixed is noise.

Δ-mixed : Row
Δ-mixed = pos 1 ∷ pos 2 ∷ pos 0 ∷ []

Δ-mixed-invisible-to-S0 : dot S0 Δ-mixed ≡ pos 0
Δ-mixed-invisible-to-S0 = refl

Δ-mixed-visible-to-S1 : ¬ (dot S1 Δ-mixed ≡ pos 0)
Δ-mixed-visible-to-S1 ()
