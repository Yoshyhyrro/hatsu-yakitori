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
  using (CD; mul; add; neg; zeroCD; real-part; seed-a; witness-x;
         basis-e2; basis-e3; basis-e5; basis-e6; basis-e7; basis-e9;
         basis-e10; basis-e11; basis-e12; basis-e14; basis-e15)
open import CayleyDicksonQuiver.HopfStructure
open import Data.Bool using (Bool; false; true)
open import Data.Integer using (ℤ; 1ℤ; _⊖_; -_; ∣_∣) renaming (+_ to pos)
open import Data.List using (List; []; _∷_; map; concatMap; length; applyUpTo; _++_)
open import Data.List.Relation.Unary.All using (All; []; _∷_)
open import Data.Nat using (ℕ; zero; suc; _+_; _∸_; _≡ᵇ_; _≤_; z≤n; s≤s)
open import Data.Nat.Properties
  using (+-assoc; +-comm; +-identityʳ; +-suc; ≤-trans; ≤-reflexive; +-monoʳ-≤; n≤1+n;
         m+[n∸m]≡n)
open import Data.Product using (_×_; _,_)
open import Data.Vec using ([]; _∷_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; sym; trans; cong; cong₂)
open import Relation.Nullary using (¬_)

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

------------------------------------------------------------------------
-- The (address, sign) pair is an instance of a general separating pair
------------------------------------------------------------------------
-- `Algebra.Separates` names one shape, with no reference to Cayley-
-- Dickson algebras, sedenions, or anything else specific to this
-- project: given a coarse invariant T and a finer one S out of the
-- same source, T and S separate x from y exactly when T agrees on
-- them but S does not. `seed-a` (address `addr-e3, addr-e10`) and
-- `e_2+e_11` (address `addr-e2, addr-e11`) are exactly such a pair
-- under T = address-XOR, S = cocycle-sign: same address-XOR target
-- (both hit `addr-e9`), different sign (`plus` vs `minus`) -- which is
-- exactly why they land in different kernel-intersection triangles
-- despite sharing a `c` value, from the H5 write-up. This is the same
-- pattern a coarse-then-fine collision test on free-group words would
-- be checking with (abelianization, degree-2 Magnus term) in place of
-- (address-XOR, cocycle-sign) -- one instance of `Separates`, not two
-- unrelated facts.

-- Inlined from Algebra.Separates to resolve missing module dependency.
Separates : ∀ {A B C : Set} → (A → B) → (A → C) → A → A → Set
Separates T S x y = (T x ≡ T y) × ¬ (S x ≡ S y)

signature-T : Addr 4 × Addr 4 → Addr 4
signature-T (p , q) = p ⊕ q

signature-S : Addr 4 × Addr 4 → Sign
signature-S (p , q) = cocycle p q

plus≢minus : ¬ (plus ≡ minus)
plus≢minus ()

seed-a-separated-from-2-11 :
  Separates signature-T signature-S (addr-e3 , addr-e10) (addr-e2 , addr-e11)
seed-a-separated-from-2-11 = address-3-10 , sign-differs
  where
  address-3-10 : addr-e3 ⊕ addr-e10 ≡ addr-e2 ⊕ addr-e11
  address-3-10 = refl

  sign-differs : ¬ (cocycle addr-e3 addr-e10 ≡ cocycle addr-e2 addr-e11)
  sign-differs eq = plus≢minus eq

------------------------------------------------------------------------
-- A second zero-divisor algebra: the bi-octonions
------------------------------------------------------------------------
-- The sedenions are not the only 16-dimensional algebra with zero
-- divisors: complexifying the octonions (O + I*O, I^2 = -1) does too,
-- by a classical, general fact about complexifying any composition
-- algebra. This is genuinely a different algebra from `CD 4`, not
-- another instance of it: the product below is the ordinary complex-
-- bilinear extension (a,b)(c,d) = (ac-bd, ad+bc), ALL built from the
-- octonions' own `mul 3` with no conjugate anywhere, unlike `mul`'s
-- own Cayley-Dickson doubling step. Representing bi-octonions as
-- `CD 3 x CD 3` rather than shoehorning them into `CD 4` keeps that
-- distinction visible in the type itself.
--
-- `1 + I*e_1` is a genuine bi-octonion zero divisor: `(1)(1) - e_1
-- * e_1 = 1 - (-1) = 0` real part, `(1)(-e_1) + e_1(1) = 0` imaginary
-- part (since `1` is central). A numerical comparison of this seed
-- against `seed-a` found a real structural difference: for `seed-a`,
-- the map (dx,dy) -> dx*witness-x + seed-a*dy has full rank 16 (a
-- smooth point of the "product vanishes" locus) -- checked for all 42
-- sedenion pair-seeds, not just this one -- while the analogous map
-- for `1+I*e_1` has rank only 10 (a genuinely singular point, tangent
-- space 22-dimensional instead of the generic 16). A one-parameter
-- family of bi-octonion zero divisors through this point
-- (`x = s + I*(e_1 + t*e_4)`, `y = s - I*(e_1 + t*e_4)`,
-- `s = (1+u^2)/(1-u^2)`, `t = 2u/(1-u^2)`, so `s^2 - t^2 = 1`
-- identically) shows this particular singularity is a feature of
-- `u = 0` specifically, not of bi-octonion zero divisors generally:
-- at every other point checked (symbolically in `u`, and concretely at
-- `u = 1/2`) the rank returns to the generic value. None of this rank
-- reasoning is repeated here -- it needs real linear algebra this file
-- does not have, exactly as flagged throughout for `zero-divisor-has-
-- gen-inv` -- only the elementary product fact is.

