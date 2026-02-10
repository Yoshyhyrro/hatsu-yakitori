/-
Copyright (c) 2026 HatsuYakitori. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: HatsuYakitori
-/
import Mathlib.Tactic
import Mathlib.Combinatorics.Quiver.Path
import Mathlib.LinearAlgebra.Dimension.Basic
import HatsuYakitori.MachineConstants
import HatsuYakitori.HopfStructure
import HatsuYakitori.AnabelianSketch

/-!
# BSD Quiver: Tensor-Coproduct Diagram as a Quiver Representation

This file formalizes the BSD (Birch and Swinnerton-Dyer) diagram

```
z(Λ₂₄)  ---⊗!--->  √A₁₁∨
  |                   |
  | Δ (coproduct)     | eval
  v                   v
z(Λ₂₄) ⊗ z(Λ₂₄) --> ℝ  ⊕  Op
```

as a **quiver representation** with dynamic programming over paths.

## Connection to existing code

* `MachineConstants.GolayWeight`: The Golay weights {0,8,12,16,24} parametrize
  the vertices of the Golay quiver. The BSD quiver lifts this to the diagram level.
* `MachineConstants.SignatureComplex`: The `leech_center`, `affine_dual`, and
  `operator_component` fields correspond to the BSD vertices.
* `HopfStructure.Coproduct`: The Hopf coproduct Δ on `GolayWeight` provides
  factorization data for paths in the BSD quiver.
* `AnabelianSketch.TateModule`: The abstract Tate module connects the Selmer
  vertex to Galois cohomology.

## Main definitions

* `BSDVertex`: The four vertices of the BSD diagram.
* `BSDArrow`: Morphisms representing ⊗!, ⊕, projection, and recovery.
* `BSDRepresentation`: Assignment of vector spaces to vertices.
* `DPState`: Dynamic programming state for path enumeration.
* `bsd_vertex_to_golay_weight`: Map from BSD vertices to representative
  Golay weights, connecting the two quiver structures.

## Design

