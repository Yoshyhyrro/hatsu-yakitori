module CayleyDicksonQuiver.Properties where

open import CayleyDicksonQuiver
open import CayleyDicksonQuiver.Hypotheses using (CD; mul; add; zeroCD)
open import Data.Bool using (if_then_else_)
open import Data.Empty using (⊥-elim)
open import Data.Fin using (Fin; toℕ) renaming (zero to fzero; suc to fsuc)
open import Data.Integer using (+_)
open import Data.List using (List; []; _∷_; length; _++_)
open import Data.List.Properties using (length-++)
-- `z≤n` is a constructor of the `_≤_` datatype, defined in
-- `Data.Nat.Base` and re-exported by `Data.Nat`; it is not part of
-- `Data.Nat.Properties`.
open import Data.Nat
  using (ℕ; _<_; _≤_; _≥_; _>_; _+_; _∸_; _*_; _^_; _<ᵇ_; suc; zero; z≤n; s≤s)
-- `≤⇒≯` replaces the non-existent `¬-<⇒≥` (not present in stdlib v2.1).
-- Its type, `m ≤ n → ¬ (m > n)`, matches the call site in
-- `no-ascending-path` below exactly.
open import Data.Nat.Properties
  using (≤-trans; ≤⇒≯; ≤-refl; <⇒≤; <-irrefl; ≤-<-trans;
         m∸n≤m; ∸-monoʳ-≤; m≤m+n)
open import Data.Product using (_×_; _,_; proj₁; proj₂; Σ)
open import Data.Sum using (_⊎_; inj₁; inj₂)
-- `begin_`, `_≡⟨_⟩_` and `_∎` live in the `≡-Reasoning` submodule and
-- are not exported at the top level; they are opened locally at the
-- single site that uses them (see `restricted-division-unique`).
open import Relation.Binary.PropositionalEquality
  using (_≡_; refl; sym; trans; cong; cong₂; subst; module ≡-Reasoning)
-- Qualified: `<-irrefl` and friends clash with the `Data.Nat.Properties` names above.
import Data.Fin.Properties as FinP
open import Relation.Nullary using (¬_)

------------------------------------------------------------------------
-- Helper functions for length
------------------------------------------------------------------------

-- Length of a path.
length-of-path : ∀ {v1 v2} → Path v1 v2 → ℕ
length-of-path empty-path = 0
length-of-path (extend-path _ p) = suc (length-of-path p)

------------------------------------------------------------------------
-- Section 1: Path Basic Properties
------------------------------------------------------------------------

-- Empty path is left identity for path multiplication.
path-left-identity : ∀ {v1 v2} (p : Path v1 v2) → path-multiply empty-path p ≡ p
path-left-identity empty-path = refl
path-left-identity (extend-path a p) = refl

-- Empty path is right identity for path multiplication.
path-right-identity : ∀ {v1 v2} (p : Path v1 v2) → path-multiply p empty-path ≡ p
path-right-identity empty-path = refl
path-right-identity (extend-path a p) = cong (extend-path a) (path-right-identity p)

-- Path multiplication is associative.
path-assoc : ∀ {v1 v2 v3 v4} (p1 : Path v1 v2) (p2 : Path v2 v3) (p3 : Path v3 v4) →
  path-multiply (path-multiply p1 p2) p3 ≡ path-multiply p1 (path-multiply p2 p3)
path-assoc empty-path p2 p3 = refl
path-assoc (extend-path a p1) p2 p3 = cong (extend-path a) (path-assoc p1 p2 p3)

-- Path length is additive under multiplication.
path-length-multiply : ∀ {v1 v2 v3} (p1 : Path v1 v2) (p2 : Path v2 v3) →
  length-of-path (path-multiply p1 p2) ≡ length-of-path p1 + length-of-path p2
path-length-multiply empty-path p2 = refl
path-length-multiply (extend-path a p1) p2 = cong suc (path-length-multiply p1 p2)

------------------------------------------------------------------------
-- Section 2: Kernel Dimension Monotonicity
------------------------------------------------------------------------

-- Each arrow strictly decreases kernel dimension.
arrow-decreases-kernel : ∀ {v1 v2} (a : Arrow v1 v2) →
  Vertex.kernel-dim v2 < Vertex.kernel-dim v1
arrow-decreases-kernel (mkArrow _ (decreases gt _)) = gt