-- e_1 within the octonions (CD 3, dim 8).
addr3-e1 : Addr 3
addr3-e1 = false ∷ false ∷ true ∷ []

bio-mul : CD 3 × CD 3 → CD 3 × CD 3 → CD 3 × CD 3
bio-mul (a , b) (c , d) =
  add 3 (mul 3 a c) (neg 3 (mul 3 b d)) , add 3 (mul 3 a d) (mul 3 b c)

x-bio : CD 3 × CD 3
x-bio = real-part 3 1ℤ , basisVec 3 addr3-e1

y-bio : CD 3 × CD 3
y-bio = real-part 3 1ℤ , neg 3 (basisVec 3 addr3-e1)

bio-zero-divisor : bio-mul x-bio y-bio ≡ (zeroCD 3 , zeroCD 3)
bio-zero-divisor = refl

------------------------------------------------------------------------
-- Index words and the stuffle product
------------------------------------------------------------------------
-- An index word is a list of natural numbers, read as positive
-- integers. Its weight is the sum of its entries and its depth is its
-- length. An index word is admissible if it is nonempty and its first
-- entry is at least 2.
--
-- The stuffle product of two index words is a formal sum of index
-- words. A formal sum is represented as an association list from index
-- words to coefficients, ordered by first occurrence.
--
-- Recorded below: the definitions, a few evaluations by `refl`, and two
-- general statements about the terms of a stuffle product (their
-- weight, and admissibility when both factors are admissible).
-- Commutativity and associativity of the stuffle product are not
-- treated.

IndexWord : Set
IndexWord = List ℕ

weight : IndexWord → ℕ
weight []       = 0
weight (n ∷ ns) = n + weight ns

admissible : IndexWord → Bool
admissible []                = false
admissible (zero ∷ _)        = false
admissible (suc zero ∷ _)    = false
admissible (suc (suc _) ∷ _) = true

filter-words : (IndexWord → Bool) → List IndexWord → List IndexWord
filter-words p []       = []
filter-words p (w ∷ ws) with p w
... | true  = w ∷ filter-words p ws
... | false = filter-words p ws

-- `compositions n k` lists the ordered sums of `k` positive integers
-- with total `n`, in lexicographic order.

compositions : ℕ → ℕ → List IndexWord
compositions zero    zero    = [] ∷ []
compositions (suc n) zero    = []
compositions n       (suc k) =
  concatMap (λ a → map (λ w → a ∷ w) (compositions (n ∸ a) k))
            (applyUpTo suc n)

admissible-words : ℕ → ℕ → List IndexWord
admissible-words n k = filter-words admissible (compositions n k)

compositions-4-2 :
  compositions 4 2 ≡ (1 ∷ 3 ∷ []) ∷ (2 ∷ 2 ∷ []) ∷ (3 ∷ 1 ∷ []) ∷ []
compositions-4-2 = refl

admissible-words-5-2 :
  admissible-words 5 2 ≡ (2 ∷ 3 ∷ []) ∷ (3 ∷ 2 ∷ []) ∷ (4 ∷ 1 ∷ []) ∷ []
admissible-words-5-2 = refl

-- Each triple is (weight, depth, number of admissible words).

admissible-word-counts : List (ℕ × ℕ × ℕ)
admissible-word-counts =
  (8 , 5 , 15) ∷ (10 , 5 , 70) ∷ (12 , 5 , 210) ∷ []

admissible-word-counts-agree :
  All (λ (n , k , c) → length (admissible-words n k) ≡ c)
      admissible-word-counts
admissible-word-counts-agree = refl ∷ refl ∷ refl ∷ []

------------------------------------------------------------------------
-- Formal sums and the stuffle product
------------------------------------------------------------------------

FormalSum : Set
FormalSum = List (IndexWord × ℕ)

-- Boolean equality of index words.

word-eq : IndexWord → IndexWord → Bool
word-eq []       []       = true
word-eq (m ∷ ms) (n ∷ ns) with m ≡ᵇ n
... | true  = word-eq ms ns
... | false = false
word-eq _        _        = false

-- Adds `c` to the coefficient of `w`, appending `w` if it is absent.

add-term : IndexWord → ℕ → FormalSum → FormalSum
add-term w c []               = (w , c) ∷ []
add-term w c ((v , d) ∷ rest) with word-eq w v
... | true  = (v , d + c) ∷ rest
... | false = (v , d) ∷ add-term w c rest

