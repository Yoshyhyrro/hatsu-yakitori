/-
Copyright (c) 2026 hatsu-yakitori contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors   : Yoshihiro Hasegawa
Date      : 2026-07-16
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


-- Check if `IsNilpotent` works with `CategoryTheory.End` in `ModuleCat`.
example (V : ModuleCat (ZMod 2)) (f : CategoryTheory.End V) : Prop :=
  IsNilpotent f

-- Verify the elaboration of the Lie bracket for endomorphisms.
-- This anticipates the introduction of the second generator `g`.

example {q : ℕ} [Fact (Nat.Prime q)] {V : Type*} [AddCommGroup V] [Module (ZMod q) V]
    (f g : Module.End (ZMod q) V) : Module.End (ZMod q) V :=
  -- Evaluate the commutator of the given endomorphisms.
  ⁅f, g⁆

-- Assert the existence of a nilpotency degree for the endomorphism `f`.
example {q : ℕ} [Fact (Nat.Prime q)] {V : Type*} [AddCommGroup V] [Module (ZMod q) V]
    (r : QuiverRep q V) : ∃ (n : ℕ), r.f ^ n = 0 := by
  -- Discharge the goal using the provided nilpotency hypothesis.
  exact r.is_nilpotent

-- Validate that subtracting the identity from the unipotent element
-- recovers a nilpotent endomorphism.
example {q : ℕ} [Fact (Nat.Prime q)] {V : Type*} [AddCommGroup V] [Module (ZMod q) V]
    (r : QuiverRep q V) : IsNilpotent (r.unipotent.val - 1) := by
  -- Reduce the expression to the underlying nilpotent endomorphism.
  simp [QuiverRep.unipotent]
  -- Satisfy the resulting constraint with the representation's hypothesis.
  exact r.is_nilpotent


-- Generalize the quiver representation to an arbitrary ring `R`.
-- This refactoring accommodates representations over algebras such as Biquaternions,
-- bypassing the characteristic `q` limitation of `ZMod q`.

structure QuiverRepGeneral (R : Type*) [Ring R] (V : Type*)
    [AddCommGroup V] [Module R V] where
  /-- The endomorphism corresponding to the single loop of the Jordan quiver. -/
  f : Module.End R V
  /-- The nilpotency constraint ensuring the identity addition yields a unipotent element. -/
  is_nilpotent : IsNilpotent f

end HatsuYakitori.HeisenbergCarabiner