-- Path length is bounded by the initial kernel dimension.
path-length-bounded : ∀ {v1 v2} (p : Path v1 v2) →
  length-of-path p ≤ Vertex.kernel-dim v1
path-length-bounded empty-path = z≤n
path-length-bounded (extend-path a p) =
  let ih  = path-length-bounded p             -- length-of-path p ≤ kernel-dim vm
      dec = arrow-decreases-kernel a           -- kernel-dim vm < kernel-dim v1
  in ≤-trans (s≤s ih) dec

-- The kernel dimension never increases along a path (weak form; used
-- below to chain past the intermediate vertex reached by `a`).
path-nonincreasing : ∀ {v1 v2} (p : Path v1 v2) →
  Vertex.kernel-dim v2 ≤ Vertex.kernel-dim v1
path-nonincreasing empty-path = ≤-refl
path-nonincreasing (extend-path a p) =
  ≤-trans (path-nonincreasing p) (<⇒≤ (arrow-decreases-kernel a))

-- Kernel dimension decreases along a non-empty path;
-- an empty path leaves it unchanged.
path-decreases-kernel : ∀ {v1 v2} (p : Path v1 v2) →
  (Vertex.kernel-dim v2 < Vertex.kernel-dim v1) ⊎ (length-of-path p ≡ 0)
path-decreases-kernel empty-path = inj₂ refl
path-decreases-kernel (extend-path a p) =
  inj₁ (≤-<-trans (path-nonincreasing p) (arrow-decreases-kernel a))

-- No path from a lower (or equal) to a higher kernel dimension.
no-ascending-path : ∀ {v1 v2} (p : Path v1 v2) →
  Vertex.kernel-dim v1 ≤ Vertex.kernel-dim v2 → length-of-path p ≡ 0
no-ascending-path empty-path _ = refl
no-ascending-path (extend-path a p) le
  with path-decreases-kernel (extend-path a p)
... | inj₁ lt = ⊥-elim (≤⇒≯ le lt)
... | inj₂ eq = eq

------------------------------------------------------------------------
-- Section 3: Zero Divisor Properties
------------------------------------------------------------------------

record ZeroDivisor : Set where
  constructor mkZeroDivisor
  field
    pair       : Pair
    dim        : ℕ
    kernel-dim : ℕ
    idx1       : ℕ
    idx2       : ℕ

ZeroDivisor-pair : ZeroDivisor → Pair
ZeroDivisor-pair = ZeroDivisor.pair

ZeroDivisor-dim : ZeroDivisor → ℕ
ZeroDivisor-dim = ZeroDivisor.dim

ZeroDivisor-kernel-dim : ZeroDivisor → ℕ
ZeroDivisor-kernel-dim = ZeroDivisor.kernel-dim

postulate
  ZeroDivisor-associator-type : Pair → AssociatorType

-- `zd-in-bounds` and `zd-kernel-positive` were stated for *every* `ZeroDivisor`,
-- but the record carries no invariant tying `pair`, `dim` and `kernel-dim`
-- together, so both statements are false.  A single counterexample refutes both.
zd-example : ZeroDivisor
zd-example = mkZeroDivisor (0 , 0) 0 0 0 0

zd-in-bounds-false : ¬ (∀ (zd : ZeroDivisor) →
  proj₁ (ZeroDivisor-pair zd) < ZeroDivisor-dim zd ×
  proj₂ (ZeroDivisor-pair zd) < ZeroDivisor-dim zd)
zd-in-bounds-false h = ⊥-elim (<-irrefl refl (proj₁ (h zd-example)))

zd-kernel-positive-false : ¬ (∀ (zd : ZeroDivisor) →
  ZeroDivisor-kernel-dim zd > 0)
zd-kernel-positive-false h = ⊥-elim (<-irrefl refl (h zd-example))

-- What can be proved is the statement with the invariant as a hypothesis.
-- (For the concrete seeds `e_i + e_j` of `get-linear-map` the invariant does
-- hold exactly when `1 ≤ i ≤ 7`, `8 ≤ j ≤ 15`, `j ≠ i + 8`: 42 pairs, each
-- with a kernel of dimension 4, computed over ℚ outside Agda.)
record WellFormed (zd : ZeroDivisor) : Set where
  field
    in-bounds       : proj₁ (ZeroDivisor-pair zd) < ZeroDivisor-dim zd ×
                      proj₂ (ZeroDivisor-pair zd) < ZeroDivisor-dim zd
    kernel-positive : ZeroDivisor-kernel-dim zd > 0

