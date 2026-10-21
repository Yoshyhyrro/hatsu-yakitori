-- CayleyDicksonQuiver.AbelianCurse.AlternatorBracket
--
-- The anticommutator of two left multiplications as a bracket on the
-- sedenions (`note/CarabinerHypotheses.lagda.md`, H10 and H18).
--
-- For basis vectors e_a, e_b of `CD 4` (a, b >= 1) put
--
--   S_ab (w) = e_a (e_b w) + e_b (e_a w).
--
-- Distinct basis units anticommute, so S_ab(w) is, up to sign, the
-- polarized left alternator [e_a, e_b, w] + [e_b, e_a, w] of the associator
-- [x, y, z] = (xy)z - x(yz). The zero-divisor pairs of H5 are the pairs with
-- S_ab != 0.
--
-- Checked here, by reflection over all 16 basis vectors w (decidable
-- equality `eqCD`, `all?`, `toWitness`), for the zero-divisor pairs
-- (1,10), (2,11), (3,12):
--
--     S_ab (S_ab (S_ab w)) = 4 S_ab (w)           (the exact, basis-level
--                                                  form of S^3 = 4 S of H10),
--
-- and, for (1,10) and (2,11) at w = e_4, (3,12) at w = e_1, that S_ab(w) is
-- not zero (so the statement is not the trivial 0 = 0).
--
-- NOT checked here: the same for all pairs (a, b). It is a larger run of
-- the same reflection (about 225 pairs times 16 basis vectors; a single pair
-- costs on the order of ten seconds, so roughly forty minutes), left as a
-- long-running job. Also not carried out: the extension from basis vectors to
-- all vectors w by the bilinearity of `mul` (`CDBilinear`).
--
-- Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.AlternatorBracket where

open import CayleyDicksonQuiver.AbelianCurse.CDBilinear using (tms)
open import CayleyDicksonQuiver.AbelianCurse.HeisenbergSeedRelations using (eqCD; basis)
open import CayleyDicksonQuiver.Hypotheses using (CD; add; mul; zeroCD)
open import Data.Fin using (Fin; toℕ)
open import Data.Fin.Properties using (all?)
open import Data.Nat using (ℕ)
open import Data.Unit using (tt)
open import Relation.Binary.PropositionalEquality using (_≡_)
open import Relation.Nullary using (¬_)
open import Relation.Nullary.Decidable using (True; False; toWitness; toWitnessFalse)

vec : Fin 16 → CD 4
vec w = basis 4 (toℕ w)

S : ℕ → ℕ → CD 4 → CD 4
S a b w = add 4 (mul 4 (basis 4 a) (mul 4 (basis 4 b) w))
                (mul 4 (basis 4 b) (mul 4 (basis 4 a) w))

Cube : ℕ → ℕ → Set
Cube a b = (w : Fin 16) → S a b (S a b (S a b (vec w))) ≡ tms 4 4 (S a b (vec w))

cube-by-reflection : (a b : ℕ) →
  True (all? (λ w → eqCD 4 (S a b (S a b (S a b (vec w)))) (tms 4 4 (S a b (vec w))))) →
  Cube a b
cube-by-reflection a b t = toWitness t

cube-1-10 : Cube 1 10
cube-1-10 = cube-by-reflection 1 10 tt

cube-2-11 : Cube 2 11
cube-2-11 = cube-by-reflection 2 11 tt

cube-3-12 : Cube 3 12
cube-3-12 = cube-by-reflection 3 12 tt

-- S is not identically zero on these pairs.
--
-- The `Dec` argument of `toWitnessFalse` is inferred from the type of the
-- `False` argument; no implicit argument is named, because its name differs
-- between versions of the standard library.
nonzero-by-reflection : (a b : ℕ) (w : CD 4) →
  False (eqCD 4 (S a b w) (zeroCD 4)) → ¬ (S a b w ≡ zeroCD 4)
nonzero-by-reflection a b w f = toWitnessFalse f

nonzero-1-10 : ¬ (S 1 10 (basis 4 4) ≡ zeroCD 4)
nonzero-1-10 = nonzero-by-reflection 1 10 (basis 4 4) tt

nonzero-2-11 : ¬ (S 2 11 (basis 4 4) ≡ zeroCD 4)
nonzero-2-11 = nonzero-by-reflection 2 11 (basis 4 4) tt

nonzero-3-12 : ¬ (S 3 12 (basis 4 1) ≡ zeroCD 4)
nonzero-3-12 = nonzero-by-reflection 3 12 (basis 4 1) tt