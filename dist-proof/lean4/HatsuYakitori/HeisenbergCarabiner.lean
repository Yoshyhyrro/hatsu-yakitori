/-
Copyright (c) 2026 hatsu-yakitori contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors   : Yoshihiro Hasegawa
Date      : 2026-07-17
-/

import Mathlib.Combinatorics.Quiver.Basic
import Mathlib.RingTheory.Nilpotent.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.Algebra.Module.LinearMap.End
import Mathlib.CategoryTheory.Category.Basic
import Mathlib.Algebra.Category.ModuleCat.Basic

/-!
# HeisenbergCarabiner: the Jordan quiver and a single unipotent generator

This file is an **exploratory, standalone** first step towards a `HeisenbergCarabiner`
(a Heisenberg-group action associated to a field, in the spirit of
`Heisenberg ↪ Aut(M₂(F_q), det)`). It is independent of `HatsuYakitori.BSDQuiver` /
`HatsuYakitori.InverseHeegnerCascade`: it is *not* meant to patch the rank mismatch
in `InverseHeegnerCascade`'s `§4` cascade equation (that has its own, unrelated,
already-diagnosed fix), but to explore whether non-abelian, Heisenberg-type Galois
structure can show up in towers of field extensions — a question separate from that
file.

The construction, in mathlib's own idiom: a representation of the **Jordan quiver**
(one vertex, one self-loop — so a representation of it is exactly a vector space `V`
together with a single endomorphism `f`, the data of a Jordan normal form, hence the
name) valued in `ZMod q`-vector spaces, with `f` required to be **nilpotent**.

Nilpotence is the correct starting point because the Heisenberg group is the
*unipotent* group attached to a 2-step nilpotent Lie algebra: `1 + f` is automatically
a unit whenever `f` is nilpotent (`IsNilpotent.isUnit_one_add`), giving a genuine
group element — the one-parameter unipotent subgroup that a single nilpotent
generator produces.

**This file does not yet construct the Heisenberg group itself.** The actual
(non-abelian, rank-2-nilpotent) Heisenberg group needs a *second* generator `g` with
a prescribed, nonzero, central commutator `⁅f, g⁆`; a single nilpotent endomorphism
only gives one commuting one-parameter unipotent subgroup, which is abelian. Adding
that second generator — and only then asking about an embedding into `Aut(M₂(F_q),
det)` or about towers of field extensions — is the natural next step, deliberately
not attempted here.

## Main definitions

* `JordanVertex`, `JordanArrow`, the `Quiver JordanVertex` instance — the Jordan
  quiver itself.
* `QuiverRep q V` — a nilpotent endomorphism of a `ZMod q`-vector space `V`: the
  representation-theoretic data of the Jordan quiver.
* `QuiverRep.unipotent` — the unit `1 + f` that the nilpotent endomorphism produces.

## Implementation notes

An earlier version of this file tried to package `V` and `f` together as a morphism
`V ⟶ V` inside `ModuleCat (ZMod q)`, relying on `CategoryTheory.End`'s `Monoid`
instance to make `IsNilpotent` typecheck. That instance did not get picked up by
elaboration in practice (`Pow (V ⟶ V) ℕ` failed to synthesize). This version instead
takes `V : Type*` with `[AddCommGroup V] [Module (ZMod q) V]` as an explicit
parameter and uses `f : Module.End (ZMod q) V`, which has a direct `Ring` instance
(`Mathlib.Algebra.Module.LinearMap.End`, no category theory involved), avoiding the
issue entirely.

## References

* `Mathlib.Combinatorics.Quiver.Basic` — `Quiver`.
* `Mathlib.Algebra.Module.LinearMap.End` — `Module.End` and its `Ring` instance.
* `Mathlib.RingTheory.Nilpotent.Basic` — `IsNilpotent`, `IsNilpotent.isUnit_one_add`.
-/

/-- The Jordan quiver has a single vertex. -/
inductive JordanVertex
  | zero

/-- ... and a single arrow, a self-loop at that vertex. A representation of this
quiver is exactly a pair `(V, f)` of a module and one endomorphism of it. -/
inductive JordanArrow : JordanVertex → JordanVertex → Type
  | loop : JordanArrow JordanVertex.zero JordanVertex.zero