zd-in-bounds : ∀ (zd : ZeroDivisor) → WellFormed zd →
  proj₁ (ZeroDivisor-pair zd) < ZeroDivisor-dim zd ×
  proj₂ (ZeroDivisor-pair zd) < ZeroDivisor-dim zd
zd-in-bounds zd wf = WellFormed.in-bounds wf

zd-kernel-positive : ∀ (zd : ZeroDivisor) → WellFormed zd →
  ZeroDivisor-kernel-dim zd > 0
zd-kernel-positive zd wf = WellFormed.kernel-positive wf

-- `PathEquiv` has only the constructors `equiv-refl`, `equiv-sym` and
-- `equiv-trans` and no generating relation, so it is propositional equality
-- in disguise.
equiv⇒≡ : ∀ {v1 v2} {p q : Path v1 v2} → PathEquiv p q → p ≡ q
equiv⇒≡ equiv-refl          = refl
equiv⇒≡ (equiv-sym e)       = sym (equiv⇒≡ e)
equiv⇒≡ (equiv-trans e1 e2) = trans (equiv⇒≡ e1) (equiv⇒≡ e2)

≡⇒equiv : ∀ {v1 v2} {p q : Path v1 v2} → p ≡ q → PathEquiv p q
≡⇒equiv refl = equiv-refl

-- Arrows are determined by their zero-divisor pair (the proof of `shrink`
-- is unique, but is not even needed here): equal single-arrow paths have
-- equal pairs.
single-arrow-pair : ∀ {v1 v2} (a1 a2 : Arrow v1 v2) →
  extend-path a1 empty-path ≡ extend-path a2 empty-path →
  Arrow.zero-div a1 ≡ Arrow.zero-div a2
single-arrow-pair a1 .a1 refl = refl

-- With indexed arrows there is only one choice of source/target,
-- so the source/target equality arguments are no longer needed.
--
-- This statement CANNOT hold, whatever `ZeroDivisor-associator-type` is.
-- Between two fixed vertices an arrow is determined by an arbitrary pair of
-- naturals, while `AssociatorType` has four values; with `PathEquiv` being
-- equality, the statement would make the type injective on pairs, which the
-- pigeonhole principle forbids.  Hence a refutation instead of a proof;
-- the lemma becomes true only with an extra relation constructor in
-- `PathEquiv` (arrows of equal type identified), or as `single-arrow-pair`.
assoc-code : AssociatorType → Fin 4
assoc-code type-A = fzero
assoc-code type-B = fsuc fzero
assoc-code type-C = fsuc (fsuc fzero)
assoc-code type-X = fsuc (fsuc (fsuc fzero))

assoc-code-injective : ∀ {a b} → assoc-code a ≡ assoc-code b → a ≡ b
assoc-code-injective {type-A} {type-A} _ = refl
assoc-code-injective {type-B} {type-B} _ = refl
assoc-code-injective {type-C} {type-C} _ = refl
assoc-code-injective {type-X} {type-X} _ = refl
assoc-code-injective {type-A} {type-B} ()
assoc-code-injective {type-A} {type-C} ()
assoc-code-injective {type-A} {type-X} ()
assoc-code-injective {type-B} {type-A} ()
assoc-code-injective {type-B} {type-C} ()
assoc-code-injective {type-B} {type-X} ()
assoc-code-injective {type-C} {type-A} ()
assoc-code-injective {type-C} {type-B} ()
assoc-code-injective {type-C} {type-X} ()
assoc-code-injective {type-X} {type-A} ()
assoc-code-injective {type-X} {type-B} ()
assoc-code-injective {type-X} {type-C} ()

-- two vertices joined by an arrow for every pair
vtx-2 vtx-1 : Vertex
vtx-2 = mkVertex 2 []
vtx-1 = mkVertex 1 []

arrow-at : Pair → Arrow vtx-2 vtx-1
arrow-at p = mkArrow p (decreases (s≤s (s≤s z≤n)) (s≤s z≤n))

pair-at : Fin 5 → Pair
pair-at i = 0 , toℕ i

associator-determines-equiv-false :
  ¬ (∀ (a1 a2 : Arrow vtx-2 vtx-1) →
       ZeroDivisor-associator-type (Arrow.zero-div a1) ≡
       ZeroDivisor-associator-type (Arrow.zero-div a2) →
       PathEquiv (extend-path a1 empty-path) (extend-path a2 empty-path))
