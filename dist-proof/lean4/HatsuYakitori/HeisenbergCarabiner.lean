/-
Copyright (c) 2026 hatsu-yakitori contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors   : Yoshihiro Hasegawa
Date      : 2026-07-16
-/

import Mathlib.Combinatorics.Quiver.Basic
import Mathlib.Algebra.Category.ModuleCat.Basic
import Mathlib.RingTheory.Nilpotent.Basic

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
name) valued in `ZMod q`-modules, with `f` required to be **nilpotent**.

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
* `QuiverRep q` — a representation of the Jordan quiver over `ZMod q`-modules with a
  nilpotent endomorphism.
* `QuiverRep.unipotent` — the unit `1 + f` that the nilpotent endomorphism produces.

## Implementation notes

`f : V ⟶ V` is a morphism in `ModuleCat (ZMod q)`; `IsNilpotent` needs a
`MonoidWithZero`/`Ring` structure, which it gets via `CategoryTheory.End V := V ⟶ V`
(`@[implicit_reducible]`, so typeclass search sees through it) and `ModuleCat`'s
endomorphism ring structure. `QuiverRep.unipotent` is `noncomputable`, since
`IsUnit.unit` is defined via `Classical.choice`.

## References

* `Mathlib.Combinatorics.Quiver.Basic` — `Quiver`.
* `Mathlib.Algebra.Category.ModuleCat.Basic` — `ModuleCat`.
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

/-- A representation of the Jordan quiver over `ZMod q`-modules (`q` prime), with the
endomorphism constrained to be nilpotent — the ingredient a unipotent, Heisenberg-
flavoured group element is built from. -/
structure QuiverRep (q : ℕ) [Fact (Nat.Prime q)] where
  /-- The vector space assigned to the quiver's one vertex. -/
  V : ModuleCat (ZMod q)
  /-- The endomorphism assigned to the quiver's one loop. -/
  f : V ⟶ V
  /-- The nilpotency condition that makes `1 + f` a unit. -/
  is_nilpotent : IsNilpotent f

/-- The unit `1 + f` that a nilpotent endomorphism always produces
(`IsNilpotent.isUnit_one_add`). This is the one-parameter unipotent element
associated to `r`; see the module docstring for why it is not yet "the Heisenberg
group". -/
noncomputable def QuiverRep.unipotent {q : ℕ} [Fact (Nat.Prime q)]
    (r : QuiverRep q) : (End r.V)ˣ :=
  r.is_nilpotent.isUnit_one_add.unit

end HatsuYakitori.HeisenbergCarabiner