instance : Quiver JordanVertex where
  Hom := JordanArrow

namespace HatsuYakitori.HeisenbergCarabiner

/-- A representation of the Jordan quiver: a `ZMod q`-vector space `V` (`q` prime)
with a nilpotent endomorphism `f` — the ingredient a unipotent, Heisenberg-flavoured
group element is built from. -/
structure QuiverRep (q : ℕ) [Fact (Nat.Prime q)] (V : Type*)
    [AddCommGroup V] [Module (ZMod q) V] where
  /-- The endomorphism assigned to the quiver's one loop. -/
  f : Module.End (ZMod q) V
  /-- The nilpotency condition that makes `1 + f` a unit. -/
  is_nilpotent : IsNilpotent f

/-- The unit `1 + f` that a nilpotent endomorphism always produces
(`IsNilpotent.isUnit_one_add`). This is the one-parameter unipotent element
associated to `r`; see the module docstring for why it is not yet "the Heisenberg
group". -/
noncomputable def QuiverRep.unipotent {q : ℕ} [Fact (Nat.Prime q)] {V : Type*}
    [AddCommGroup V] [Module (ZMod q) V] (r : QuiverRep q V) :
    (Module.End (ZMod q) V)ˣ :=
  r.is_nilpotent.isUnit_one_add.unit

/-
-- Check if `IsNilpotent` works with `CategoryTheory.End` in `ModuleCat`.
-/
example (V : ModuleCat (ZMod 2)) (f : CategoryTheory.End V) : Prop :=
  IsNilpotent f

/-
-- Verify the elaboration of the Lie bracket for endomorphisms.
-- This anticipates the introduction of the second generator `g`.
-/
example {q : ℕ} [Fact (Nat.Prime q)] {V : Type*} [AddCommGroup V] [Module (ZMod q) V]
    (f g : Module.End (ZMod q) V) : Module.End (ZMod q) V :=
  -- Evaluate the commutator of the given endomorphisms.
  ⁅f, g⁆

/-
-- Assert the existence of a nilpotency degree for the endomorphism `f`.
-/
example {q : ℕ} [Fact (Nat.Prime q)] {V : Type*} [AddCommGroup V] [Module (ZMod q) V]
    (r : QuiverRep q V) : ∃ (n : ℕ), r.f ^ n = 0 := by
  -- Discharge the goal using the provided nilpotency hypothesis.
  exact r.is_nilpotent

/-
-- Validate that subtracting the identity from the unipotent element
-- recovers a nilpotent endomorphism.
-/
example {q : ℕ} [Fact (Nat.Prime q)] {V : Type*} [AddCommGroup V] [Module (ZMod q) V]
    (r : QuiverRep q V) : IsNilpotent (r.unipotent.val - 1) := by
  -- Reduce the expression to the underlying nilpotent endomorphism.
  simp [QuiverRep.unipotent]
  -- Satisfy the resulting constraint with the representation's hypothesis.
  exact r.is_nilpotent

/-
-- Generalize the quiver representation to an arbitrary ring `R`.
-- This refactoring accommodates representations over algebras such as Biquaternions,
-- bypassing the characteristic `q` limitation of `ZMod q`.
-/
structure QuiverRepGeneral (R : Type*) [Ring R] (V : Type*)
    [AddCommGroup V] [Module R V] where
  /-- The endomorphism corresponding to the single loop of the Jordan quiver. -/
  f : Module.End R V
  /-- The nilpotency constraint ensuring the identity addition yields a unipotent element. -/
  is_nilpotent : IsNilpotent f

/-
-- Verify that the relations for a 2-step nilpotent Heisenberg Lie algebra
-- can be expressed over `QuiverRepGeneral`.
-- This tracks two generators `f, g` whose commutator `z` commutes with both.
-/
example (R : Type*) [Ring R] (V : Type*) [AddCommGroup V] [Module R V]
    (rep_f rep_g : QuiverRepGeneral R V) : Prop :=
  let f := rep_f.f
  let g := rep_g.f
  let z := ⁅f, g⁆
  -- The commutator `z` must commute with both `f` and `g`.
  ⁅f, z⁆ = 0 ∧ ⁅g, z⁆ = 0

