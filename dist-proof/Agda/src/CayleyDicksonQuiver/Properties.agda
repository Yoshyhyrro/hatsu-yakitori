module CayleyDicksonQuiver.Properties where

open import CayleyDicksonQuiver
open import Data.Empty using (⊥-elim)
open import Data.Fin using (Fin)
open import Data.List using (List; []; _∷_; length; _++_)
open import Data.List.Properties using (length-++)
-- `z≤n` is a constructor of the `_≤_` datatype, defined in
-- `Data.Nat.Base` and re-exported by `Data.Nat`; it is not part of
-- `Data.Nat.Properties`.
open import Data.Nat
  using (ℕ; _<_; _≤_; _≥_; _>_; _+_; _∸_; _*_; _^_; suc; zero; z≤n; s≤s)
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
  using (_≡_; refl; sym; trans; cong; subst; module ≡-Reasoning)
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

-- TODO: Fill in the proofs.
zd-in-bounds : ∀ (zd : ZeroDivisor) →
  proj₁ (ZeroDivisor-pair zd) < ZeroDivisor-dim zd ×
  proj₂ (ZeroDivisor-pair zd) < ZeroDivisor-dim zd
zd-in-bounds = {!!}

zd-kernel-positive : ∀ (zd : ZeroDivisor) →
  ZeroDivisor-kernel-dim zd > 0
zd-kernel-positive = {!!}

-- With indexed arrows there is only one choice of source/target,
-- so the source/target equality arguments are no longer needed.
associator-determines-equiv : ∀ {v1 v2} (a1 a2 : Arrow v1 v2) →
  ZeroDivisor-associator-type (Arrow.zero-div a1) ≡
  ZeroDivisor-associator-type (Arrow.zero-div a2) →
  PathEquiv (extend-path a1 empty-path) (extend-path a2 empty-path)
associator-determines-equiv a1 a2 type-eq = {!!}

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

max-path-length : (q : Quiver) (start : Vertex) →
  Quiver-longest-path-length q ≤ Vertex.kernel-dim start
max-path-length q start = {!!}

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
equiv-congruence eq1 eq2 = {!!}

------------------------------------------------------------------------
-- Section 6: Cayley-Dickson Specific Lemmas
------------------------------------------------------------------------

postulate
  dim : ℕ → Set
  dim-to-ℕ : ∀ {k} → dim k → ℕ

dim-doubling : ∀ (k : ℕ) (d-k : dim k) (d-sk : dim (suc k)) →
  dim-to-ℕ d-sk ≡ 2 * dim-to-ℕ d-k
dim-doubling k d-k d-sk = {!!}

zd-count-exponential : ∀ (k : ℕ) → {!!}
zd-count-exponential k = {!!}

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

LinearMap : Set
LinearMap = ℕ → ℕ

apply-map : LinearMap → ℕ → ℕ
apply-map f x = f x

compose : LinearMap → LinearMap → LinearMap
compose f g x = f (g x)

postulate
  get-linear-map : Pair → LinearMap

record HasGeneralizedInverse (p : Pair) : Set where
  constructor mkGenInv
  field
    pseudo-inv : LinearMap
    property   : compose (get-linear-map p) (compose pseudo-inv (get-linear-map p))
                   ≡ get-linear-map p

-- Asserted as an axiom: the pseudo-inverse law is not definitionally
-- true, so it cannot be discharged by refl.
postulate
  zero-divisor-has-gen-inv : ∀ (p : Pair) → HasGeneralizedInverse p

record InImage (p : Pair) (v : ℕ) : Set where
  constructor in-im
  field
    preimage : ℕ
    witness  : apply-map (get-linear-map p) preimage ≡ v

restricted-division-unique : ∀ {p} {v : ℕ} →
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
path-inverse-contravariance p1 p2 vp = {!!}

quantized-kernel-drop : ∀ {v1 v2} (a : Arrow v1 v2) →
  Σ ℕ (λ k → Vertex.kernel-dim v1 ∸ Vertex.kernel-dim v2 ≡ 2 ^ k)
quantized-kernel-drop a = {!!}

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
data IsSurjective (f : LinearMap) : Set where
  surj-witness : ∀ (w : ℕ) → Σ ℕ (λ v → apply-map f v ≡ w) → IsSurjective f

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