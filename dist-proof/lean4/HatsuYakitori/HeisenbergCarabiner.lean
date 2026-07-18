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
import Mathlib.Algebra.Lie.OfAssociative
import Mathlib.Tactic.NoncommRing
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Basis

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

**Update:** a second generator has since been added. `CentralNilpotentPair` packages
two nilpotent endomorphisms `f, g` whose commutator `z := ⁅f, g⁆` is central
(`⁅f, z⁆ = ⁅g, z⁆ = 0`). Under the further condition `f * z = 0 ∧ g * z = 0` — strictly
stronger than centrality, but realized by the natural 3-dimensional matrix
representation `f = E₀₁, g = E₁₂` (see `heisenberg_matrix_witness`) —
`heisenberg_relation` shows `(1 + f) * (1 + g) = (1 + g) * (1 + f) * (1 + z)`, the
defining relation of the (rank-2) Heisenberg group, and `z_sq_eq_zero_of_central` shows
`z * z = 0`, so `1 + z` is itself a third unipotent element.

**Still not attempted, and still deliberately out of scope:** packaging `1 + f`,
`1 + g`, `1 + z` as generators of a `Subgroup (Module.End R V)ˣ` and relating that
subgroup to the discrete Heisenberg group presentation
`⟨x, y | [x, [x, y]] = [y, [x, y]] = 1⟩`; the embedding into `Aut(M₂(F_q), det)`; and
any connection to towers of field extensions. Also still open:
`heisenberg_matrix_witness` below states the concrete non-abelian witness but defers
its proof (`sorry`). `Matrix.stdBasisMatrix` is confirmed unavailable in this
project's pinned Mathlib (`Matrix.single` is the live name, now used below); what is
still missing is the exact value-at-a-point/multiplication lemma names needed to turn
the (hand-verified) witness computation into an actual proof.

## Main definitions

* `JordanVertex`, `JordanArrow`, the `Quiver JordanVertex` instance — the Jordan
  quiver itself.
* `QuiverRep q V` — a nilpotent endomorphism of a `ZMod q`-vector space `V`: the
  representation-theoretic data of the Jordan quiver.
* `QuiverRep.unipotent` — the unit `1 + f` that the nilpotent endomorphism produces.
* `QuiverRepGeneral R V` — the same data as `QuiverRep`, but over an arbitrary ring
  `R` in place of `ZMod q`.
* `CentralNilpotentPair R V` — two nilpotent endomorphisms `f, g` with central
  commutator `z := ⁅f, g⁆`; the "second generator" this file previously deferred.
* `heisenberg_relation` — under `f * z = 0 ∧ g * z = 0`, the multiplicative Heisenberg
  relation `(1 + f) * (1 + g) = (1 + g) * (1 + f) * (1 + z)`.
* `z_sq_eq_zero_of_central` — under the same hypotheses (plus centrality), `z * z = 0`.

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
* `Mathlib.Algebra.Lie.OfAssociative` — the Lie bracket `⁅·, ·⁆` on an associative
  ring, and `LieRing.of_associative_ring_bracket : ⁅x, y⁆ = x * y - y * x`.
* `Mathlib.Tactic.NoncommRing` — the `noncomm_ring` tactic for identities in
  (possibly non-commutative) rings.
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