-- Adds the terms of the second sum to the first, in order.

add-sum : FormalSum → FormalSum → FormalSum
add-sum xs []              = xs
add-sum xs ((w , c) ∷ ys)  = add-sum (add-term w c xs) ys

-- Prepends a letter to every index word of a formal sum.

prefix-letter : ℕ → FormalSum → FormalSum
prefix-letter n []              = []
prefix-letter n ((w , c) ∷ xs)  = (n ∷ w , c) ∷ prefix-letter n xs

-- `stuffle x y` sums over the interleavings of `x` and `y`, where a
-- letter of `x` and a letter of `y` may also be merged into their sum.

stuffle : IndexWord → IndexWord → FormalSum
stuffle []       ys       = (ys , 1) ∷ []
stuffle (x ∷ xs) []       = (x ∷ xs , 1) ∷ []
stuffle (x ∷ xs) (y ∷ ys) =
  add-sum (add-sum (prefix-letter x (stuffle xs (y ∷ ys)))
                   (prefix-letter y (stuffle (x ∷ xs) ys)))
          (prefix-letter (x + y) (stuffle xs ys))

stuffle-checks : List (IndexWord × IndexWord × FormalSum)
stuffle-checks =
  (2 ∷ [] , 3 ∷ [] ,
    (2 ∷ 3 ∷ [] , 1) ∷ (3 ∷ 2 ∷ [] , 1) ∷ (5 ∷ [] , 1) ∷ []) ∷
  (1 ∷ [] , 1 ∷ [] ,
    (1 ∷ 1 ∷ [] , 2) ∷ (2 ∷ [] , 1) ∷ []) ∷
  (2 ∷ 1 ∷ [] , 3 ∷ [] ,
    (2 ∷ 1 ∷ 3 ∷ [] , 1) ∷ (2 ∷ 3 ∷ 1 ∷ [] , 1) ∷ (2 ∷ 4 ∷ [] , 1) ∷
    (3 ∷ 2 ∷ 1 ∷ [] , 1) ∷ (5 ∷ 1 ∷ [] , 1) ∷ []) ∷ []

stuffle-checks-agree :
  All (λ (x , y , s) → stuffle x y ≡ s) stuffle-checks
stuffle-checks-agree = refl ∷ refl ∷ refl ∷ []

------------------------------------------------------------------------
-- Properties of the terms of a stuffle product
------------------------------------------------------------------------
-- `AllKeys P xs` states that `P` holds for every index word occurring
-- in the formal sum `xs`, regardless of its coefficient.

data AllKeys (P : IndexWord → Set) : FormalSum → Set where
  []  : AllKeys P []
  _∷_ : ∀ {w c xs} → P w → AllKeys P xs → AllKeys P ((w , c) ∷ xs)

keys-map : {P Q : IndexWord → Set} → (∀ w → P w → Q w) →
  (xs : FormalSum) → AllKeys P xs → AllKeys Q xs
keys-map f []              []         = []
keys-map f ((w , c) ∷ xs)  (h ∷ hs)   = f w h ∷ keys-map f xs hs

add-term-keys : {P : IndexWord → Set} (w : IndexWord) (c : ℕ)
  (xs : FormalSum) → P w → AllKeys P xs → AllKeys P (add-term w c xs)
add-term-keys w c []              hw []         = hw ∷ []
add-term-keys w c ((v , d) ∷ xs)  hw (hv ∷ hxs) with word-eq w v
... | true  = hv ∷ hxs
... | false = hv ∷ add-term-keys w c xs hw hxs

add-sum-keys : {P : IndexWord → Set} (xs ys : FormalSum) →
  AllKeys P xs → AllKeys P ys → AllKeys P (add-sum xs ys)
add-sum-keys xs []              hxs []         = hxs
add-sum-keys xs ((w , c) ∷ ys)  hxs (hw ∷ hys) =
  add-sum-keys (add-term w c xs) ys (add-term-keys w c xs hw hxs) hys

-- Weight: every term of `stuffle x y` has weight `weight x + weight y`.

prefix-letter-weight : (m n : ℕ) (xs : FormalSum) →
  AllKeys (λ w → weight w ≡ n) xs →
  AllKeys (λ w → weight w ≡ m + n) (prefix-letter m xs)
prefix-letter-weight m n []              []         = []
prefix-letter-weight m n ((w , c) ∷ xs)  (h ∷ hs)   =
  cong (m +_) h ∷ prefix-letter-weight m n xs hs

swap-inner : (y a b : ℕ) → y + (a + b) ≡ a + (y + b)
swap-inner y a b =
  trans (sym (+-assoc y a b))
        (trans (cong (_+ b) (+-comm y a)) (+-assoc a y b))

rearrange : (x a y b : ℕ) → (x + y) + (a + b) ≡ (x + a) + (y + b)
rearrange x a y b =
  trans (+-assoc x y (a + b))
        (trans (cong (x +_) (swap-inner y a b))
               (sym (+-assoc x a (y + b))))