associator-determines-equiv-false h
  with FinP.pigeonhole (s≤s (s≤s (s≤s (s≤s (s≤s z≤n)))))
         (λ i → assoc-code (ZeroDivisor-associator-type (pair-at i)))
... | i , j , i<j , same =
  let types-equal = assoc-code-injective same
      paths-equal = equiv⇒≡ (h (arrow-at (pair-at i)) (arrow-at (pair-at j)) types-equal)
      pairs-equal = single-arrow-pair (arrow-at (pair-at i)) (arrow-at (pair-at j)) paths-equal
      toℕ-equal   = cong proj₂ pairs-equal
  in FinP.<-irrefl (FinP.toℕ-injective toℕ-equal) i<j

------------------------------------------------------------------------
-- Section 4: Quiver Finiteness
------------------------------------------------------------------------

postulate
  Quiver-longest-path-length : Quiver → ℕ

-- The number of reachable vertices is bounded by the initial kernel
-- dimension.  (Stub: a full proof requires reachability and distinctness
-- of kernel dimensions.)
vertices-bounded : (q : Quiver) (start : Vertex) →
  length (Quiver.vertices q) ≤ suc (Vertex.kernel-dim start)
vertices-bounded q start = length-reachable-vertices-bounded-by-depth q start
  where
  postulate
    length-reachable-vertices-bounded-by-depth :
      (q : Quiver) (start : Vertex) →
      length (Quiver.vertices q) ≤ suc (Vertex.kernel-dim start)

-- Open, and as stated not provable from the postulate alone: nothing
-- constrains `Quiver-longest-path-length`.  It is also mis-shaped: the bound
-- is by the kernel dimension of an ARBITRARY `start`, not of the source of
-- the path.  For any interpretation `L` that sees a quiver with an arrow
-- (`1 ≤ L q`), taking `start` with kernel dimension 0 refutes it.
max-path-length : (q : Quiver) (start : Vertex) →
  Quiver-longest-path-length q ≤ Vertex.kernel-dim start
max-path-length q start = {!!}

quiver-with-arrow : Quiver
quiver-with-arrow = record
  { vertices = vtx-2 ∷ vtx-1 ∷ []
  ; arrows   = ((vtx-2 , vtx-1) , arrow-at (0 , 0)) ∷ [] }

max-path-length-shape-false : (L : Quiver → ℕ) → 1 ≤ L quiver-with-arrow →
  ¬ (∀ (q : Quiver) (start : Vertex) → L q ≤ Vertex.kernel-dim start)
max-path-length-shape-false L pos h = ⊥-elim (≤⇒≯ (h quiver-with-arrow (mkVertex 0 [])) pos)

-- There are no non-trivial cycles: every path from a vertex to itself
-- is empty.  A non-empty path would force a strict decrease of the
-- vertex's own kernel dimension, which is impossible.
quiver-acyclic : ∀ {v} (p : Path v v) → length-of-path p ≡ 0
quiver-acyclic empty-path = refl
quiver-acyclic (extend-path a p) =
  ⊥-elim (<-irrefl refl (≤-<-trans (path-nonincreasing p) (arrow-decreases-kernel a)))

------------------------------------------------------------------------
-- Section 5: Path Equivalence Properties
------------------------------------------------------------------------

equiv-reflexive : ∀ {v1 v2} (p : Path v1 v2) → PathEquiv p p
equiv-reflexive p = equiv-refl

equiv-symmetric : ∀ {v1 v2} {p q : Path v1 v2} →
  PathEquiv p q → PathEquiv q p
equiv-symmetric eq = equiv-sym eq

equiv-transitive : ∀ {v1 v2} {p q r : Path v1 v2} →
  PathEquiv p q → PathEquiv q r → PathEquiv p r
equiv-transitive eq1 eq2 = equiv-trans eq1 eq2

equiv-congruence : ∀ {v1 v2 v3} {p1 q1 : Path v1 v2} {p2 q2 : Path v2 v3} →
  PathEquiv p1 q1 → PathEquiv p2 q2 →
  PathEquiv (path-multiply p1 p2) (path-multiply q1 q2)
equiv-congruence eq1 eq2 = ≡⇒equiv (cong₂ path-multiply (equiv⇒≡ eq1) (equiv⇒≡ eq2))