The BSD quiver is a **finite** quiver with 4 vertices and 4 arrows.
This makes it suitable for:
1. Exhaustive path enumeration (DP over paths).
2. Representation-theoretic analysis (Gabriel's theorem: A₄ quiver).
3. Concrete linear maps between `MachineConstants.SignatureComplex` fields.

## References

* Conway–Sloane, *Sphere Packings, Lattices and Groups* (Leech lattice).
* Mochizuki, *Classical Roots of IUT* (⊗! operation, Θ-data).

## Tags

BSD, quiver, tensor product, dynamic programming, Golay, Leech lattice
-/

open HatsuYakitori MachineConstants

namespace HatsuYakitori.BSDQuiver

-- ===================================================================
-- § 1. Quiver Setup: The Fundamental Diagram
-- ===================================================================

/-- The quiver underlying the BSD diagram.

    Vertices represent:
    - `leech`:       z(Λ₂₄) — Leech lattice zero locus (Hopf coinvariants)
    - `affine_dual`: √A₁₁∨   — Spin dual of affine 11-space
    - `padic`:       O^p      — p-adic integer ring
    - `selmer`:      Σ_I      — Selmer-like index structure

    These correspond to the four fields of `SignatureComplex`:
    `leech_center`, `affine_dual`, operator input, and signature output. -/
inductive BSDVertex where
  | leech : BSDVertex        -- z(Λ₂₄)
  | affine_dual : BSDVertex  -- √A₁₁∨
  | padic : BSDVertex        -- O^p
  | selmer : BSDVertex       -- Σ_I
  deriving DecidableEq, Repr

instance : Fintype BSDVertex where
  elems := {.leech, .affine_dual, .padic, .selmer}
  complete := by intro x; cases x <;> simp

/-- Arrows in the BSD quiver representing the four fundamental operations.

    - `tensor_bang`:    z(Λ₂₄) →⊗! √A₁₁∨   (shriek tensor product)
    - `oplus_padic`:    √A₁₁∨ → O^p          (direct sum inclusion)
    - `project_selmer`: z(Λ₂₄) → Σ_I         (cohomology projection)
    - `recover`:        Σ_I → √A₁₁∨          (tensor product recovery) -/
inductive BSDArrow : BSDVertex → BSDVertex → Type where
  | tensor_bang :
      BSDArrow .leech .affine_dual        -- z(Λ₂₄) →⊗! √A₁₁∨
  | oplus_padic :
      BSDArrow .affine_dual .padic        -- √A₁₁∨ → O^p (summand)
  | project_selmer :
      BSDArrow .leech .selmer             -- z(Λ₂₄) → Σ_I
  | recover :
      BSDArrow .selmer .affine_dual       -- Σ_I → √A₁₁∨ (reconstruction)
  deriving DecidableEq, Repr

/-- The BSD quiver instance: equips `BSDVertex` with a `Quiver` structure
    whose hom-type is `BSDArrow`. -/
instance : Quiver BSDVertex where
  Hom := BSDArrow

/-- The BSD quiver has exactly 4 vertices. -/
theorem bsd_vertex_card : Fintype.card BSDVertex = 4 := by decide

-- ===================================================================
-- § 2. Connection to Golay Weight Quiver
-- ===================================================================

/-- Map BSD vertices to their representative Golay weight.

    This connects the "diagram-level" BSD quiver to the "weight-level"
    Golay quiver from `MachineConstants`:

    | BSD Vertex    | Golay Weight  | Rationale                        |
    |---------------|---------------|----------------------------------|
    | leech         | w0  (τ = 0)   | Trivial orbit: coinvariant space |
    | affine_dual   | w12 (τ = 12)  | Dodecad: self-dual (S-fixed pt)  |
    | padic         | w8  (τ = 8)   | Octad: p-adic valuation          |
    | selmer        | w16 (τ = 16)  | Complement: cohomological dual   | -/
def bsd_vertex_to_golay_weight : BSDVertex → GolayWeight
  | .leech       => .w0
  | .affine_dual => .w12
  | .padic       => .w8
  | .selmer      => .w16

/-- The `affine_dual` vertex maps to the dodecad, which is the
    antipode fixed point (self-dual). -/
theorem affine_dual_is_self_dual :
    (bsd_vertex_to_golay_weight .affine_dual).antipode =
    bsd_vertex_to_golay_weight .affine_dual := by rfl

/-- The `padic` and `selmer` vertices are antipodal under the
    Golay weight complement (octad ↔ complement of octad). -/
theorem padic_selmer_complement :
    (bsd_vertex_to_golay_weight .padic).antipode =
    bsd_vertex_to_golay_weight .selmer := by rfl

/-- Each BSD arrow induces a Hida transition between the corresponding
    Golay weights. This "forgetful" functor maps the BSD quiver into
    the Golay weight quiver. -/
def bsd_arrow_to_hida {v₁ v₂ : BSDVertex} (_a : BSDArrow v₁ v₂) :
    HidaTransition (bsd_vertex_to_golay_weight v₁) (bsd_vertex_to_golay_weight v₂) :=
  .frob  -- All BSD arrows induce Frobenius transitions at the weight level

-- ===================================================================
-- § 3. Arrow Weights via galoisHeight
-- ===================================================================

/-- Weight assigned to each BSD arrow, derived from `galoisHeight`.

    Instead of ad hoc constants, we use the galoisHeight of the
    target vertex's Golay weight. This ensures compatibility with
    the Hopf counit. -/
-- FIX: Changed argument name from `a` to `_` to suppress "unused variable" warning.
noncomputable def arrow_weight {v₁ v₂ : BSDVertex} (_ : BSDArrow v₁ v₂) : ℝ :=
  galoisHeight (bsd_vertex_to_golay_weight v₂).toNat

/-- Golay orbit weight extracted from a BSD arrow.
    Returns the Hamming weight (τ value) of the target vertex. -/
def arrow_golay_tau {v₁ v₂ : BSDVertex} (_a : BSDArrow v₁ v₂) : ℕ :=
  (bsd_vertex_to_golay_weight v₂).toNat

/-- Arrow weights are non-negative (inherited from `galoisHeight_nonneg`). -/
theorem arrow_weight_nonneg {v₁ v₂ : BSDVertex} (a : BSDArrow v₁ v₂) :
    arrow_weight a ≥ 0 :=
  galoisHeight_nonneg _

/-- The `tensor_bang` arrow targets the dodecad (self-dual vertex). -/
theorem tensor_bang_targets_dodecad :
    arrow_golay_tau BSDArrow.tensor_bang = 12 := by rfl

/-- The `project_selmer` arrow targets the octad complement. -/
theorem project_selmer_targets_complement :
    arrow_golay_tau BSDArrow.project_selmer = 16 := by rfl

-- ===================================================================
-- § 4. Dynamic Programming State
-- ===================================================================

/-- DP state: tracks a path through the BSD quiver with accumulated data.

    This is the dynamic programming cell for enumerating paths from
    `leech` to `selmer`, accumulating:
    - `accumulated_weight`: product of arrow weights along the path
    - `golay_pattern`: sequence of Golay τ-values encountered -/
-- FIX: Removed `deriving Repr` because `accumulated_weight` is of type `ℝ`,
-- and Real does not have a computable Repr instance, causing the kernel error.
structure DPState where
  /-- Current vertex in the BSD quiver -/
  current_vertex : BSDVertex
  /-- Number of arrows traversed -/
  path_length : ℕ
  /-- Accumulated product of galoisHeight values along the path -/
  accumulated_weight : ℝ
  /-- Sequence of Golay weights (τ values) encountered -/
  golay_pattern : List ℕ

/-- Initial DP state: start at the Leech vertex with trivial orbit. -/
def dp_init : DPState :=
  { current_vertex := .leech
    path_length := 0
    accumulated_weight := 1
    golay_pattern := [0] }  -- Start with trivial orbit (τ = 0)

/-- DP transition: move along a BSD arrow, accumulating data.

    The accumulated weight is multiplied by `galoisHeight` of the target,
    and the target's Golay tau is appended to the pattern. -/
noncomputable def dp_transition (state : DPState)
    {v₂ : BSDVertex} (a : BSDArrow state.current_vertex v₂) : DPState :=
  { current_vertex := v₂
    path_length := state.path_length + 1
    accumulated_weight := state.accumulated_weight * arrow_weight a
    golay_pattern := state.golay_pattern ++ [arrow_golay_tau a] }

/-- DP transition preserves path length monotonicity. -/
theorem dp_transition_length_inc (state : DPState)
    {v₂ : BSDVertex} (a : BSDArrow state.current_vertex v₂) :
    (dp_transition state a).path_length = state.path_length + 1 := by
  rfl

-- ===================================================================
-- § 5. Path Enumeration and Contributions
-- ===================================================================

/-- Direct path from `leech` to `selmer` via `project_selmer`. -/
noncomputable def direct_path_contribution : ℝ :=
  galoisHeight GolayWeight.w16.toNat

-- FIX: Changed `/-- ... -/` to `/- ... -/`.
-- Doc comments must immediately precede a declaration.
/- Two-step path: leech → affine_dual → selmer (via recover). -/
-- Note: This path does not exist in the current arrow set
-- (no arrow affine_dual → selmer), demonstrating the quiver's constraints.

/-- Three-step cycle: leech → selmer → affine_dual → padic.
    This path visits all four vertices. -/
noncomputable def three_step_contribution : ℝ :=
  galoisHeight GolayWeight.w16.toNat *    -- project_selmer
  galoisHeight GolayWeight.w12.toNat *    -- recover
  galoisHeight GolayWeight.w8.toNat       -- oplus_padic

/-- The direct path contribution is non-negative. -/
theorem direct_path_nonneg : direct_path_contribution ≥ 0 :=
  galoisHeight_nonneg _

-- ===================================================================
-- § 6. Representations: Vector Spaces at Vertices
-- ===================================================================

/-- Representation of the BSD quiver: assigns a module to each vertex.

    This is a "concrete representation" that uses the SignatureComplex
    fields from MachineConstants. The key constraint is that the arrow
    maps must form a commutative square (when applicable). -/
structure BSDRepresentation (k : Type*) [Field k] where
  /-- Module at Leech vertex: z(Λ₂₄) = Golay code space -/
  at_leech : Type*
  [leech_add : AddCommGroup at_leech]
  [leech_mod : Module k at_leech]

  /-- Module at affine dual vertex: √A₁₁∨ = spin dual -/
  at_affine_dual : Type*
  [affine_add : AddCommGroup at_affine_dual]
  [affine_mod : Module k at_affine_dual]

  /-- Module at p-adic vertex: O^p -/
  at_padic : Type*
  [padic_add : AddCommGroup at_padic]
  [padic_mod : Module k at_padic]

  /-- Module at Selmer vertex: Σ_I = cohomology -/
  at_selmer : Type*
  [selmer_add : AddCommGroup at_selmer]
  [selmer_mod : Module k at_selmer]

  /-- Arrow map: ⊗! (shriek tensor) -/
  tensor_bang_map : at_leech →ₗ[k] at_affine_dual
  /-- Arrow map: direct sum inclusion -/
  oplus_map : at_affine_dual →ₗ[k] at_padic
  /-- Arrow map: cohomology projection -/
  project_map : at_leech →ₗ[k] at_selmer
  /-- Arrow map: tensor recovery -/
  recover_map : at_selmer →ₗ[k] at_affine_dual

attribute [instance] BSDRepresentation.leech_add BSDRepresentation.leech_mod
attribute [instance] BSDRepresentation.affine_add BSDRepresentation.affine_mod
attribute [instance] BSDRepresentation.padic_add BSDRepresentation.padic_mod
attribute [instance] BSDRepresentation.selmer_add BSDRepresentation.selmer_mod

/-- A representation is **faithful** if the composite
    `recover ∘ project = tensor_bang` (the diagram commutes). -/
def BSDRepresentation.isFaithful {k : Type*} [Field k]
    (R : BSDRepresentation k) : Prop :=
  R.recover_map.comp R.project_map = R.tensor_bang_map

/-- A representation is **exact at Selmer** if the kernel of `recover`
    captures the Sha-like obstruction. -/
def BSDRepresentation.isExactAtSelmer {k : Type*} [Field k]
    (R : BSDRepresentation k) : Prop :=
  ∀ x : R.at_selmer, R.recover_map x = 0 →
    ∃ y : R.at_leech, R.project_map y = x

-- ===================================================================
-- § 7. Connection to SignatureComplex
-- ===================================================================

/-- Extract a BSD representation from the default `SignatureComplex`.

    This is the canonical representation where:
    - Leech vertex    ↦ ℝ (= `leech_center`)
    - Affine dual     ↦ Fin 11 → ℝ (= `affine_dual`)
    - p-adic          ↦ ℝ (operator input)
    - Selmer          ↦ ℝ × ℝ (signature output)

    The arrow maps are derived from SignatureComplex fields. -/
noncomputable def sig_to_representation : BSDRepresentation ℝ where
  at_leech := ℝ
  at_affine_dual := Fin AffineDimension → ℝ
  at_padic := ℝ
  at_selmer := ℝ

  tensor_bang_map :=
    -- z ↦ constant function (z, z, ..., z) ∈ ℝ¹¹
    { toFun := fun z => fun _ => z
      map_add' := by intros; ext; simp
      map_smul' := by intros; ext; simp }

  oplus_map :=
    -- a ↦ a(0), evaluation at first coordinate
    { toFun := fun a => a ⟨0, AffineDimension_pos⟩
      map_add' := by intros; simp
      map_smul' := by intros; simp }

  project_map :=
    -- z ↦ z (identity: Leech center is 1-dimensional)
    { toFun := fun z => z
      map_add' := by intros; simp
      map_smul' := by intros; simp }

  recover_map :=
    -- s ↦ constant function s
    { toFun := fun s => fun _ => s
      map_add' := by intros; ext; simp
      map_smul' := by intros; ext; simp }

-- ===================================================================
-- § 8. Coproduct Compatibility
-- ===================================================================

/-- The Hopf coproduct Δ from `HopfStructure` provides a factorization
    for BSD paths: any path leech → selmer factors through the dodecad
    (= affine_dual vertex at the Golay level). -/
theorem bsd_path_coproduct_factorization :
    ∀ (v : BSDVertex),
      ∃ (c : Coproduct (bsd_vertex_to_golay_weight .leech)
                        (bsd_vertex_to_golay_weight v)),
        c.mid = .w12 := by
  intro v
  exact ⟨coproduct_via_dodecad _ _, rfl⟩

/-- The counit (galoisHeight) applied to the BSD path satisfies
    the triangle inequality, inherited from `HopfStructure.counit_triangle`. -/
theorem bsd_counit_triangle (v₁ v₂ : BSDVertex) :
    |counit (bsd_vertex_to_golay_weight v₁) -
     counit (bsd_vertex_to_golay_weight v₂)| ≤
    |counit (bsd_vertex_to_golay_weight v₁) - counit .w12| +
    |counit .w12 - counit (bsd_vertex_to_golay_weight v₂)| :=
  counit_triangle _ _ _

-- ===================================================================
-- § 9. BSD Diagram Commutativity (Conjectural)
-- ===================================================================

/-- Conjecture: the BSD quiver representation is faithful when the
    analytic rank equals the algebraic rank (i.e., BSD holds).

    In the faithful case, recover ∘ project = tensor_bang,
    which means the "Selmer detour" recovers the same information
    as the direct shriek tensor. -/
theorem bsd_faithful_iff_bsd_conjecture :
    (sig_to_representation.isFaithful) ↔
    (analytic_rank = algebraic_rank) := by
  sorry

/-- The kernel of `recover_map` in the signature representation
    should capture the Sha obstruction. -/
theorem sha_as_kernel :
    ∀ x : ℝ, sig_to_representation.recover_map x = 0 → x = 0 := by
  intro x hx
  simp [sig_to_representation] at hx
  -- In the trivial representation, recover is injective (Sha = 0)
  exact funext_iff.mp hx ⟨0, AffineDimension_pos⟩

-- ===================================================================
-- § 10. Summary: Bridge between Quivers
-- ===================================================================

/-- Summary of the BSD quiver's connection to the existing codebase.

    1. BSD vertices embed into Golay weights via `bsd_vertex_to_golay_weight`
    2. BSD arrows induce Hida transitions via `bsd_arrow_to_hida`
    3. Arrow weights are derived from `galoisHeight` (= Hopf counit)
    4. Path factorization uses `Coproduct` via the dodecad
    5. The `SignatureComplex` fields populate the representation
    6. DP over paths computes L-function contributions (future work) -/
theorem bsd_quiver_bridge_summary :
    -- Vertex count
    (Fintype.card BSDVertex = 4) ∧
    -- Padic↔Selmer are complements (octad ↔ complement of octad)
    ((bsd_vertex_to_golay_weight .padic).antipode =
     bsd_vertex_to_golay_weight .selmer) ∧
    -- Affine dual is self-dual (dodecad)
    ((bsd_vertex_to_golay_weight .affine_dual).antipode =
     bsd_vertex_to_golay_weight .affine_dual) ∧
    -- Arrow weights are nonneg
    (arrow_weight BSDArrow.tensor_bang ≥ 0) ∧
    -- Direct path is nonneg
    (direct_path_contribution ≥ 0) := by
  exact ⟨bsd_vertex_card,
         padic_selmer_complement,
         affine_dual_is_self_dual,
         arrow_weight_nonneg _,
         direct_path_nonneg⟩

end HatsuYakitori.BSDQuiver