stuffle-weight : (x y : IndexWord) →
  AllKeys (λ w → weight w ≡ weight x + weight y) (stuffle x y)
stuffle-weight []       y        = refl ∷ []
stuffle-weight (x ∷ xs) []       = sym (+-identityʳ (weight (x ∷ xs))) ∷ []
stuffle-weight (x ∷ xs) (y ∷ ys) =
  add-sum-keys _ _
    (add-sum-keys _ _
      (keys-map
        (λ w h → trans h (sym (+-assoc x (weight xs) (y + weight ys))))
        _
        (prefix-letter-weight x (weight xs + (y + weight ys)) _
          (stuffle-weight xs (y ∷ ys))))
      (keys-map
        (λ w h → trans h (swap-inner y (x + weight xs) (weight ys)))
        _
        (prefix-letter-weight y ((x + weight xs) + weight ys) _
          (stuffle-weight (x ∷ xs) ys))))
    (keys-map
      (λ w h → trans h (rearrange x (weight xs) y (weight ys)))
      _
      (prefix-letter-weight (x + y) (weight xs + weight ys) _
        (stuffle-weight xs ys)))

-- Admissibility: the stuffle product of two admissible words has only
-- admissible terms. Each term begins with `x`, `y` or `x + y`.

Admissible : IndexWord → Set
Admissible w = admissible w ≡ true

prefix-letter-admissible : (m : ℕ) (xs : FormalSum) →
  AllKeys Admissible (prefix-letter (suc (suc m)) xs)
prefix-letter-admissible m []              = []
prefix-letter-admissible m ((w , c) ∷ xs)  =
  refl ∷ prefix-letter-admissible m xs

stuffle-admissible : (x y : IndexWord) →
  Admissible x → Admissible y → AllKeys Admissible (stuffle x y)
stuffle-admissible []                 y                 ()  _
stuffle-admissible (_ ∷ _)            []                _   ()
stuffle-admissible (zero ∷ _)         (_ ∷ _)           ()  _
stuffle-admissible (suc zero ∷ _)     (_ ∷ _)           ()  _
stuffle-admissible (suc (suc _) ∷ _)  (zero ∷ _)        _   ()
stuffle-admissible (suc (suc _) ∷ _)  (suc zero ∷ _)    _   ()
stuffle-admissible (suc (suc x) ∷ xs) (suc (suc y) ∷ ys) _ _ =
  add-sum-keys _ _
    (add-sum-keys _ _
      (prefix-letter-admissible x (stuffle xs (suc (suc y) ∷ ys)))
      (prefix-letter-admissible y (stuffle (suc (suc x) ∷ xs) ys)))
    (prefix-letter-admissible (x + suc (suc y)) (stuffle xs ys))

------------------------------------------------------------------------
-- Binary words
------------------------------------------------------------------------
-- The index word (n₁, …, nᵣ) of positive integers is encoded as the
-- binary word 0^(n₁-1) 1 … 0^(nᵣ-1) 1, with `false` for 0 and `true`
-- for 1. The weight of an index word is the length of its encoding,
-- and its depth is the number of 1s. Every non-empty encoded word ends
-- in 1, and the encoding is injective on index words of positive
-- integers.

BinWord : Set
BinWord = List Bool

zeros : ℕ → BinWord → BinWord
zeros zero    w = w
zeros (suc n) w = false ∷ zeros n w

index-to-word : IndexWord → BinWord
index-to-word []       = []
index-to-word (n ∷ ns) = zeros (n ∸ 1) (true ∷ index-to-word ns)

-- Reads the zeros before each 1. Trailing zeros are dropped, so this
-- inverts `index-to-word` only on binary words ending in 1.

word-to-index-from : ℕ → BinWord → IndexWord
word-to-index-from z []          = []
word-to-index-from z (false ∷ w) = word-to-index-from (suc z) w
word-to-index-from z (true  ∷ w) = suc z ∷ word-to-index-from zero w

word-to-index : BinWord → IndexWord
word-to-index = word-to-index-from zero

Positive : IndexWord → Set
Positive = All (λ n → 1 ≤ n)

encoding-checks : List (IndexWord × BinWord)
encoding-checks =
  (2 ∷ 1 ∷ 3 ∷ [] , false ∷ true ∷ true ∷ false ∷ false ∷ true ∷ []) ∷
  (3 ∷ 1 ∷ [] , false ∷ false ∷ true ∷ true ∷ []) ∷
  (2 ∷ 2 ∷ [] , false ∷ true ∷ false ∷ true ∷ []) ∷ []

encoding-checks-agree :
  All (λ (a , w) → index-to-word a ≡ w × word-to-index w ≡ a) encoding-checks
encoding-checks-agree = (refl , refl) ∷ (refl , refl) ∷ (refl , refl) ∷ []

word-to-index-from-zeros : (m z : ℕ) (w : BinWord) →
  word-to-index-from z (zeros m w) ≡ word-to-index-from (m + z) w