------------------------------------------------------------------------
-- Section 6: Cayley-Dickson Specific Lemmas
------------------------------------------------------------------------

-- `dim k` is the type of level-k coordinate indices, matching
-- `ImageUniverse`'s carrier exactly (Section 11): `Fin (ambient-dim k)`,
-- a type with precisely `ambient-dim k` elements.
dim : ℕ → Set
dim k = Fin (ambient-dim k)

dim-to-ℕ : ∀ {k} → dim k → ℕ
dim-to-ℕ = toℕ

-- NOTE: the original postulated statement here related dim-to-ℕ of two
-- arbitrary, unrelated elements d-k : dim k and d-sk : dim (suc k) --
-- false in general (nothing ties a specific index at level k to a
-- specific index at level k+1). The doubling law is a fact about the
-- *cardinality* of the two types, not about arbitrary chosen elements
-- of them; restated that way, it holds by refl directly from `_^_`'s
-- own defining equation (`n ^ suc m = n * n ^ m`).
dim-doubling : ∀ (k : ℕ) → ambient-dim (suc k) ≡ 2 * ambient-dim k
dim-doubling k = refl

-- OPEN, and without a statement: the type is itself a hole.  Data to choose
-- one from (computed outside Agda, plus-seeds `e_i + e_j`, `i < j`, with a
-- nonzero kernel of `L_{e_i + e_j}`): level 3: 0, level 4: 42, level 5: 294,
-- level 6: 1518.  The kernel dimensions are multiples of 4 (all equal to 4
-- at level 4), and no clean closed form is visible from these four values.
zd-count-exponential : ∀ (k : ℕ) → {!!}
zd-count-exponential k = {!!}

-- OPEN, and without a statement: the type is itself a hole.  It depends on
-- `ZeroDivisor-associator-type`, which is a free postulate, so no statement
-- about the distribution of associator types can be checked yet.
associator-distribution : ∀ (k : ℕ) → {!!}
associator-distribution k = {!!}

------------------------------------------------------------------------
-- Section 7: Computational Lemmas
------------------------------------------------------------------------

-- `compute-kernel-dim` is bounded above by the ambient dimension.
-- (Previously stated as `≤ length pairs`, which was only true of the
-- old `= length` stub; under the real `_∸_`-based definition it is
-- false at `pairs = []`, where `compute-kernel-dim [] ≡ initial-max-dim`.)
compute-kernel-well-defined : ∀ (pairs : List Pair) →
  compute-kernel-dim pairs ≤ initial-max-dim
compute-kernel-well-defined pairs = m∸n≤m initial-max-dim (length pairs)

-- Appending more constraint pairs can only shrink (or preserve) the
-- kernel dimension. Follows from `_∸_` being antitone in its second
-- argument together with `length pairs1 ≤ length (pairs1 ++ pairs2)`.
kernel-monotone : ∀ (pairs1 pairs2 : List Pair) →
  compute-kernel-dim (pairs1 ++ pairs2) ≤ compute-kernel-dim pairs1
kernel-monotone pairs1 pairs2 = ∸-monoʳ-≤ initial-max-dim len1≤len12
  where
  len1≤len12 : length pairs1 ≤ length (pairs1 ++ pairs2)
  len1≤len12 = subst (length pairs1 ≤_) (sym (length-++ pairs1))
                      (m≤m+n (length pairs1) (length pairs2))

------------------------------------------------------------------------
-- Section 8: Restricted Division and Generalized Inverses
------------------------------------------------------------------------

-- The sedenion level is fixed throughout this file via `initial-max-dim`
-- (= 16 = ambient-dim 4); `LinearMap` now operates on that same level's
-- real Cayley-Dickson algebra, `CD 4`, rather than the placeholder `ℕ`.
LinearMap : Set
LinearMap = CD 4 → CD 4

apply-map : LinearMap → CD 4 → CD 4
apply-map f x = f x

compose : LinearMap → LinearMap → LinearMap
compose f g x = f (g x)

