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
--
-- Style note: each cluster of checks below (the nine basis vectors,
-- the four triangle signatures, the three joint-kernel edges) is one
-- `List` plus one `All` proof rather than one named lemma per row --
-- same content as writing each row out as its own top-level `refl`,
-- but the repetition is data (a list literal) instead of syntax (many
-- declarations), so the shape of the check is written once.
module CayleyDicksonQuiver.HopfStructure_Hypotheses where

open import CayleyDicksonQuiver.Hypotheses
  using (CD; mul; add; neg; zeroCD; seed-a; witness-x;
         basis-e2; basis-e3; basis-e5; basis-e6; basis-e7; basis-e9;
         basis-e10; basis-e11; basis-e12; basis-e14; basis-e15)
open import CayleyDicksonQuiver.HopfStructure
open import Data.Bool using (false; true)
open import Data.List using (List; []; _∷_)
open import Data.List.Relation.Unary.All using (All; []; _∷_)
open import Data.Nat using (ℕ)
open import Data.Product using (_×_; _,_)
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

basisVec-pairs : List (Addr 4 × CD 4)
basisVec-pairs =
  (addr-e2  , basis-e2)  ∷
  (addr-e3  , basis-e3)  ∷
  (addr-e5  , basis-e5)  ∷
  (addr-e6  , basis-e6)  ∷
  (addr-e9  , basis-e9)  ∷
  (addr-e10 , basis-e10) ∷
  (addr-e11 , basis-e11) ∷
  (addr-e12 , basis-e12) ∷
  (addr-e15 , basis-e15) ∷ []

basisVec-encodings-agree : All (λ (a , x) → basisVec 4 a ≡ x) basisVec-pairs
basisVec-encodings-agree = refl ∷ refl ∷ refl ∷ refl ∷ refl ∷ refl ∷ refl ∷ refl ∷ refl ∷ []

------------------------------------------------------------------------
-- mul-basis-closure reproduces every concrete triangle fact at once
------------------------------------------------------------------------
-- `Hypotheses.agda` checked `mul 4 basis-e3 basis-e10 ≡ basis-e9` (and
-- its two triangle-mates, and the contrasting `e_2+e_11`) by `refl` on
-- four separate literals. Each is now an instance of the *same*
-- `mul-basis-closure` theorem: the address side (`⊕`) picks out the
-- shared target `addr-e9` for all four rows, and the sign side
-- (`cocycle`) picks out `plus` for the three triangle members and
-- `minus` for the outsider -- exactly the "same c, same sign" grouping
-- the numerical kernel-intersection experiment found, stated here with
-- no reference to k=4, rank, or nullity at all.

triangle-signature-checks : List (Addr 4 × Addr 4 × Sign × Addr 4)
triangle-signature-checks =
  (addr-e3 , addr-e10 , plus  , addr-e9) ∷
  (addr-e5 , addr-e12 , plus  , addr-e9) ∷
  (addr-e6 , addr-e15 , plus  , addr-e9) ∷
  (addr-e2 , addr-e11 , minus , addr-e9) ∷ []

triangle-signatures-agree :
  All (λ (p , q , s , t) → cocycle p q ≡ s × p ⊕ q ≡ t) triangle-signature-checks
triangle-signatures-agree =
  (refl , refl) ∷ (refl , refl) ∷ (refl , refl) ∷ (refl , refl) ∷ []