word-to-index-from-zeros zero    z w = refl
word-to-index-from-zeros (suc m) z w =
  trans (word-to-index-from-zeros m (suc z) w)
        (cong (λ k → word-to-index-from k w) (+-suc m z))

word-to-index-index-to-word : (a : IndexWord) → Positive a →
  word-to-index (index-to-word a) ≡ a
word-to-index-index-to-word []           []          = refl
word-to-index-index-to-word (suc m ∷ ns) (_ ∷ ps)    =
  trans (word-to-index-from-zeros m zero (true ∷ index-to-word ns))
        (cong₂ _∷_ (cong suc (+-identityʳ m))
                   (word-to-index-index-to-word ns ps))

length-zeros : (m : ℕ) (w : BinWord) → length (zeros m w) ≡ m + length w
length-zeros zero    w = refl
length-zeros (suc m) w = cong suc (length-zeros m w)

length-index-to-word : (a : IndexWord) → Positive a →
  length (index-to-word a) ≡ weight a
length-index-to-word []           []         = refl
length-index-to-word (suc m ∷ ns) (_ ∷ ps)   =
  trans (length-zeros m (true ∷ index-to-word ns))
        (trans (+-suc m (length (index-to-word ns)))
               (cong (λ k → suc (m + k)) (length-index-to-word ns ps)))

------------------------------------------------------------------------
-- The shuffle product
------------------------------------------------------------------------
-- `interleavings u v` lists the interleavings of two binary words,
-- with multiplicity. The shuffle product of two index words counts
-- the interleavings of their encodings, read back as index words.

interleavings : BinWord → BinWord → List BinWord
interleavings []       v        = v ∷ []
interleavings (x ∷ xs) []       = (x ∷ xs) ∷ []
interleavings (x ∷ xs) (y ∷ ys) =
  map (x ∷_) (interleavings xs (y ∷ ys))
    ++ map (y ∷_) (interleavings (x ∷ xs) ys)

count-words : FormalSum → List IndexWord → FormalSum
count-words acc []       = acc
count-words acc (w ∷ ws) = count-words (add-term w 1 acc) ws

shuffle : IndexWord → IndexWord → FormalSum
shuffle a b =
  count-words []
    (map word-to-index (interleavings (index-to-word a) (index-to-word b)))

shuffle-checks : List (IndexWord × IndexWord × FormalSum)
shuffle-checks =
  (2 ∷ [] , 2 ∷ [] ,
    (2 ∷ 2 ∷ [] , 2) ∷ (3 ∷ 1 ∷ [] , 4) ∷ []) ∷ []

shuffle-checks-agree :
  All (λ (x , y , s) → shuffle x y ≡ s) shuffle-checks
shuffle-checks-agree = refl ∷ []

------------------------------------------------------------------------
-- Weight of the terms of a shuffle product
------------------------------------------------------------------------
-- Every term of `shuffle x y` has weight `weight x + weight y`, for
-- non-empty index words of positive integers. The proof goes through
-- the encoding: each interleaving of two encoded words has the
-- combined length and ends in 1.

all-++ : {A : Set} {P : A → Set} {xs ys : List A} →
  All P xs → All P ys → All P (xs ++ ys)
all-++ []         hys = hys
all-++ (h ∷ hxs)  hys = h ∷ all-++ hxs hys

all-map : {A B : Set} {P : B → Set} (f : A → B) {xs : List A} →
  All (λ x → P (f x)) xs → All P (map f xs)
all-map f []         = []
all-map f (h ∷ hs)   = h ∷ all-map f hs

all-imp : {A : Set} {P Q : A → Set} → (∀ x → P x → Q x) →
  {xs : List A} → All P xs → All Q xs
all-imp f []         = []
all-imp f (h ∷ hs)   = f _ h ∷ all-imp f hs

all-both : {A : Set} {P Q : A → Set} {xs : List A} →
  All P xs → All Q xs → All (λ x → P x × Q x) xs
all-both []         []         = []
all-both (p ∷ ps)   (q ∷ qs)   = (p , q) ∷ all-both ps qs

interleavings-length : (u v : BinWord) →
  All (λ w → length w ≡ length u + length v) (interleavings u v)
interleavings-length []       v        = refl ∷ []
interleavings-length (x ∷ xs) []       =
  sym (+-identityʳ (suc (length xs))) ∷ []
interleavings-length (x ∷ xs) (y ∷ ys) =
  all-++
    (all-map (x ∷_)
      (all-imp (λ w h → cong suc h)
        (interleavings-length xs (y ∷ ys))))
    (all-map (y ∷_)
      (all-imp
        (λ w h → trans (cong suc h)
                       (sym (cong suc (+-suc (length xs) (length ys)))))
        (interleavings-length (x ∷ xs) ys)))

-- `EndsTrue w` states that `w` is non-empty and its last letter is 1.

data EndsTrue : BinWord → Set where
  here  : EndsTrue (true ∷ [])
  there : ∀ {b w} → EndsTrue w → EndsTrue (b ∷ w)