-- Dynamically generates the n-th standard basis vector of `CD k` via
-- binary recursive traversal: n < half goes into the left half of the
-- doubling pair, otherwise the right half with the offset removed --
-- exactly the same split `mul`/`add`/`conj` themselves use in
-- `CayleyDicksonQuiver.Hypotheses`. Reuses `ambient-dim` (already
-- defined in `CayleyDicksonQuiver`, computing the same 2^k) rather than
-- redefining it under the name `dim`, which Section 6 already uses for
-- something else (`dim : ℕ → Set`). Out-of-range n (>= ambient-dim k)
-- falls through every remaining split into `zeroCD k`, since it always
-- eventually lands on `basis zero (suc _)`.
--
-- `abstract`: `get-linear-map` and everything it is built from stay
-- opaque outside this block. Nothing downstream (`HasGeneralizedInverse`,
-- `restricted-division-unique`, ...) ever needs to compute a
-- `get-linear-map p` down to a concrete value -- every use is symbolic,
-- through `apply-map`/`compose` -- so opacity costs nothing. Leaving
-- these transparent is what was silently killing `agda src/Everything.agda`
-- in CI (plain "Killed", i.e. OOM): a record field whose type mentions
-- `get-linear-map (i , j)` for abstract `i j : ℕ` forces Agda to
-- eta-expand `mul`'s pair-pattern-matching against `basis`'s
-- `if n <ᵇ ambient-dim k then ... else ...`, and since that `if` cannot
-- resolve for abstract `n`, projections get pushed into *both* branches
-- at every one of `mul`'s 4 recursion levels -- confirmed directly: the
-- identical record compiles in under 5 seconds at ~450MB with this
-- `abstract` block, and is reproducibly killed at ~3.9GB without it
-- (isolated by bisecting the file against the project's actual CI
-- toolchain, Agda 2.8.0 with agda-stdlib 2.3, matching the exact
-- "Killed" failure `agda src/Everything.agda` gave in CI). The same
-- blow-up reproduces from a bare record with a single field of type
-- `compose (get-linear-map (i,j)) (compose (get-linear-map (i,j))
-- (get-linear-map (i,j))) ≡ get-linear-map (i,j)` -- it is specifically
-- a *record* field forcing this, not a same-shaped plain function
-- (`(i j : ℕ) → ...` with the identical right-hand side type-checks
-- instantly).
abstract
  basis : (k : ℕ) → ℕ → CD k
  basis zero    zero    = + 1
  basis zero    (suc _) = + 0
  basis (suc k) n =
    if n <ᵇ ambient-dim k
      then (basis k n , zeroCD k)
      else (zeroCD k , basis k (n ∸ ambient-dim k))

  -- The k-th standard basis vector of `CD 4` (1 at position k, 0
  -- elsewhere). `Pair`'s two `ℕ` components are not otherwise
  -- constrained to be `< 16` anywhere yet (that gap is `zd-in-bounds`,
  -- Section 3, which needs the `WellFormed` hypothesis); `basis` is already total, so `seedVec`
  -- inherits that for free.
  seedVec : ℕ → CD 4
  seedVec = basis 4

  -- `get-linear-map (i , j)` is left multiplication by the seed `e_i +
  -- e_j` -- the concrete zero-divisor candidate `Pair` is meant to name.
  -- No longer a postulate: this is now a real, computable function, built
  -- from the actual Cayley-Dickson multiplication in
  -- `CayleyDicksonQuiver.Hypotheses`.
  get-linear-map : Pair → LinearMap
  get-linear-map (i , j) = mul 4 (add 4 (seedVec i) (seedVec j))

record HasGeneralizedInverse (p : Pair) : Set where
  constructor mkGenInv
  field
    pseudo-inv : LinearMap
    property   : compose (get-linear-map p) (compose pseudo-inv (get-linear-map p))
                   ≡ get-linear-map p

-- Asserted as an axiom: existence of a pseudo-inverse needs a real
-- rank-nullity / Fitting-decomposition argument for `mul 4`, which does
-- not exist in Agda yet (only checked numerically, in Python, for
-- specific seeds so far -- see the accompanying rank-chain
-- experiments). Unlike before, this now postulates a fact about a
-- genuine, concrete function rather than an entirely free one.
postulate
  zero-divisor-has-gen-inv : ∀ (p : Pair) → HasGeneralizedInverse p

record InImage (p : Pair) (v : CD 4) : Set where
  constructor in-im
  field
    preimage : CD 4
    witness  : apply-map (get-linear-map p) preimage ≡ v

restricted-division-unique : ∀ {p} {v : CD 4} →
  InImage p v →
  apply-map (compose (get-linear-map p) (HasGeneralizedInverse.pseudo-inv (zero-divisor-has-gen-inv p))) v ≡ v