/-- Two nilpotent endomorphisms `f, g` of a module `V`, packaged together with the
data that their commutator `z := ⁅f, g⁆` is *central*: it commutes with both
generators (`⁅f, z⁆ = ⁅g, z⁆ = 0`). This is the associative-ring shadow of "a
representation of the (rank-2) Heisenberg Lie algebra" — `f, g` generate, `z` spans
the center, and (informally) there are no further relations. It formalizes the `Prop`
sketched just above as a genuine piece of data. -/
structure CentralNilpotentPair (R : Type*) [Ring R] (V : Type*)
    [AddCommGroup V] [Module R V] where
  /-- The first generator. -/
  f : Module.End R V
  /-- The second generator. -/
  g : Module.End R V
  /-- `f` is nilpotent, so `1 + f` is a genuine unipotent group element. -/
  hf : IsNilpotent f
  /-- `g` is nilpotent, so `1 + g` is a genuine unipotent group element. -/
  hg : IsNilpotent g
  /-- The commutator `⁅f, g⁆` commutes with `f`... -/
  central_f : ⁅f, ⁅f, g⁆⁆ = 0
  /-- ... and with `g`, i.e. `⁅f, g⁆` is central in the subalgebra `f` and `g`
  generate. -/
  central_g : ⁅g, ⁅f, g⁆⁆ = 0

/-- The distinguished central element `z = ⁅f, g⁆`. -/
def CentralNilpotentPair.z {R : Type*} [Ring R] {V : Type*} [AddCommGroup V]
    [Module R V] (p : CentralNilpotentPair R V) : Module.End R V := ⁅p.f, p.g⁆

/-- The unipotent group element `1 + f`. -/
noncomputable def CentralNilpotentPair.unipotentF {R : Type*} [Ring R] {V : Type*}
    [AddCommGroup V] [Module R V] (p : CentralNilpotentPair R V) : (Module.End R V)ˣ :=
  p.hf.isUnit_one_add.unit

/-- The unipotent group element `1 + g`. -/
noncomputable def CentralNilpotentPair.unipotentG {R : Type*} [Ring R] {V : Type*}
    [AddCommGroup V] [Module R V] (p : CentralNilpotentPair R V) : (Module.End R V)ˣ :=
  p.hg.isUnit_one_add.unit

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


/-
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


/-- Unfolding the definition of the Lie bracket on an associative ring:
`(1 + f) * (1 + g) - (1 + g) * (1 + f)` is exactly `⁅f, g⁆`. This is a **pure ring
identity**, true for *any* `f g : Module.End R V` — it needs no nilpotency or
centrality hypothesis on `f`/`g` at all. (An earlier version of this lemma carried
`hf : f ^ 3 = 0`, `hg : g ^ 3 = 0`, and
`h_central : ⁅f, ⁅f, g⁆⁆ = 0 ∧ ⁅g, ⁅f, g⁆⁆ = 0` as hypotheses, but the proof never used
them — the statement below drops them for honesty.) Think of this as a sanity check
that the bracket notation means what we expect; `heisenberg_relation` below is the
lemma that is actually specific to the nilpotent/central-commutator setting. -/
lemma unipotent_commutator_eq (R : Type*) [Ring R] (V : Type*) [AddCommGroup V]
    [Module R V] (f g : Module.End R V) :
    (1 + f) * (1 + g) - (1 + g) * (1 + f) = ⁅f, g⁆ := by
  rw [LieRing.of_associative_ring_bracket]
  noncomm_ring

/-- The multiplicative Heisenberg relation: `(1 + f) * (1 + g)` and
`(1 + g) * (1 + f) * (1 + z)` agree, where `z = ⁅f, g⁆` — i.e. the unipotent elements
built from `f` and `g` satisfy the defining relation of the (rank-2) Heisenberg group,
with `z` playing the role of the group commutator. The hypotheses `hfz`/`hgz` (`z` is
annihilated by left-multiplication by each generator) are **strictly stronger** than
mere centrality (`⁅f, z⁆ = 0 ∧ ⁅g, z⁆ = 0`, as tracked by `CentralNilpotentPair`):
centrality alone gives `f * z = z * f` and `g * z = z * g`, but does not by itself
force these products to *vanish*. The stronger hypotheses used here hold in the
natural 3-dimensional matrix representation (`heisenberg_matrix_witness` below).