interleavings-ends : (u v : BinWord) → EndsTrue u → EndsTrue v →
  All EndsTrue (interleavings u v)
interleavings-ends (true ∷ []) (true ∷ []) here here =
  there here ∷ there here ∷ []
interleavings-ends (true ∷ []) (y ∷ ys) here (there pys) =
  there (there pys) ∷
  all-map (y ∷_)
    (all-imp (λ w p → there p)
      (interleavings-ends (true ∷ []) ys here pys))
interleavings-ends (x ∷ xs) (true ∷ []) (there pxs) here =
  all-++
    (all-map (x ∷_)
      (all-imp (λ w p → there p)
        (interleavings-ends xs (true ∷ []) pxs here)))
    (there (there pxs) ∷ [])
interleavings-ends (x ∷ xs) (y ∷ ys) (there pxs) (there pys) =
  all-++
    (all-map (x ∷_)
      (all-imp (λ w p → there p)
        (interleavings-ends xs (y ∷ ys) pxs (there pys))))
    (all-map (y ∷_)
      (all-imp (λ w p → there p)
        (interleavings-ends (x ∷ xs) ys (there pxs) pys)))

ends-true-zeros : (m : ℕ) {w : BinWord} → EndsTrue w →
  EndsTrue (zeros m w)
ends-true-zeros zero    p = p
ends-true-zeros (suc m) p = there (ends-true-zeros m p)

ends-true-index : (n : ℕ) (ns : IndexWord) →
  EndsTrue (index-to-word (n ∷ ns))
ends-true-index n []        = ends-true-zeros (n ∸ 1) here
ends-true-index n (m ∷ ms)  =
  ends-true-zeros (n ∸ 1) (there (ends-true-index m ms))

weight-from : (z : ℕ) (w : BinWord) → EndsTrue w →
  weight (word-to-index-from z w) ≡ z + length w
weight-from z (true ∷ []) here =
  trans (+-identityʳ (suc z))
        (sym (trans (+-suc z 0) (cong suc (+-identityʳ z))))
weight-from z (false ∷ w) (there p) =
  trans (weight-from (suc z) w p) (sym (+-suc z (length w)))
weight-from z (true ∷ w) (there p) =
  trans (cong (suc z +_) (weight-from zero w p))
        (sym (+-suc z (length w)))

count-words-keys : {P : IndexWord → Set} (acc : FormalSum)
  (ws : List IndexWord) → AllKeys P acc → All P ws →
  AllKeys P (count-words acc ws)
count-words-keys acc []        hacc []         = hacc
count-words-keys acc (w ∷ ws)  hacc (hw ∷ hws) =
  count-words-keys (add-term w 1 acc) ws
    (add-term-keys w 1 acc hw hacc) hws

shuffle-weight : (x y : ℕ) (xs ys : IndexWord) →
  Positive (x ∷ xs) → Positive (y ∷ ys) →
  AllKeys (λ w → weight w ≡ weight (x ∷ xs) + weight (y ∷ ys))
          (shuffle (x ∷ xs) (y ∷ ys))
shuffle-weight x y xs ys px py =
  count-words-keys [] _ []
    (all-map word-to-index
      (all-imp step
        (all-both
          (interleavings-ends U V (ends-true-index x xs) (ends-true-index y ys))
          (interleavings-length U V))))
  where
  U = index-to-word (x ∷ xs)
  V = index-to-word (y ∷ ys)

  step : (w : BinWord) → EndsTrue w × (length w ≡ length U + length V) →
    weight (word-to-index w) ≡ weight (x ∷ xs) + weight (y ∷ ys)
  step w (e , l) =
    trans (weight-from zero w e)
          (trans l (cong₂ _+_ (length-index-to-word (x ∷ xs) px)
                              (length-index-to-word (y ∷ ys) py)))

------------------------------------------------------------------------
-- Depth of the terms of a stuffle product
------------------------------------------------------------------------
-- The depth of an index word is its length. Each term of `stuffle x y`
-- has depth at most `depth x + depth y`.

depth : IndexWord → ℕ
depth = length

prefix-letter-depth : (m n : ℕ) (xs : FormalSum) →
  AllKeys (λ w → depth w ≤ n) xs →
  AllKeys (λ w → depth w ≤ suc n) (prefix-letter m xs)
prefix-letter-depth m n []              []         = []
prefix-letter-depth m n ((w , c) ∷ xs)  (h ∷ hs)   =
  s≤s h ∷ prefix-letter-depth m n xs hs

stuffle-depth : (x y : IndexWord) →
  AllKeys (λ w → depth w ≤ depth x + depth y) (stuffle x y)
stuffle-depth []       y        = ≤-reflexive refl ∷ []
stuffle-depth (x ∷ xs) []       =
  ≤-reflexive (sym (+-identityʳ (suc (depth xs)))) ∷ []
