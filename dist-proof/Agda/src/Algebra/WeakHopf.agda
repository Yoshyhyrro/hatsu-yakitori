-- Algebra.WeakHopf
--
-- General-purpose (weak) algebra / coalgebra / bialgebra / weak Hopf
-- algebra structures, independent of any specific instance. This file
-- knows nothing about Cayley-Dickson algebras, `CD`, `Fin`, or
-- `ambient-dim` -- instances (e.g. "CD k is a weak Hopf algebra") are
-- expected to live in their own bridge module (e.g.
-- `CayleyDicksonQuiver.HopfStructure`) that imports both this file and
-- `CayleyDicksonQuiver`.
--
-- Axioms follow Böhm, Nill and Szlachányi's definition of a weak Hopf
-- algebra, as stated (with full proof-checked detail) in:
--   Tang, J.; Chen, Q. "Weak Hopf Algebra Structures on Hybrid
--   Numbers." Symmetry 2025, 17(6), 828.
-- which gives the six-tuple (H, m, 1, Delta, epsilon, S) axioms (1)-(4)
-- referenced by number in the comments below.
--
-- Simplification made here, stated explicitly: the tensor product H (x)
-- H is modeled as the plain product `Carrier x Carrier`, i.e. `Delta`
-- is a single Carrier-valued pair rather than a genuine sum of simple
-- tensors (Sweedler notation with a real summation). This is exactly
-- right for "grouplike" coalgebras (Delta x = (x , x) on basis/group
-- elements, as in a group algebra) -- which is precisely the case our
-- Cayley-Dickson basis elements need (see the accompanying Python
-- experiment) -- but does not yet model the fully general linear
-- extension of Delta to arbitrary sums of basis elements. That is a
-- deliberate scope boundary, not an oversight: extending this to
-- genuine linear combinations would need an actual module/vector-space
-- formalization on top of `Carrier`, which is future work.
--
-- Likewise `epsilon` is taken to land back in `Carrier` itself (the
-- scalar embedded via the algebra unit), rather than in a separate base
-- ring/field type, so that products of epsilon-values are just `_∙_` in
-- `Carrier` -- again a deliberate simplification for a first version.
module Algebra.WeakHopf where

open import Data.Product using (_×_; _,_)
open import Relation.Binary.PropositionalEquality using (_≡_)

------------------------------------------------------------------------
-- Raw structures
------------------------------------------------------------------------

record RawAlgebra : Set₁ where
  constructor mkRawAlgebra
  infixl 7 _∙_
  field
    Carrier : Set
    _∙_     : Carrier → Carrier → Carrier  -- multiplication m
    e       : Carrier                      -- unit 1

record RawCoalgebra (Carrier : Set) : Set where
  constructor mkRawCoalgebra
  field
    Δ : Carrier → Carrier × Carrier         -- comultiplication
    ε : Carrier → Carrier                   -- counit (lands in Carrier;
                                             -- see header note)

------------------------------------------------------------------------
-- Ordinary algebra laws
------------------------------------------------------------------------

record IsAlgebra (A : RawAlgebra) : Set where
  open RawAlgebra A
  field
    assoc   : ∀ x y z → (x ∙ y) ∙ z ≡ x ∙ (y ∙ z)
    identityˡ : ∀ x → e ∙ x ≡ x
    identityʳ : ∀ x → x ∙ e ≡ x

------------------------------------------------------------------------
-- Ordinary coalgebra laws (coassociativity, counit)
------------------------------------------------------------------------
-- Stated by flattening both sides of the coassociativity square into a
-- single `Carrier × (Carrier × Carrier)` triple and comparing directly,
-- rather than via a separate reassociation isomorphism -- see
-- `CayleyDicksonQuiver.Properties`'s own coassociativity-shaped lemmas
-- for the same flattening idiom.

record IsCoalgebra (A : RawAlgebra) (C : RawCoalgebra (RawAlgebra.Carrier A))
       : Set where
  open RawAlgebra A
  open RawCoalgebra C
  field
    coassoc : ∀ x →
      let (a , b)   = Δ x
          (a1 , a2) = Δ a
          (b1 , b2) = Δ b
      in (a1 , a2 , b) ≡ (a , b1 , b2)

    counitˡ : ∀ x → let (a , b) = Δ x in (ε a) ∙ b ≡ x
    counitʳ : ∀ x → let (a , b) = Δ x in a ∙ (ε b) ≡ x

