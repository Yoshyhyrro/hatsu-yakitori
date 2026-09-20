-- CayleyDicksonQuiver.HopfStructure_Hypotheses
--
-- Bridge module, in the same spirit as `CayleyDicksonQuiver.Hypotheses`:
-- everything here is postulate-free and hole-free, but the connection
-- it is building toward is large enough, and speculative enough, that
-- it does not belong mixed into either `Hypotheses.agda` (concrete
-- k=4 seed facts) or `HopfStructure.agda` (the general, every-k
-- `Addr`/`cocycle` machinery). This file imports both and grows the
-- bridge between them incrementally.
--
-- The target conjecture: the 42 sedenion zero-divisor seeds e_i+e_j
-- (Hypotheses.agda's "Which zero divisors share a kernel?" section)
-- split into 14 kernel-intersection triangles, which further split
-- into 7 families of 2 triangles by the address-XOR value `cocycle`'s
-- own address argument computes (`p ⊕ q` in `HopfStructure.agda`) --
-- i.e. the *combinatorics* of the whole 42-seed hierarchy is already
-- latent in `mul-basis-closure`, not something specific to k=4 at all.
--
-- HONEST STATUS: what is checked below is only the product-level
-- bridge -- that `HopfStructure.agda`'s general `Addr 4`/`basisVec`/
-- `cocycle` encoding computes the *same* basis vectors and the *same*
-- signed products as the concrete literals already checked one seed at
-- a time in `Hypotheses.agda`. This is a real, if modest, step: every
-- one of those concrete `refl`s is now an instance of one theorem
-- proved once, for every k. What is NOT here yet is the actual
-- kernel-intersection side of the conjecture -- turning "same `p ⊕ q`
-- and same `cocycle` sign" into "these two seeds' kernels meet in
-- dimension 2" needs real linear algebra this project does not have,
-- exactly as already flagged for `zero-divisor-has-gen-inv`
-- (`CayleyDicksonQuiver.Properties`, Section 8).
module CayleyDicksonQuiver.HopfStructure_Hypotheses where

open import CayleyDicksonQuiver.Hypotheses
  using (CD; mul; zeroCD; seed-a;
         basis-e2; basis-e3; basis-e5; basis-e6; basis-e9;
         basis-e10; basis-e11; basis-e12; basis-e15)
open import CayleyDicksonQuiver.HopfStructure
open import Data.Bool using (false; true)
open import Data.Vec using ([]; _∷_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)

------------------------------------------------------------------------
-- Addresses for the nine basis vectors seed-a's triangle involves
------------------------------------------------------------------------
-- Each is the same left/right path already spelled out in
-- `Hypotheses.agda`'s comments above `basis-e2` etc., just written as
-- an explicit `Addr 4` (`false` = left/`inl`, `true` = right/`inr`)
-- rather than as a composition of `inl`/`inr`.

addr-e2  : Addr 4
addr-e2  = false ∷ false ∷ true  ∷ false ∷ []

addr-e3  : Addr 4
addr-e3  = false ∷ false ∷ true  ∷ true  ∷ []

addr-e5  : Addr 4
addr-e5  = false ∷ true  ∷ false ∷ true  ∷ []

addr-e6  : Addr 4
addr-e6  = false ∷ true  ∷ true  ∷ false ∷ []

addr-e9  : Addr 4
addr-e9  = true  ∷ false ∷ false ∷ true  ∷ []

addr-e10 : Addr 4
addr-e10 = true  ∷ false ∷ true  ∷ false ∷ []

addr-e11 : Addr 4
addr-e11 = true  ∷ false ∷ true  ∷ true  ∷ []

addr-e12 : Addr 4
addr-e12 = true  ∷ true  ∷ false ∷ false ∷ []

addr-e15 : Addr 4
addr-e15 = true  ∷ true  ∷ true  ∷ true  ∷ []

------------------------------------------------------------------------
-- The two encodings agree
------------------------------------------------------------------------
-- `basisVec 4` applied to the address above computes to exactly the
-- `inl`/`inr` literal already named in `Hypotheses.agda` -- not a new
-- fact about the algebra, just confirmation that the general encoding
-- and the concrete one are the same nine basis vectors, so results
-- about one transfer to the other for free.

basisVec-e2  : basisVec 4 addr-e2  ≡ basis-e2
basisVec-e2  = refl

basisVec-e3  : basisVec 4 addr-e3  ≡ basis-e3
basisVec-e3  = refl

basisVec-e5  : basisVec 4 addr-e5  ≡ basis-e5
basisVec-e5  = refl

basisVec-e6  : basisVec 4 addr-e6  ≡ basis-e6
basisVec-e6  = refl

basisVec-e9  : basisVec 4 addr-e9  ≡ basis-e9
basisVec-e9  = refl

basisVec-e10 : basisVec 4 addr-e10 ≡ basis-e10
basisVec-e10 = refl

basisVec-e11 : basisVec 4 addr-e11 ≡ basis-e11
basisVec-e11 = refl

basisVec-e12 : basisVec 4 addr-e12 ≡ basis-e12
basisVec-e12 = refl

basisVec-e15 : basisVec 4 addr-e15 ≡ basis-e15
basisVec-e15 = refl

------------------------------------------------------------------------
-- mul-basis-closure reproduces every concrete triangle fact at once
------------------------------------------------------------------------
-- `Hypotheses.agda` checked `mul 4 basis-e3 basis-e10 ≡ basis-e9` (and
-- its two triangle-mates, and the contrasting `e_2+e_11`) by `refl` on
-- four separate literals. Each is now an instance of the *same*
-- `mul-basis-closure` theorem: the address side (`⊕`) picks out the
-- shared target `addr-e9`, and the sign side (`cocycle`) picks out
-- `plus` for the three triangle members and `minus` for the outsider
-- -- exactly the "same c, same sign" grouping the numerical
-- kernel-intersection experiment found, stated here with no reference
-- to k=4, rank, or nullity at all.

cocycle-3-10  : cocycle addr-e3 addr-e10 ≡ plus
cocycle-3-10  = refl

cocycle-5-12  : cocycle addr-e5 addr-e12 ≡ plus
cocycle-5-12  = refl

cocycle-6-15  : cocycle addr-e6 addr-e15 ≡ plus
cocycle-6-15  = refl

cocycle-2-11  : cocycle addr-e2 addr-e11 ≡ minus
cocycle-2-11  = refl

address-3-10  : addr-e3 ⊕ addr-e10 ≡ addr-e9
address-3-10  = refl

address-5-12  : addr-e5 ⊕ addr-e12 ≡ addr-e9
address-5-12  = refl

address-6-15  : addr-e6 ⊕ addr-e15 ≡ addr-e9
address-6-15  = refl

address-2-11  : addr-e2 ⊕ addr-e11 ≡ addr-e9
address-2-11  = refl