stuffle-depth (x ∷ xs) (y ∷ ys) =
  add-sum-keys _ _
    (add-sum-keys _ _
      (prefix-letter-depth x _ _ (stuffle-depth xs (y ∷ ys)))
      (keys-map
        (λ w h → ≤-trans h
          (≤-reflexive (cong suc (sym (+-suc (depth xs) (depth ys))))))
        _
        (prefix-letter-depth y _ _ (stuffle-depth (x ∷ xs) ys))))
    (keys-map
      (λ w h → ≤-trans h (s≤s (+-monoʳ-≤ (depth xs) (n≤1+n (depth ys)))))
      _
      (prefix-letter-depth (x + y) _ _ (stuffle-depth xs ys)))

------------------------------------------------------------------------
-- Depth projection and the depth-5 double shuffle relation
------------------------------------------------------------------------
-- The depth-5 double shuffle relation of a pair `(a , b)` is the
-- difference of the depth-5 parts of `shuffle a b` and `stuffle a b`.
-- It has integer coefficients and is recorded as an association list
-- without zero coefficients.

project-depth : ℕ → FormalSum → FormalSum
project-depth r []              = []
project-depth r ((w , c) ∷ xs) with depth w ≡ᵇ r
... | true  = (w , c) ∷ project-depth r xs
... | false = project-depth r xs

coeff : IndexWord → FormalSum → ℕ
coeff w []              = 0
coeff w ((v , c) ∷ xs) with word-eq w v
... | true  = c
... | false = coeff w xs

has-key : IndexWord → FormalSum → Bool
has-key w []              = false
has-key w ((v , c) ∷ xs) with word-eq w v
... | true  = true
... | false = has-key w xs

Relation : Set
Relation = List (IndexWord × ℤ)

is-zero : ℤ → Bool
is-zero z = ∣ z ∣ ≡ᵇ 0

drop-zero-terms : Relation → Relation
drop-zero-terms []              = []
drop-zero-terms ((w , c) ∷ xs) with is-zero c
... | true  = drop-zero-terms xs
... | false = (w , c) ∷ drop-zero-terms xs

-- `difference xs ys` subtracts `ys` from `xs`: the terms of `xs` come
-- first, followed by the terms of `ys` that do not occur in `xs`.

left-part : FormalSum → FormalSum → Relation
left-part []              ys = []
left-part ((w , c) ∷ xs)  ys = (w , c ⊖ coeff w ys) ∷ left-part xs ys

right-only : FormalSum → FormalSum → Relation
right-only xs []              = []
right-only xs ((w , d) ∷ ys) with has-key w xs
... | true  = right-only xs ys
... | false = (w , - (pos d)) ∷ right-only xs ys

difference : FormalSum → FormalSum → Relation
difference xs ys = drop-zero-terms (left-part xs ys ++ right-only xs ys)

depth5-double-shuffle : IndexWord → IndexWord → Relation
depth5-double-shuffle a b =
  difference (project-depth 5 (shuffle a b)) (project-depth 5 (stuffle a b))

double-shuffle-sample :
  depth5-double-shuffle (2 ∷ []) (2 ∷ 1 ∷ 1 ∷ 1 ∷ []) ≡
    (2 ∷ 2 ∷ 1 ∷ 1 ∷ 1 ∷ [] , pos 3) ∷
    (3 ∷ 1 ∷ 1 ∷ 1 ∷ 1 ∷ [] , pos 10) ∷
    (2 ∷ 1 ∷ 2 ∷ 1 ∷ 1 ∷ [] , pos 2) ∷
    (2 ∷ 1 ∷ 1 ∷ 2 ∷ 1 ∷ [] , pos 1) ∷ []
double-shuffle-sample = refl

------------------------------------------------------------------------
-- The depth-5 relation matrix at a fixed weight
------------------------------------------------------------------------
-- The columns are indexed by the admissible index words of depth 5 and
-- weight `W`. The rows come from the pairs `(a , b)` of admissible
-- index words with `depth a + depth b = 5` and
-- `weight a + weight b = W`. Row reduction is not carried out here.

depth5-basis : ℕ → List IndexWord
depth5-basis W = admissible-words W 5

pairs : List IndexWord → List IndexWord → List (IndexWord × IndexWord)
pairs as bs = concatMap (λ a → map (λ b → a , b) bs) as

depth5-pairs : ℕ → List (IndexWord × IndexWord)
depth5-pairs W =
  concatMap
    (λ r → concatMap
      (λ Wa → pairs (admissible-words Wa r) (admissible-words (W ∸ Wa) (5 ∸ r)))
      (applyUpTo (2 +_) (W ∸ 2)))
    (applyUpTo suc 4)

nonempty-relations : List Relation → List Relation
nonempty-relations []              = []
nonempty-relations ([] ∷ rs)       = nonempty-relations rs
nonempty-relations ((t ∷ ts) ∷ rs) = (t ∷ ts) ∷ nonempty-relations rs

depth5-relations : ℕ → List Relation
depth5-relations W =
  nonempty-relations (map (λ (a , b) → depth5-double-shuffle a b) (depth5-pairs W))