------------------------------------------------------------------------
-- Weak bialgebra: algebra + coalgebra + axioms (1), (2), (3)
------------------------------------------------------------------------

record IsWeakBialgebra (A : RawAlgebra) (C : RawCoalgebra (RawAlgebra.Carrier A))
       : Set where
  open RawAlgebra A
  open RawCoalgebra C
  field
    isAlgebra   : IsAlgebra A
    isCoalgebra : IsCoalgebra A C

    -- (1) Δ is multiplicative: Δ(kh) = Δ(k)Δ(h).
    -- (H (x) H is again a product algebra, multiplied componentwise.)
    Δ-mult : ∀ k h →
      let (k1 , k2) = Δ k
          (h1 , h2) = Δ h
          (p1 , p2) = Δ (k ∙ h)
      in (p1 , p2) ≡ (k1 ∙ h1 , k2 ∙ h2)

    -- (2) weak multiplicativity of ε:
    --     ε(k h_(1)) ε(h_(2) g) = ε(khg) = ε(k h_(2)) ε(h_(1) g).
    ε-weak-mult : ∀ k h g →
      let (h1 , h2) = Δ h
      in (ε (k ∙ h1) ∙ ε (h2 ∙ g) ≡ ε (k ∙ h ∙ g))
       × (ε (k ∙ h ∙ g) ≡ ε (k ∙ h2) ∙ ε (h1 ∙ g))

    -- (3) weak comultiplicativity of the unit:
    --     (1 (x) Δ(1))(Δ(1) (x) 1) = Δ²(1) = (Δ(1) (x) 1)(1 (x) Δ(1)).
    -- Δ²(1) is read as (Δ ⊗ id)Δ(1), i.e. decomposing the first leg of
    -- Δ(1) again; both sides of the defining equation reduce (using the
    -- algebra unit laws) to flat triples, compared directly as in
    -- `coassoc` above.
    Δ-unit-weak : let (e1 , e2)   = Δ e
                      (e11 , e12) = Δ e1
                  in ((e1 , e1 ∙ e2 , e2) ≡ (e11 , e12 , e2))
                   × ((e11 , e12 , e2) ≡ (e1 , e2 ∙ e1 , e2))

  -- Target and source counital maps, needed to state the weak antipode
  -- axioms (4): ε_t(h) = ε(1_(1) h) · 1_(2),  ε_s(h) = ε(h 1_(2)) · 1_(1).
  εₜ : Carrier → Carrier
  εₜ h = let (e1 , e2) = Δ e in ε (e1 ∙ h) ∙ e2

  εₛ : Carrier → Carrier
  εₛ h = let (e1 , e2) = Δ e in ε (h ∙ e2) ∙ e1

------------------------------------------------------------------------
-- Weak Hopf algebra: weak bialgebra + weak antipode, axiom (4)
------------------------------------------------------------------------

record IsWeakHopfAlgebra
       (A : RawAlgebra) (C : RawCoalgebra (RawAlgebra.Carrier A))
       (S : RawAlgebra.Carrier A → RawAlgebra.Carrier A)
       : Set where
  open RawAlgebra A
  open RawCoalgebra C
  field
    isWeakBialgebra : IsWeakBialgebra A C

  open IsWeakBialgebra isWeakBialgebra using (εₜ; εₛ)

  field
    -- (4a) h_(1) S(h_(2)) = ε_t(h)
    antipode-t : ∀ h → let (h1 , h2) = Δ h in h1 ∙ S h2 ≡ εₜ h

    -- (4b) S(h_(1)) h_(2) = ε_s(h)
    antipode-s : ∀ h → let (h1 , h2) = Δ h in S h1 ∙ h2 ≡ εₛ h

    -- (4c) S(h_(1)) h_(2) S(h_(3)) = S(h)
    -- h1, h2, h3 obtained the same way as in `coassoc`/(3): decompose
    -- the first leg of Δ h again, then read off the flat triple.
    antipode-comp : ∀ h →
      let (a , b)   = Δ h
          (h1 , h2) = Δ a
          h3        = b
      in (S h1 ∙ h2) ∙ S h3 ≡ S h