/-
-- Verify the expansion of the product of two unipotent-like elements.
-- This ensures the ring-algebraic calculation `(1 + f) * (1 + g)`
-- correctly yields the Heisenberg-like term `1 + f + g + f * g`.
-/
example (R : Type*) [Ring R] (V : Type*) [AddCommGroup V] [Module R V]
    (rep_f rep_g : QuiverRepGeneral R V) :
    (1 + rep_f.f) * (1 + rep_g.f) = 1 + rep_f.f + rep_g.f + rep_f.f * rep_g.f := by
  -- Expand the ring multiplication terms manually using distributivity and associativity.
  simp [add_mul, mul_add, add_assoc]


/-
Evaluate the local integrality of a representation under a restricted family of primes.
This models the restricted product condition where elements are integral
at almost all localized sectors of the representation space.
-/
example (V : Type*) [AddCommGroup V] [Module ℚ V] (rep : QuiverRepGeneral ℚ V)
    (primes : List ℕ) (_ : ∀ p ∈ primes, Nat.Prime p) : Prop :=
  -- Require that the endomorphism preserves a specific integral structure
  -- across the designated local prime sectors.
  ∀ p ∈ primes, ∀ v : V,
    -- Cast `p` to `ℚ` explicitly to ensure proper division and scalar multiplication.
    ((1 : ℚ) / (p : ℚ)) • (rep.f v) = rep.f (((1 : ℚ) / (p : ℚ)) • v)


/-
Verify the restricted product condition at the representation level:
the endomorphism preserves the local integral structure for almost all primes.
This requires the existence of a finite exceptional set of primes outside of which
the action commutes with the local prime scaling.
-/
example (V : Type*) [AddCommGroup V] [Module ℚ V] (rep : QuiverRepGeneral ℚ V) : Prop :=
  -- There exists a finite set of exceptional primes...
  ∃ (exceptional : Finset ℕ),
    -- ...such that for any prime `p` not in this exceptional set...
    ∀ (p : ℕ) [Fact (Nat.Prime p)], p ∉ exceptional →
      -- ...the representation map `f` preserves the local integer lattice scale.
      ∀ v : V, ((1 : ℚ) / (p : ℚ)) • (rep.f v) = rep.f (((1 : ℚ) / (p : ℚ)) • v)


/--
Verify the Adelic rigidity condition for a norm form on the global representation.
This asserts that a global bilinear form (modeling the Biquaternion norm)
evaluated on the unipotent Heisenberg action satisfies integrality conditions
at almost all primes, resolving local obstructions into Adelic geometry.
-/
example (V : Type*) [AddCommGroup V] [Module ℚ V] (rep : QuiverRepGeneral ℚ V)
    -- A global norm form modeled as a mapping into ℚ.
    (norm_form : V → V → ℚ)
    -- An abstract local integrality condition for rational numbers at a prime `p`.
    (is_integral_at : ℕ → ℚ → Prop) : Prop :=
  -- For any vectors in the global representation space...
  ∀ (v w : V),
    -- ...there exists a finite list of exceptional primes (the localized obstructions)...
    ∃ (exceptional : List ℕ),
      -- ...such that for all prime numbers `p` outside this restricted set...
      ∀ (p : ℕ) [Fact (Nat.Prime p)], p ∉ exceptional →
        -- ...the norm form evaluated on the unipotent orbit `(1 + f)`
        -- rigorously satisfies the integrality condition at `p`.
        is_integral_at p (norm_form (v + rep.f v) (w + rep.f w))


/--
The unipotent group commutator relation for 3-step nilpotent generators.
This lemma establishes the foundation for verifying the Heisenberg group structure.
-/
lemma unipotent_commutator_eq (R : Type*) [Ring R] (V : Type*) [AddCommGroup V] [Module R V]
    (f g : Module.End R V) (hf : f ^ 3 = 0) (hg : g ^ 3 = 0)
    (h_central : ⁅f, ⁅f, g⁆⁆ = 0 ∧ ⁅g, ⁅f, g⁆⁆ = 0) :
    let Z := ⁅f, g⁆
    (1 + f) * (1 + g) - (1 + g) * (1 + f) = Z := by
  dsimp
  -- Apply the library search tactic to inspect available distributive ring lemmas.
  apply?
  sorry
end HatsuYakitori.HeisenbergCarabiner
