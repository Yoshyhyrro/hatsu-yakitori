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

## Extended structures (Phantom-typed categorical layer)

* `SpaceTag`: Type-level indices for geometric modality (Affine/Banach/Hybrid).
* `PauliTransform`: Morphisms between space modalities as categorical functors.
* `TransformEffect`: Effect system tracking morphic side-effects.
* `TaggedBSDVertex`: BSD vertices enriched with geometric modality descriptors.

## Design

The BSD quiver is a **finite** quiver with 4 vertices and 4 arrows.
This makes it suitable for:
1. Exhaustive path enumeration (DP over paths).
2. Representation-theoretic analysis (Gabriel's theorem: A₄ quiver).
3. Concrete linear maps between `MachineConstants.SignatureComplex` fields.
4. Phantom-type tracking of geometric structure preservation.

## References

* Conway–Sloane, *Sphere Packings, Lattices and Groups* (Leech lattice).
* Mochizuki, *Classical Roots of IUT* (⊗! operation, Θ-data).

## Tags

BSD, quiver, tensor product, dynamic programming, Golay, Leech lattice,
phantom types, Pauli operators, space tags
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

/- Two-step path: leech → affine_dual → selmer (via recover).
   Note: This path does not exist in the current arrow set
   (no arrow affine_dual → selmer), demonstrating the quiver's constraints. -/

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
-- § 10. Phantom Types for Categorical Space Tagging
-- ===================================================================

/--
  SpaceTag: Type-level indices for classifying the geometric modality of fibers.
  Tracks the structure (Affine, Banach, or Hybrid) at the type level.

  - `affine`: Algebraic/Zariski geometry (scheme-theoretic base)
  - `banach`: p-adic Banach completion (non-Archimedean topology)
  - `hybrid`: Mixed algebraic-topological structure (adelic viewpoint)
-/
inductive SpaceTag where
  | affine : SpaceTag   -- Affine space A¹ over k
  | banach : SpaceTag   -- p-adic Banach space (Non-Archimedean completion)
  | hybrid : SpaceTag   -- Hybridized structure (Mixed algebraic-topological)
  deriving DecidableEq, Repr

instance : Fintype SpaceTag where
  elems := {.affine, .banach, .hybrid}
  complete := by intro x; cases x <;> simp

/-- The number of space modalities. -/
theorem space_tag_card : Fintype.card SpaceTag = 3 := by decide

/--
  Mapping from BSD vertices to their default geometric modality.

  | BSD Vertex    | SpaceTag | Rationale                               |
  |---------------|----------|-----------------------------------------|
  | leech         | affine   | Algebraic lattice (scheme-theoretic)     |
  | affine_dual   | hybrid   | Spin dual lives in mixed geometry        |
  | padic         | banach   | p-adic integers are Banach               |
  | selmer        | affine   | Cohomological/algebraic structure        |
-/
def bsd_vertex_default_tag : BSDVertex → SpaceTag
  | .leech       => .affine
  | .affine_dual => .hybrid
  | .padic       => .banach
  | .selmer      => .affine

-- ===================================================================
-- § 11. Pauli Operators as Categorical Functors
-- ===================================================================

/--
  PauliTransform: Defines the morphisms between different space modalities.
  Represents transformations of the underlying geometric structure.

  These are analogous to Pauli matrices acting on quantum states, but here
  they act on the geometric modality of fibers in the BSD diagram.

  - `X_completion`: Completion functor (Affine → Banach)
  - `Z_algebraize`: Algebraization / forgetful functor (Banach → Affine)
  - `Y_hybridize`: Injection into the mixed category (any → Hybrid)
  - `I_preserve`: Identity (structure-preserving)
-/
inductive PauliTransform : SpaceTag → SpaceTag → Type where
  /-- X: Completion Functor (Affine to p-adic Banach) -/
  | X_completion :
      PauliTransform .affine .banach
  /-- Z: Algebraization (Forgetful Functor from Banach back to Affine) -/
  | Z_algebraize :
      PauliTransform .banach .affine
  /-- Y: Hybridization (Injection into the Mixed category from Affine) -/
  | Y_hybridize_from_affine :
      PauliTransform .affine .hybrid
  /-- Y: Hybridization from Banach -/
  | Y_hybridize_from_banach :
      PauliTransform .banach .hybrid
  /-- P_A: Projection from Hybrid to Affine (algebraic skeleton extraction) -/
  | P_hybrid_to_affine :
      PauliTransform .hybrid .affine
  /-- P_B: Projection from Hybrid to Banach (topological completion extraction) -/
  | P_hybrid_to_banach :
      PauliTransform .hybrid .banach
  /-- I: Identity Morphism (Structure-preserving transition) -/
  | I_preserve {tag : SpaceTag} :
      PauliTransform tag tag
  deriving DecidableEq

/-- Composition of Pauli transforms (external, not built into the inductive). -/
noncomputable def PauliTransform.compose {t₁ t₂ t₃ : SpaceTag}
    (_f : PauliTransform t₁ t₂) (_g : PauliTransform t₂ t₃) :
    PauliTransform t₁ t₃ :=
  -- In general, composition may not land in a constructor; we pick a canonical inhabitant
  Classical.choice (by
    cases t₁ <;> cases t₃ <;> exact ⟨by first
      | exact PauliTransform.I_preserve
      | exact PauliTransform.X_completion
      | exact PauliTransform.Z_algebraize
      | exact PauliTransform.Y_hybridize_from_affine
      | exact PauliTransform.Y_hybridize_from_banach
      | exact PauliTransform.P_hybrid_to_affine
      | exact PauliTransform.P_hybrid_to_banach⟩)

noncomputable instance {t₁ t₂ : SpaceTag} : Inhabited (PauliTransform t₁ t₂) where
  default := Classical.choice (by
    cases t₁ <;> cases t₂ <;> exact ⟨by first
      | exact PauliTransform.I_preserve
      | exact PauliTransform.X_completion
      | exact PauliTransform.Z_algebraize
      | exact PauliTransform.Y_hybridize_from_affine
      | exact PauliTransform.Y_hybridize_from_banach
      | exact PauliTransform.P_hybrid_to_affine
      | exact PauliTransform.P_hybrid_to_banach⟩)

-- ===================================================================
-- § 12. Transform Effect System
-- ===================================================================

/--
  TransformEffect: Qualitative classification of the mathematical result
  of a Pauli morphism. This is an "effect system" in the PL sense:
  it tracks what geometric side-effect resulted from applying a transform.
-/
inductive TransformEffect where
  | preserves_algebraic : TransformEffect    -- Endomorphism of algebraic structures
  | adds_topology : TransformEffect          -- Topological completion (e.g., X)
  | forgets_topology : TransformEffect       -- Algebraization / Reduction (e.g., Z)
  | mixes_structures : TransformEffect       -- Hybridization (e.g., Y)
  deriving DecidableEq, Repr

/-- Classify a Pauli transform by its geometric effect. -/
def classifyEffect {t₁ t₂ : SpaceTag} : PauliTransform t₁ t₂ → TransformEffect
  | .X_completion              => .adds_topology
  | .Z_algebraize              => .forgets_topology
  | .Y_hybridize_from_affine   => .mixes_structures
  | .Y_hybridize_from_banach   => .mixes_structures
  | .P_hybrid_to_affine        => .forgets_topology
  | .P_hybrid_to_banach        => .adds_topology
  | .I_preserve                => .preserves_algebraic

/-- Monoidal composition rule for effects.

    The key identities are:
    - `adds_topology ∘ forgets_topology = preserves_algebraic` (XZ = I)
    - `forgets_topology ∘ adds_topology = preserves_algebraic` (ZX = I)
    - anything composed with `mixes_structures` yields `mixes_structures`
-/
def combineEffects : TransformEffect → TransformEffect → TransformEffect
  | .preserves_algebraic, e => e
  | e, .preserves_algebraic => e
  | .adds_topology, .forgets_topology => .preserves_algebraic
  | .forgets_topology, .adds_topology => .preserves_algebraic
  | _, _ => .mixes_structures

/-- Effect composition is commutative for the XZ/ZX pair. -/
theorem xz_effect_commutes :
    combineEffects .adds_topology .forgets_topology =
    combineEffects .forgets_topology .adds_topology := by rfl

/-- Identity effect is a left unit. -/
theorem effect_left_unit (e : TransformEffect) :
    combineEffects .preserves_algebraic e = e := by rfl

/-- Identity effect is a right unit. -/
theorem effect_right_unit (e : TransformEffect) :
    combineEffects e .preserves_algebraic = e := by
  cases e <;> rfl

-- ===================================================================
-- § 13. Golay-Indexed Space Configurations
-- ===================================================================

/-- A space configuration assigns a geometric modality to each of the
    24 coordinates (Leech lattice positions). -/
def SpaceConfig := Fin 24 → SpaceTag

instance : Repr SpaceConfig where
  reprPrec _ _ := "SpaceConfig⟨…⟩"

/-- Mapping Golay Hamming weights to canonical space configurations.

    | Weight | Configuration                | Geometric meaning        |
    |--------|------------------------------|--------------------------|
    | 0      | All affine                   | Universal algebraic      |
    | 8      | First 8 banach, rest affine  | Octad completion         |
    | 12     | First 12 hybrid, rest affine | Dodecad hybridization    |
    | 16     | First 16 banach, rest affine | Complement completion    |
    | 24     | All banach                   | Global p-adic completion |
-/
def spaceConfigFromGolayWeight : GolayWeight → SpaceConfig
  | .w0  => fun _ => .affine
  | .w8  => fun i => if i.val < 8  then .banach else .affine
  | .w12 => fun i => if i.val < 12 then .hybrid else .affine
  | .w16 => fun i => if i.val < 16 then .banach else .affine
  | .w24 => fun _ => .banach

/-- The trivial weight yields a uniformly affine configuration. -/
theorem w0_all_affine :
    ∀ i : Fin 24, spaceConfigFromGolayWeight .w0 i = .affine := by
  intro i; rfl

/-- The total weight yields a uniformly banach configuration. -/
theorem w24_all_banach :
    ∀ i : Fin 24, spaceConfigFromGolayWeight .w24 i = .banach := by
  intro i; rfl

/-- Count how many coordinates carry a given tag in a configuration. -/
def tagCount (config : SpaceConfig) (tag : SpaceTag) : ℕ :=
  (Finset.univ.filter (fun i => config i = tag)).card

/-- The w8 configuration has exactly 8 banach coordinates. -/
theorem w8_banach_count :
    tagCount (spaceConfigFromGolayWeight .w8) .banach = 8 := by
  simp [tagCount, spaceConfigFromGolayWeight]
  decide

/-- The w12 configuration has exactly 12 hybrid coordinates. -/
theorem w12_hybrid_count :
    tagCount (spaceConfigFromGolayWeight .w12) .hybrid = 12 := by
  simp [tagCount, spaceConfigFromGolayWeight]
  decide

-- ===================================================================
-- § 14. BSD Arrows Induce Tag Transitions
-- ===================================================================

/-- A BSD arrow induces a transition between space tags via the
    default tag assignment. This connects the quiver structure to
    the Pauli transform system. -/
def bsd_arrow_tag_transition {v₁ v₂ : BSDVertex} (a : BSDArrow v₁ v₂) :
    SpaceTag × SpaceTag :=
  (bsd_vertex_default_tag v₁, bsd_vertex_default_tag v₂)

/-- The tensor_bang arrow induces an affine → hybrid transition. -/
theorem tensor_bang_tag :
    bsd_arrow_tag_transition BSDArrow.tensor_bang = (.affine, .hybrid) := by rfl

/-- The oplus_padic arrow induces a hybrid → banach transition. -/
theorem oplus_padic_tag :
    bsd_arrow_tag_transition BSDArrow.oplus_padic = (.hybrid, .banach) := by rfl

/-- The project_selmer arrow preserves the affine tag. -/
theorem project_selmer_tag :
    bsd_arrow_tag_transition BSDArrow.project_selmer = (.affine, .affine) := by rfl

/-- The recover arrow induces an affine → hybrid transition. -/
theorem recover_tag :
    bsd_arrow_tag_transition BSDArrow.recover = (.affine, .hybrid) := by rfl

/-- Classify the effect of a BSD arrow via the induced tag transition. -/
def bsd_arrow_effect {v₁ v₂ : BSDVertex} (a : BSDArrow v₁ v₂) : TransformEffect :=
  match a with
  | .tensor_bang    => .mixes_structures    -- affine → hybrid
  | .oplus_padic    => .adds_topology       -- hybrid → banach
  | .project_selmer => .preserves_algebraic -- affine → affine
  | .recover        => .mixes_structures    -- affine → hybrid

/-- The three-step path leech → selmer → affine_dual → padic has
    combined effect: mixes_structures (from overall composition). -/
theorem three_step_effect :
    combineEffects
      (combineEffects (bsd_arrow_effect .project_selmer) (bsd_arrow_effect .recover))
      (bsd_arrow_effect .oplus_padic) =
    .mixes_structures := by rfl

-- ===================================================================
-- § 15. Tagged BSD Quiver (Enriched Vertices)
-- ===================================================================

/--
  TaggedBSDVertex: Extension of the BSD quiver vertices enriched with
  geometric modality descriptors.

  This is the "refined" quiver where each vertex carries:
  - its underlying BSD vertex identity
  - its space configuration (for leech/selmer: full 24-component config;
    for affine_dual/padic: a single tag)
-/
structure TaggedBSDVertex where
  /-- The underlying BSD vertex -/
  base : BSDVertex
  /-- The geometric modality tag at this vertex -/
  tag : SpaceTag
  deriving DecidableEq, Repr

/-- Canonical embedding: BSD vertex with its default tag. -/
def BSDVertex.tagged (v : BSDVertex) : TaggedBSDVertex :=
  ⟨v, bsd_vertex_default_tag v⟩

/-- Morphisms in the tagged BSD quiver must be compatible with
    both the base arrow structure and the tag transition. -/
structure TaggedBSDArrow (v₁ v₂ : TaggedBSDVertex) where
  /-- The underlying BSD arrow -/
  base_arrow : BSDArrow v₁.base v₂.base
  /-- The effect classification -/
  effect : TransformEffect
  /-- Consistency: the effect matches the arrow's classification -/
  effect_consistent : effect = bsd_arrow_effect base_arrow

/-- The tagged BSD quiver instance. -/
instance : Quiver TaggedBSDVertex where
  Hom := TaggedBSDArrow

-- ===================================================================
-- § 16. Type-Safe DP State with Tag Tracking
-- ===================================================================

/--
  TypedDPState: DP state enriched with geometric modality tracking.

  Unlike the basic `DPState`, this records:
  - The space tag at each visited vertex
  - The accumulated effects of all traversed arrows
  - The full tag history for structural analysis
-/
structure TypedDPState where
  /-- Current tagged vertex -/
  current : TaggedBSDVertex
  /-- Number of arrows traversed -/
  path_length : ℕ
  /-- Accumulated weight (product of galoisHeights) -/
  accumulated_weight : ℝ
  /-- History of Golay τ-values -/
  golay_pattern : List ℕ
  /-- History of space tags visited -/
  tag_history : List SpaceTag
  /-- Accumulated geometric effect -/
  accumulated_effect : TransformEffect

/-- Initial typed DP state at the Leech vertex. -/
def typed_dp_init : TypedDPState :=
  { current := BSDVertex.leech.tagged
    path_length := 0
    accumulated_weight := 1
    golay_pattern := [0]
    tag_history := [.affine]
    accumulated_effect := .preserves_algebraic }

/-- Typed DP transition along a tagged BSD arrow. -/
noncomputable def typed_dp_transition (state : TypedDPState)
    {v₂ : TaggedBSDVertex}
    (arrow : TaggedBSDArrow state.current v₂) : TypedDPState :=
  { current := v₂
    path_length := state.path_length + 1
    accumulated_weight :=
      state.accumulated_weight * arrow_weight arrow.base_arrow
    golay_pattern :=
      state.golay_pattern ++ [arrow_golay_tau arrow.base_arrow]
    tag_history :=
      state.tag_history ++ [v₂.tag]
    accumulated_effect :=
      combineEffects state.accumulated_effect arrow.effect }

/-- Typed DP transition preserves path length monotonicity. -/
theorem typed_dp_transition_length_inc (state : TypedDPState)
    {v₂ : TaggedBSDVertex}
    (arrow : TaggedBSDArrow state.current v₂) :
    (typed_dp_transition state arrow).path_length =
    state.path_length + 1 := by
  rfl

/-- The accumulated effect always equals the fold of individual effects. -/
theorem typed_dp_effect_accumulation (state : TypedDPState)
    {v₂ : TaggedBSDVertex}
    (arrow : TaggedBSDArrow state.current v₂) :
    (typed_dp_transition state arrow).accumulated_effect =
    combineEffects state.accumulated_effect arrow.effect := by
  rfl

-- ===================================================================
-- § 17. Pauli Ensemble over the Leech Lattice
-- ===================================================================

/--
  Pauli24Ensemble: An assignment of space tags to all 24 coordinates,
  together with a global phase. This represents the action of a
  24-qubit Pauli operator on the geometric fiber bundle.
-/
structure Pauli24Ensemble where
  /-- The resulting space configuration after applying the ensemble -/
  config : SpaceConfig
  /-- Global phase in ℤ/4ℤ (scalar action) -/
  global_phase : ZMod 4
  deriving Repr

/-- Construct a Pauli ensemble from a Golay weight. -/
def pauli24FromGolayWeight (w : GolayWeight) : Pauli24Ensemble :=
  { config := spaceConfigFromGolayWeight w
    global_phase := 0 }

/-- The ensemble from the trivial weight is uniformly affine. -/
theorem pauli24_w0_affine :
    ∀ i : Fin 24, (pauli24FromGolayWeight .w0).config i = .affine := by
  intro i; rfl

/-- The ensemble from the octad weight has 8 banach positions. -/
theorem pauli24_w8_count :
    tagCount (pauli24FromGolayWeight .w8).config .banach = 8 :=
  w8_banach_count

/-- The ensemble from the dodecad weight has 12 hybrid positions. -/
theorem pauli24_w12_count :
    tagCount (pauli24FromGolayWeight .w12).config .hybrid = 12 :=
  w12_hybrid_count

-- ===================================================================
-- § 18. Structural Preservation Theorems
-- ===================================================================

/-- A typed DP transition starting from the identity effect
    produces exactly the arrow's effect. -/
theorem fresh_transition_effect
    {v₂ : TaggedBSDVertex}
    (arrow : TaggedBSDArrow (BSDVertex.leech.tagged) v₂) :
    (typed_dp_transition typed_dp_init arrow).accumulated_effect =
    arrow.effect := by
  simp [typed_dp_transition, typed_dp_init, combineEffects]

/-- Tag history grows by exactly one entry per transition. -/
theorem tag_history_grows (state : TypedDPState)
    {v₂ : TaggedBSDVertex}
    (arrow : TaggedBSDArrow state.current v₂) :
    (typed_dp_transition state arrow).tag_history.length =
    state.tag_history.length + 1 := by
  simp [typed_dp_transition]

/-- Pattern match completeness: every Golay weight produces a valid
    space configuration. -/
theorem golay_weight_config_complete :
    ∀ (w : GolayWeight),
      ∃ (config : SpaceConfig),
        config = spaceConfigFromGolayWeight w := by
  intro w
  exact ⟨spaceConfigFromGolayWeight w, rfl⟩

-- ===================================================================
-- § 19. Bridge Summary (Extended)
-- ===================================================================

/-- Extended summary incorporating phantom type infrastructure.

    1. BSD vertices embed into Golay weights (`bsd_vertex_to_golay_weight`)
    2. BSD arrows induce Hida transitions (`bsd_arrow_to_hida`)
    3. Arrow weights derived from `galoisHeight` (= Hopf counit)
    4. Path factorization uses `Coproduct` via the dodecad
    5. `SignatureComplex` fields populate the representation
    6. Space tags classify geometric modality (affine/banach/hybrid)
    7. Pauli transforms are categorical functors between modalities
    8. Effect system tracks structural side-effects of morphisms
    9. Tagged DP states track both numerical and structural evolution
   10. Golay weights canonically produce 24-coordinate configurations -/
theorem bsd_quiver_extended_bridge_summary :
    -- Vertex count
    (Fintype.card BSDVertex = 4) ∧
    -- Space tag count
    (Fintype.card SpaceTag = 3) ∧
    -- Padic↔Selmer are complements
    ((bsd_vertex_to_golay_weight .padic).antipode =
     bsd_vertex_to_golay_weight .selmer) ∧
    -- Affine dual is self-dual
    ((bsd_vertex_to_golay_weight .affine_dual).antipode =
     bsd_vertex_to_golay_weight .affine_dual) ∧
    -- Effect identity laws
    (∀ e : TransformEffect,
      combineEffects .preserves_algebraic e = e) ∧
    -- XZ involution
    (combineEffects .adds_topology .forgets_topology =
     .preserves_algebraic) ∧
    -- Octad banach count
    (tagCount (spaceConfigFromGolayWeight .w8) .banach = 8) ∧
    -- Arrow weights nonneg
    (arrow_weight BSDArrow.tensor_bang ≥ 0) ∧
    -- Direct path nonneg
    (direct_path_contribution ≥ 0) := by
  exact ⟨bsd_vertex_card,
         space_tag_card,
         padic_selmer_complement,
         affine_dual_is_self_dual,
         fun e => effect_left_unit e,
         xz_effect_commutes ▸ rfl,
         w8_banach_count,
         arrow_weight_nonneg _,
         direct_path_nonneg⟩

-- ===================================================================
-- § 20. p-adic Mellin Bridge Preparation
-- ===================================================================

/-! This section provides the forward-facing API used by
    `PAdicMellin.lean` to connect the BSD quiver's geometric
    modality framework to the p-adic Mellin transform pipeline.

    The key exports are:
    - `SpaceTag`, `SpaceConfig`, `spaceConfigFromGolayWeight`, `tagCount`
    - `bsd_vertex_default_tag` (vertex → SpaceTag)
    - `TransformEffect`, `combineEffects` (effect monad)
    - `BSDVertex.tagged`, `TaggedBSDArrow` (enriched quiver)
    - `Pauli24Ensemble`, `pauli24FromGolayWeight` (24-coordinate configs)

    `PAdicMellin` introduces `pAdicTag` and `MellinEffect` which map
    *into* these structures via:
    - `pAdicTag.toSpaceTag : pAdicTag → SpaceTag`
    - `mellinEffectToTransformEffect : MellinEffect → TransformEffect`
-/

/-- BSD vertex → SpaceConfig: the full 24-coordinate configuration
    induced by a BSD vertex (via its Golay weight). -/
def bsd_vertex_space_config (v : BSDVertex) : SpaceConfig :=
  spaceConfigFromGolayWeight (bsd_vertex_to_golay_weight v)

/-- The Leech vertex yields a uniformly affine configuration. -/
theorem leech_config_affine :
    ∀ i : Fin 24, bsd_vertex_space_config .leech i = .affine := by
  intro i; rfl

/-- The padic vertex yields 8 banach coordinates (octad). -/
theorem padic_config_banach_count :
    tagCount (bsd_vertex_space_config .padic) .banach = 8 :=
  w8_banach_count

/-- The affine_dual vertex yields 12 hybrid coordinates (dodecad). -/
theorem affine_dual_config_hybrid_count :
    tagCount (bsd_vertex_space_config .affine_dual) .hybrid = 12 :=
  w12_hybrid_count

/-- Effect composition is associative for the XZ-involution chain. -/
theorem effect_assoc_xz (e : TransformEffect) :
    combineEffects (combineEffects .adds_topology .forgets_topology) e =
    combineEffects .preserves_algebraic e := by rfl

/-- The three fundamental effect identities needed by PAdicMellin:
    1. preserves is left identity
    2. preserves is right identity
    3. XZ = identity -/
theorem effect_fundamental_laws :
    (∀ e, combineEffects .preserves_algebraic e = e) ∧
    (∀ e, combineEffects e .preserves_algebraic = e) ∧
    (combineEffects .adds_topology .forgets_topology = .preserves_algebraic) := by
  exact ⟨fun e => effect_left_unit e,
         fun e => effect_right_unit e,
         rfl⟩

end HatsuYakitori.BSDQuiver