Note the proof does not use nilpotency of `f`/`g` — nilpotency is what makes `1 + f`,
`1 + g` genuine group *units* elsewhere in this file (`IsNilpotent.isUnit_one_add`),
but the ring identity itself holds regardless of whether `f`, `g` are nilpotent. -/
lemma heisenberg_relation (R : Type*) [Ring R] (V : Type*) [AddCommGroup V]
    [Module R V] (f g : Module.End R V) (hfz : f * ⁅f, g⁆ = 0) (hgz : g * ⁅f, g⁆ = 0) :
    (1 + f) * (1 + g) = (1 + g) * (1 + f) * (1 + ⁅f, g⁆) := by
  rw [LieRing.of_associative_ring_bracket] at hfz hgz ⊢
  have key : (1 + g) * (1 + f) * (1 + (f * g - g * f))
      = (1 + f) * (1 + g)
        + f * (f * g - g * f) + g * (f * g - g * f) + g * (f * (f * g - g * f)) := by
    noncomm_ring
  rw [key, hfz, hgz, mul_zero]
  abel

/-- A companion to `heisenberg_relation`: under the same hypotheses, together with
the centrality of `z = ⁅f, g⁆` (the same `⁅f, z⁆ = 0 ∧ ⁅g, z⁆ = 0` condition
`CentralNilpotentPair` tracks), `z` is itself nilpotent — indeed `z * z = 0`. So
`1 + z` sits alongside `1 + f` and `1 + g` as a third genuine unipotent group
element. -/
lemma z_sq_eq_zero_of_central (R : Type*) [Ring R] (V : Type*) [AddCommGroup V]
    [Module R V] (f g : Module.End R V)
    (hcf : ⁅f, ⁅f, g⁆⁆ = 0) (hcg : ⁅g, ⁅f, g⁆⁆ = 0)
    (hfz : f * ⁅f, g⁆ = 0) (hgz : g * ⁅f, g⁆ = 0) :
    ⁅f, g⁆ * ⁅f, g⁆ = 0 := by
  -- `hcf`/`hcg` have a *nested* bracket (`⁅f, ⁅f, g⁆⁆`), so a single `rw` only unfolds the
  -- outer instantiation and leaves the inner `⁅f, g⁆` untouched; `simp only` iterates to a
  -- fixpoint and catches both.
  simp only [LieRing.of_associative_ring_bracket] at hcf hcg hfz hgz ⊢
  have hzf : (f * g - g * f) * f = 0 := by
    have h := hcf; rw [hfz, zero_sub, neg_eq_zero] at h; exact h
  have hzg : (f * g - g * f) * g = 0 := by
    have h := hcg; rw [hgz, zero_sub, neg_eq_zero] at h; exact h
  have key : (f * g - g * f) * (f * g - g * f)
      = (f * g - g * f) * f * g - (f * g - g * f) * g * f := by
    noncomm_ring
  rw [key, hzf, hzg]
  simp

/-- `heisenberg_relation`, restated for the two generators packaged in a
`CentralNilpotentPair`. -/
lemma CentralNilpotentPair.heisenberg_relation {R : Type*} [Ring R] {V : Type*}
    [AddCommGroup V] [Module R V] (p : CentralNilpotentPair R V)
    (hfz : p.f * ⁅p.f, p.g⁆ = 0) (hgz : p.g * ⁅p.f, p.g⁆ = 0) :
    (1 + p.f) * (1 + p.g) = (1 + p.g) * (1 + p.f) * (1 + ⁅p.f, p.g⁆) :=
  HatsuYakitori.HeisenbergCarabiner.heisenberg_relation R V p.f p.g hfz hgz

/-- **Statement only, proof deferred.** The natural witness that
`heisenberg_relation`'s hypotheses are not vacuous. With `f = E₀₁` and `g = E₁₂`
(elementary/standard-basis matrices, 0-indexed) inside
`Matrix (Fin 3) (Fin 3) (ZMod q)`: hand computation gives `f * g = E₀₂` and
`g * f = 0`, so `z := ⁅f, g⁆ = E₀₂ ≠ 0` — genuinely non-abelian — while `f * z = 0`
and `g * z = 0`, since e.g. `E₀₁ * E₀₂` needs "column 1 of the first factor" to
match "row 0 of the second", i.e. `1 = 0`, which is false, so that product is `0`
(similarly for the other products involved).