lookup-relation : IndexWord → Relation → ℤ
lookup-relation w []              = pos 0
lookup-relation w ((v , c) ∷ xs) with word-eq w v
... | true  = c
... | false = lookup-relation w xs

relation-row : List IndexWord → Relation → List ℤ
relation-row basis rel = map (λ w → lookup-relation w rel) basis

nonzero-row : List ℤ → Bool
nonzero-row []       = false
nonzero-row (c ∷ cs) with is-zero c
... | true  = nonzero-row cs
... | false = true

nonzero-rows : List (List ℤ) → List (List ℤ)
nonzero-rows []        = []
nonzero-rows (r ∷ rs) with nonzero-row r
... | true  = r ∷ nonzero-rows rs
... | false = nonzero-rows rs

relation-matrix : ℕ → List (List ℤ)
relation-matrix W =
  nonzero-rows (map (relation-row (depth5-basis W)) (depth5-relations W))

-- Each quadruple is (weight, columns, relations, rows).

relation-matrix-sizes : List (ℕ × ℕ × ℕ × ℕ)
relation-matrix-sizes =
  (7 , 5 , 4 , 4) ∷ (8 , 15 , 20 , 20) ∷ (9 , 35 , 60 , 60) ∷ []

relation-matrix-sizes-agree :
  All (λ (W , c , n , r) →
         length (depth5-basis W) ≡ c
       × length (depth5-relations W) ≡ n
       × length (relation-matrix W) ≡ r)
      relation-matrix-sizes
relation-matrix-sizes-agree =
  (refl , refl , refl) ∷ (refl , refl , refl) ∷ (refl , refl , refl) ∷ []

relation-matrix-7 :
  relation-matrix 7 ≡
    (pos 0 ∷ pos 1 ∷ pos 2 ∷ pos 3 ∷ pos 10 ∷ []) ∷
    (pos 0 ∷ pos 0 ∷ pos 1 ∷ pos 4 ∷ pos 20 ∷ []) ∷
    (pos 0 ∷ pos 0 ∷ pos 1 ∷ pos 4 ∷ pos 20 ∷ []) ∷
    (pos 0 ∷ pos 1 ∷ pos 2 ∷ pos 3 ∷ pos 10 ∷ []) ∷ []
relation-matrix-7 = refl

------------------------------------------------------------------------
-- Weight and depth are constant on the depth-5 basis
------------------------------------------------------------------------
-- The pair (weight, depth) does not distinguish any two words of
-- `depth5-basis W`. For two such words `a` and `b`, a separation by
-- `coarse-signature` and a finer invariant `S` therefore amounts to
-- `¬ (S a ≡ S b)`, in the sense of `Separates` above.

all-upTo : {Q : IndexWord → Set} (g : ℕ → List IndexWord) (f : ℕ → ℕ)
  (n : ℕ) → (∀ i → suc i ≤ n → All Q (g (f i))) →
  All Q (concatMap g (applyUpTo f n))
all-upTo g f zero    h = []
all-upTo g f (suc n) h =
  all-++ (h zero (s≤s z≤n))
         (all-upTo g (λ i → f (suc i)) n (λ i lt → h (suc i) (s≤s lt)))

compositions-suc : (n k : ℕ) →
  compositions n (suc k) ≡
    concatMap (λ a → map (a ∷_) (compositions (n ∸ a) k)) (applyUpTo suc n)
compositions-suc zero    k = refl
compositions-suc (suc n) k = refl

compositions-signature : (n k : ℕ) →
  All (λ a → weight a ≡ n × depth a ≡ k) (compositions n k)
compositions-signature zero    zero    = (refl , refl) ∷ []
compositions-signature (suc n) zero    = []
compositions-signature n       (suc k)
  rewrite compositions-suc n k =
  all-upTo (λ a → map (a ∷_) (compositions (n ∸ a) k)) suc n step
  where
  step : ∀ i → suc i ≤ n →
    All (λ a → weight a ≡ n × depth a ≡ suc k)
        (map (suc i ∷_) (compositions (n ∸ suc i) k))
  step i lt =
    all-map (suc i ∷_)
      (all-imp
        (λ w (hw , hd) →
          trans (cong (suc i +_) hw) (m+[n∸m]≡n lt) , cong suc hd)
        (compositions-signature (n ∸ suc i) k))

all-filter : {P : IndexWord → Set} (p : IndexWord → Bool)
  {ws : List IndexWord} → All P ws → All P (filter-words p ws)
all-filter p []                 = []
all-filter p {w ∷ ws} (h ∷ hs) with p w
... | true  = h ∷ all-filter p hs
... | false = all-filter p hs

coarse-signature : IndexWord → ℕ × ℕ
coarse-signature a = weight a , depth a

depth5-basis-signature : (W : ℕ) →
  All (λ a → coarse-signature a ≡ (W , 5)) (depth5-basis W)
depth5-basis-signature W =
  all-imp (λ a (hw , hd) → cong₂ _,_ hw hd)
    (all-filter admissible (compositions-signature W 5))