------------------------------------------------------------------------
-- Joint kernels, stated elementarily
------------------------------------------------------------------------
-- The natural way to say "a and b share a piece of kernel" needs no
-- rank or matrix at all: x is jointly killed by a and b exactly when
-- a*x = 0 and b*x = 0, both. Restating the triangle's three edges this
-- way is nothing new mathematically -- each pair was already exactly
-- this, checked one field at a time -- but it names the shape once
-- instead of leaving it implicit, and is what a dimension-counting
-- version of the same statement (`the joint kernel of a and b has
-- dimension 2`, checked exhaustively across all 861 zero-divisor-seed
-- pairs at k=4, with equality holding in both directions against "same
-- address-XOR and same cocycle sign") would have to be built on top
-- of, since dimension is a property of this same set of vectors, not a
-- different one. Genuinely computing that dimension for arbitrary a, b
-- is exactly the open, linear-algebra-shaped gap already on record for
-- `zero-divisor-has-gen-inv`.

JointlyKilledBy : (k : ℕ) → CD k → CD k → CD k → Set
JointlyKilledBy k a b x = mul k a x ≡ zeroCD k × mul k b x ≡ zeroCD k

triangle-edges : List (CD 4 × CD 4 × CD 4)
triangle-edges =
  (seed-a , add 4 basis-e5 basis-e12 , add 4 basis-e7 basis-e14) ∷
  (seed-a , add 4 basis-e6 basis-e15 , witness-x) ∷
  (add 4 basis-e5 basis-e12 , add 4 basis-e6 basis-e15 ,
    add 4 (neg 4 basis-e3) basis-e10) ∷ []

triangle-edges-jointly-killed :
  All (λ (a , b , x) → JointlyKilledBy 4 a b x) triangle-edges
triangle-edges-jointly-killed = (refl , refl) ∷ (refl , refl) ∷ (refl , refl) ∷ []

------------------------------------------------------------------------
-- k=5: a genuinely new zero divisor, and e_16's special role
------------------------------------------------------------------------
-- Everything above stayed at k=4, where `basisVec`/`cocycle` only
-- reproduce facts already checked by hand. At k=5 the closure theorem
-- earns its keep: it reaches seeds no `inl`/`inr` literal has been
-- written out for, with no new infrastructure beyond `Addr 5`.
--
-- The k=5 cross-block zero-divisor scan (32-dim, i < 16 <= j) has a
-- complete closed-form rule now (see `CarabinerHypotheses.lagda.md`,
-- H6): writing `i`'s block as 0/1 and `j`'s block as 2/3 with local
-- offsets `di = i mod 8`, `dj = j mod 8`, block pair (0,3) is a zero
-- divisor with nullity 4 exactly when `i != 0` and `dj` is neither `0`
-- nor `di`. `e_1+e_26` is one such seed (`di=1`, `dj=2`): `e_3+e_24` is
-- an actual kernel witness, checked the same way `seed-a`/`witness-x`
-- were at k=4, just built from `basisVec 5` addresses instead of a
-- hand-written 32-entry literal.
--
-- Separately, that same rule marks `j = 16` as unconditionally safe no
-- matter which block `i` is in -- an echo of `e_8`'s role at k=4, where
-- `e_i * e_(i+8)` was always the constant `-e_8`. `e_16`'s own pattern
-- is simpler, not constant: `e_16 = basisVec 5 (true, false,false,
-- false,false)` is exactly `inr` of the k=4 real unit, so
-- `mul-basis-closure` says multiplying any k=4-side basis vector by it
-- just shifts that vector into the second half unchanged -- `e_1*e_16`
-- lands on `e_17`, not on a fixed target. Whether that shift property
-- is *why* `j=16` is always safe is not checked here; this only
-- records the product-level fact, the same honest half `mul-basis-
-- closure` covers everywhere else in this file.

addr5-e1  : Addr 5
addr5-e1  = false ∷ false ∷ false ∷ false ∷ true  ∷ []

addr5-e3  : Addr 5
addr5-e3  = false ∷ false ∷ false ∷ true  ∷ true  ∷ []

addr5-e16 : Addr 5
addr5-e16 = true  ∷ false ∷ false ∷ false ∷ false ∷ []

addr5-e17 : Addr 5
addr5-e17 = true  ∷ false ∷ false ∷ false ∷ true  ∷ []

addr5-e24 : Addr 5
addr5-e24 = true  ∷ true  ∷ false ∷ false ∷ false ∷ []

addr5-e26 : Addr 5
addr5-e26 = true  ∷ true  ∷ false ∷ true  ∷ false ∷ []

e16-shifts-e1 :
  mul 5 (basisVec 5 addr5-e1) (basisVec 5 addr5-e16) ≡ basisVec 5 addr5-e17
e16-shifts-e1 = refl

seed5 : CD 5
seed5 = add 5 (basisVec 5 addr5-e1) (basisVec 5 addr5-e26)

witness5 : CD 5
witness5 = add 5 (basisVec 5 addr5-e3) (basisVec 5 addr5-e24)

seed5-zero-divisor : mul 5 seed5 witness5 ≡ zeroCD 5
seed5-zero-divisor = refl