`Matrix.stdBasisMatrix` is confirmed **not** available in this project's pinned
Mathlib (`Unknown constant`) — `Matrix.single` below is the live name, with the same
argument order (`single i j a` = the matrix with `a` at row `i`, column `j`). The
`sorry` is left deliberately: turning the hand computation above into a proof needs
(a) a value-at-a-point characterization of `single` (guessing `Matrix.single_apply`,
unconfirmed), (b) `Matrix.mul_apply` to unfold `*` as a sum over `Fin 3`, and
(c) `Fin.sum_univ_three` to turn that sum into three explicit terms — three more
unconfirmed lemma names is one round of guessing too many to stack on top of this
turn's already-partly-wrong fixes, so this is left as the next step rather than
guessed at again immediately. -/
lemma heisenberg_matrix_witness (q : ℕ) [Fact (Nat.Prime q)] :
    let f : Matrix (Fin 3) (Fin 3) (ZMod q) := Matrix.single 0 1 1
    let g : Matrix (Fin 3) (Fin 3) (ZMod q) := Matrix.single 1 2 1
    ⁅f, g⁆ ≠ 0 ∧ f * ⁅f, g⁆ = 0 ∧ g * ⁅f, g⁆ = 0 := by
  sorry

/-- A generic fact about inner derivations — **not** specific to the Heisenberg
construction, despite superficial appearances. If *every* derivation of `End(V)` is
inner (`ext_one_vanishes`, the informal reading of `Ext^1(ρ, ρ) = 0`), then in
particular a *fixed* such derivation `d`, evaluated at any two chosen elements `f, g`
(not assumed related to the `CentralNilpotentPair`/Heisenberg data built elsewhere in
this file), is inner via the *same* conjugating element `a` at both — because `a`
depends only on `d`, not on which element `d` is applied to. The proof is a direct,
one-line application of `ext_one_vanishes`; it uses no nilpotency, no centrality,
nothing Heisenberg-specific at all. Read this as a small, reusable lemma about inner
derivations, staged here for whenever `ext_one_vanishes` is established for an actual
Heisenberg representation constructed elsewhere in this file — not (yet) as a
statement about "the Heisenberg representation" itself. -/
lemma cohomological_rigidity_implies_locked_moduli
    (R : Type*) [CommRing R] (V : Type*) [AddCommGroup V] [Module R V]
    -- Ext^1(ρ, ρ) = 0 modeled as: all derivations on End(V) are inner.
    (ext_one_vanishes : ∀ (d : Module.End R V → Module.End R V),
      (∀ x y, d (x * y) = d x * y + x * d y) →
      ∃ (a : Module.End R V), ∀ x, d x = a * x - x * a) :
    -- If the above holds, any *fixed* deformation `d`, evaluated at any two elements
    -- `f, g` (arbitrary — not assumed to be Heisenberg generators from elsewhere in
    -- this file), is locked by the same internal conjugation `a` at both.
    ∀ (d : Module.End R V → Module.End R V)
      (_ : ∀ x y, d (x * y) = d x * y + x * d y)
      (f g : Module.End R V),
      ∃ (a : Module.End R V), d f = a * f - f * a ∧ d g = a * g - g * a := by
  -- Introduce the arbitrary deformation and its derivation property.
  intro d h_der f g
  -- Extract the inner conjugation element guaranteed by the vanishing of Ext^1.
  obtain ⟨a, ha⟩ := ext_one_vanishes d h_der
  -- Satisfy the locked moduli constraints for the specific generators.
  exact ⟨a, ha f, ha g⟩

end HatsuYakitori.HeisenbergCarabiner