restricted-division-unique {p} {v} (in-im u wit) =
  let Lx  = get-linear-map p
      Lx⁺ = HasGeneralizedInverse.pseudo-inv (zero-divisor-has-gen-inv p)
      prop = HasGeneralizedInverse.property (zero-divisor-has-gen-inv p)
  in begin
    apply-map (compose Lx Lx⁺) v
      ≡⟨ cong (apply-map (compose Lx Lx⁺)) (sym wit) ⟩
    apply-map (compose Lx Lx⁺) (apply-map Lx u)
      ≡⟨ cong (λ f → apply-map f u) prop ⟩
    apply-map Lx u
      ≡⟨ wit ⟩
    v
  ∎
  where open ≡-Reasoning

------------------------------------------------------------------------
-- Section 9: Advanced Algebraic Properties
------------------------------------------------------------------------

postulate
  ValidAssociatorPair : ∀ {v1 v2 v3} → Path v1 v2 → Path v2 v3 → Set
  path-pseudo-inv : ∀ {v1 v2} → Path v1 v2 → LinearMap

path-inverse-contravariance : ∀ {v1 v2 v3} (p1 : Path v1 v2) (p2 : Path v2 v3) →
  ValidAssociatorPair p1 p2 →
  path-pseudo-inv (path-multiply p1 p2) ≡ compose (path-pseudo-inv p2) (path-pseudo-inv p1)
-- OPEN: both `ValidAssociatorPair` and `path-pseudo-inv` are free
-- postulates, so neither a proof nor a refutation is possible until they
-- are defined.
path-inverse-contravariance p1 p2 vp = {!!}

-- Not true: an arrow only needs `m > n > 0`, so the drop `m ∸ n` is any positive
-- number.  The drop 4 → 1 is 3, which is not a power of two.  (The concrete
-- kernel dimensions of the seeds `e_i + e_j` are multiples of 4 -- 4, 8, 12,
-- ... -- and 12 already occurs at level 5, so a power-of-two quantisation
-- is not what the data show either.)
pow2-ge4 : ∀ j → 4 ≤ 2 ^ suc (suc j)
pow2-ge4 zero    = ≤-refl
pow2-ge4 (suc j) = ≤-trans (pow2-ge4 j) (m≤m+n (2 ^ suc (suc j)) (2 ^ suc (suc j) + 0))

no-pow2-3 : ∀ k → ¬ (2 ^ k ≡ 3)
no-pow2-3 zero ()
no-pow2-3 (suc zero) ()
no-pow2-3 (suc (suc j)) eq = ≤⇒≯ (subst (4 ≤_) eq (pow2-ge4 j)) (s≤s (s≤s (s≤s (s≤s z≤n))))

quantized-kernel-drop-false :
  ¬ (∀ {v1 v2} (a : Arrow v1 v2) →
       Σ ℕ (λ k → Vertex.kernel-dim v1 ∸ Vertex.kernel-dim v2 ≡ 2 ^ k))
quantized-kernel-drop-false h =
  no-pow2-3 (proj₁ (h a-4-1)) (sym (proj₂ (h a-4-1)))
  where
  a-4-1 : Arrow (mkVertex 4 []) (mkVertex 1 [])
  a-4-1 = mkArrow (0 , 0) (decreases (s≤s (s≤s z≤n)) (s≤s z≤n))

-- TODO: Adapt to indexed arrows.  The original definition assumed an
-- unindexed Arrow : Set, which is no longer available.
postulate
  IsTypeIII-Braid : ∀ {v1 v2} → Arrow v1 v2 → Arrow v1 v2 → Set
  yang-baxter-equiv : ∀ {v1 v2 v3 v4 v5 v6}
                      (a1 : Arrow v1 v2) (a2 : Arrow v2 v3) (a3 : Arrow v3 v4)
                      (a4 : Arrow v4 v5) (a5 : Arrow v5 v6) →
                      Set

------------------------------------------------------------------------
-- Section 10: Hecke Algebra Action on Bounded Paths
------------------------------------------------------------------------

postulate
  PathModule : Vertex → Vertex → Set
  HeckeGenerator : ℕ → Set
  apply-hecke : ∀ {v1 v2 i} → HeckeGenerator i → Path v1 v2 → PathModule v1 v2
  hecke-quadratic-relation : ∀ {v1 v2 i} (T : HeckeGenerator i) (p : Path v1 v2) → Set

------------------------------------------------------------------------
-- Section 11: Inter-Universe Fluctuations
------------------------------------------------------------------------

-- `ImageUniverse k p`: carrier is pinned to `Fin (ambient-dim k)`, a type
-- with exactly `ambient-dim k` (= 2^k) elements, rather than an abstract
-- `Set` -- this is the `dim(carrier(k)) = 2^k` requirement made concrete.
-- `p` does not yet constrain anything about the universe beyond its
-- dimension; it is carried here only so a witness can be selected per
-- zero-divisor pair once that connection is designed.
record ImageUniverse (k : ℕ) (p : Pair) : Set where
  constructor mkImageUniverse
  field
    pseudo-inv-op : Fin (ambient-dim k) → Fin (ambient-dim k)
    identity-law  : ∀ x → pseudo-inv-op (pseudo-inv-op x) ≡ x

-- Fixed: removed the unused `target : Set` parameter which received a ℕ.
-- w, v updated from ℕ to CD 4 to match LinearMap's real domain/codomain
-- (Section 8).
data IsSurjective (f : LinearMap) : Set where
  surj-witness : ∀ (w : CD 4) → Σ (CD 4) (λ v → apply-map f v ≡ w) → IsSurjective f

record Fluctuation (source target : Vertex) : Set where
  constructor mkFluctuation
  field
    arrow           : Arrow source target
    energy          : ℕ
    assoc-type      : AssociatorType
    preserves-image : IsSurjective (get-linear-map (Arrow.zero-div arrow))

------------------------------------------------------------------------
-- Section 12: Discrete Hodge Structure and Bifiltration
------------------------------------------------------------------------

-- `ambient-dim` is defined in `CayleyDicksonQuiver.agda`; `initial-max-dim`
-- (the sedenion special case, k=4) remains as-is, still governing the
-- fixed-level `compute-kernel-dim` used in Sections 1-10.

record WeightFiltration (k : ℕ) (v : Vertex) : Set where
  constructor mkWeight
  field
    weight : ℕ
    bound  : weight ≤ ambient-dim k

-- NOTE: `k` does not yet constrain `image-dim`/`kernel-dim`/`total-dim`
-- here (unlike `WeightFiltration`, whose bound now genuinely depends on
-- k). Carried for uniform indexing with `WeightFiltration`; tighten with
-- an `ambient-dim k` bound on `total-dim` if/when that invariant is
-- wanted.
record HodgeFiltration (k : ℕ) (v : Vertex) : Set where
  constructor mkHodge
  field
    image-dim  : ℕ
    kernel-dim : ℕ
    total-dim  : ℕ
    dim-sum    : image-dim + kernel-dim ≡ total-dim

record Bifiltration (k : ℕ) (v : Vertex) : Set where
  constructor mkBifiltration
  field
    W : WeightFiltration k v
    F : HodgeFiltration k v

record Displacement (v1 v2 : Vertex) : Set where
  constructor mkDisplacement
  field
    arrow          : Arrow v1 v2
    transversality : Vertex.kernel-dim v2 < Vertex.kernel-dim v1

quiver-satisfies-transversality : ∀ {v1 v2} (a : Arrow v1 v2) →
  Displacement v1 v2
quiver-satisfies-transversality a = mkDisplacement a (arrow-decreases-kernel a)

------------------------------------------------------------------------
-- Section 13: The Carabiner Tower
------------------------------------------------------------------------

-- CT_k := (Q_k, {ImageUniverse_k(p)}_{p in Pair}, {Bifiltration_k(v)}_{v in Vertex}):
-- the level-k quiver together with a level-k ImageUniverse witness for
-- every zero-divisor pair and a level-k Bifiltration witness for every
-- vertex. `quiver` plays the role of Q_k once a particular Quiver value
-- is supplied for this k.
--
-- Named after `Carabiner` in `dist-proof/lean4/HatsuYakitori/Carabiner.lean`:
-- there, a carabiner is the rigid structural bundle at a fixed height on
-- the Berkovich tree, and a route is a sequence of carabiners across
-- heights. Here, a `CarabinerTower k` is that same idea of "the rigid
-- bundle at a fixed level" applied to the Cayley-Dickson tower, with `k`
-- playing the role of height/level.
record CarabinerTower (k : ℕ) : Set where
  constructor mkCarabinerTower
  field
    quiver          : Quiver
    image-universes : (p : Pair) → ImageUniverse k p
    bifiltrations   : (v : Vertex) → Bifiltration k v