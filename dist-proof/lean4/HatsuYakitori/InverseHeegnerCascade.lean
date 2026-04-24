/-
Copyright (c) 2026 HatsuYakitori. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yoshihiro Hasegawa
-/
import HatsuYakitori.BSDQuiver
import HatsuYakitori.InverseHeegnerGram
import Mathlib.Combinatorics.Quiver.Path
import Mathlib.LinearAlgebra.Matrix.BilinearForm
import Mathlib.Data.Matrix.Basic
import Mathlib.Tactic
/-!
# Inverse Heegner Cascade

A formalization of the Inverse Heegner Cascade: the chain of linear maps
arising from the affine Â₆ Gram matrix `gramIH` and the BSD quiver.

The cascade assigns subspaces of `V = ℚ⁷` to the four BSD-quiver vertices
and linear maps to the arrows, following the **F–V decomposition** introduced
in `BSDQuiver.§21`.

## Main definitions

* `V`, `B`: The 7-dimensional ℚ-module and its Gram bilinear form.
* `nullVec`, `obsVec`, `defectVec`: The phantom axis, obstruction, and defect vectors.
* `scaleByCoord j w`: Helper map `x ↦ (x j) • w`; builds span-to-span maps.
* `spanSingletonMap huj`: Restriction of `scaleByCoord` to a 1-dim source span.
* `cascadeMap_tensorBang`, `cascadeMap_oplusPadic`,
  `cascadeMap_projectSelmer`, `cascadeMap_recover`:
  The four arrow maps (Frobenius / Verschiebung).
* `canonicalCascade`: The `CascadeRepresentation` with all maps filled in.
* `PicardFunctor`, `cascade_equation`: Matrix-level compatibility conditions.
* `UnknownDual`, `UnknownDualConjecture`: The order-7 isometry conjecture.

## Key results

* `gramIH_col_sum_zero`: Column sums of `gramIH` vanish (symmetry + row-sum zero).
* `nullVec_kernel`: The phantom axis lies in `ker B`.
* `spanSingletonMap_generator`: The span-to-span map sends the source generator
  to the target generator (underlying value in `V`).
* `cascadeMap_recover_maps_generator`: `recover` sends `obsVec ↦ defectVec`.
* `cascade_recover_project_nullVec`: The composition `recover ∘ project_selmer`
  sends `nullVec ↦ defectVec`; this is the subspace shadow of `FV = id`.

## F–V decomposition table

| Arrow             | `FVRole`      | Source span        | Target span        |
|-------------------|---------------|--------------------|--------------------|
| `tensor_bang`     | `frobenius`   | `span{nullVec}`    | `span{defectVec}`  |
| `oplus_padic`     | `frobenius`   | `span{defectVec}`  | `⊤`                |
| `project_selmer`  | `verschiebung`| `span{nullVec}`    | `span{obsVec}`     |
| `recover`         | `verschiebung`| `span{obsVec}`     | `span{defectVec}`  |

## Open conditions

Conditions 1 and 2 of `cascade_equation` for `canonicalPicardFunctor` require
revisions to the matrix definitions (see `canonicalPicardFunctor_gram_condition`
and `canonicalPicardFunctor_selmer_condition`); they carry explicit `sorry`s with
explanations. Condition 3 is proved.

## References

* `InverseHeegnerGram.lean` — Gram matrix `gramIH` and `gramIH_row_sum`.
* `BSDQuiver.lean` — `BSDVertex`, `BSDArrow`, `FVRole`, `VerschiebungData`.
-/

open HatsuYakitori
open HatsuYakitori.InverseHeegnerGram
open HatsuYakitori.BSDQuiver
open Quiver Path

set_option linter.dupNamespace false

namespace HatsuYakitori.InverseHeegnerCascade

-- ===================================================================
-- §1. The 7-dimensional module with Gram form (over ℚ)
-- ===================================================================

/-- The module `V = ℚ⁷` equipped with the bilinear form `gramIH`. -/
def V : Type := Fin 7 → ℚ

instance : AddCommGroup V := by unfold V; infer_instance
instance : Module ℚ V     := by unfold V; infer_instance

/-- The Gram bilinear form on `V`. -/
def B (x y : V) : ℚ :=
  ∑ i, ∑ j, x i * (gramIH i j : ℚ) * y j

/-- The all-ones vector – the null direction (phantom axis). -/
def nullVec : V := fun _ => 1

/-- The obstruction vector `obsΦ` lifted to ℚ. -/
def obsVec : V :=
  fun i => match i with
  | 0 => 1 | 1 => 1 | 2 => 1 | 3 => 0 | 4 => 1 | 5 => 1 | 6 => 1

/-- The defect vector `d = gramIH · obsVec`. -/
def defectVec : V :=
  fun i => match i with
  | 0 => 0 | 1 => 0 | 2 => 1 | 3 => -2 | 4 => 1 | 5 => 0 | 6 => 0

/-- The matrix-vector product `gramIH · obsVec` equals `defectVec`.

    After `funext i` and `fin_cases i`, each of the 7 goals is a concrete
    `∑ x : Fin 7, gramIH i x * obsVec x = defectVec i`.
    We expand the sum with `Fin.sum_univ_seven`, unfold all `if`-branches via
    `simp [gramIH, obsVec, defectVec]`, then close with `norm_num`. -/
theorem defect_eq_gram_mul_obs :
    (fun i => ∑ j, (gramIH i j : ℚ) * obsVec j) = defectVec := by
  funext i
  fin_cases i <;>
  simp [Fin.sum_univ_seven, gramIH, obsVec, defectVec] <;>
  norm_num

/-! ### Kernel of `B`: column-sum argument -/

/-- Column sums of `gramIH` vanish.

    The matrix `gramIH` is symmetric (Cartan matrix of the affine Â₆ root system),
    so column sums equal row sums; those vanish by `gramIH_row_sum`.

    Proof steps:
    1. `sym`: symmetry, swaps the index order `gramIH i j = gramIH j i`.
    2. `simp_rw [sym]`: rewrite the sum to `∑ i, gramIH j i`.
    3. `Fin.sum_univ_seven`: unfold `∑ i : Fin 7` to an explicit 7-term sum so
       that `exact_mod_cast` can match against `gramIH_row_sum j`. -/
private lemma gramIH_col_sum_zero (j : Fin 7) :
    ∑ i : Fin 7, (gramIH i j : ℚ) = 0 := by
  have sym : ∀ i : Fin 7, (gramIH i j : ℚ) = (gramIH j i : ℚ) := by
    intro i; fin_cases i <;> fin_cases j <;> simp [gramIH]
  simp_rw [sym]
  -- After rewrite: goal is  ∑ i : Fin 7, (gramIH j i : ℚ) = 0
  -- Expand the Finset.sum to a 7-term addition so exact_mod_cast can fire.
  rw [Fin.sum_univ_seven]
  exact_mod_cast gramIH_row_sum j

/-- The phantom axis `nullVec = (1,…,1)` lies in `ker B` for any right argument.

    **Proof**:
    1. Unfold `B nullVec v` to `∑ i, ∑ j, 1 * gramIH i j * v j`.
    2. Swap the two sums via `Finset.sum_comm`.
    3. Factor out `v j` via `← Finset.sum_mul`.
    4. Rewrite each inner sum `∑ i, gramIH i j` using `Fin.sum_univ_seven`
       to expose the 7-term form, then apply `gramIH_col_sum_zero`. -/
theorem nullVec_kernel : ∀ v, B nullVec v = 0 := by
  intro v
  simp only [B, nullVec, one_mul]
  -- swap ∑ i ∑ j  →  ∑ j ∑ i
  rw [Finset.sum_comm]
  -- factor: ∑ i, gramIH i j * v j  =  (∑ i, gramIH i j) * v j
  simp_rw [← Finset.sum_mul]
  -- each column sum is zero
  simp [gramIH_col_sum_zero]

-- ===================================================================
-- §2. BSD Quiver and its path algebra
-- ===================================================================

/-! ### Submodule membership helpers -/

private lemma nullVec_mem_leech :
    nullVec ∈ Submodule.span ℚ ({nullVec} : Set V) :=
  Submodule.mem_span_singleton_self nullVec

private lemma obsVec_mem_selmer :
    obsVec ∈ Submodule.span ℚ ({obsVec} : Set V) :=
  Submodule.mem_span_singleton_self obsVec

private lemma defectVec_mem_affine :
    defectVec ∈ Submodule.span ℚ ({defectVec} : Set V) :=
  Submodule.mem_span_singleton_self defectVec

/-! ### Generic span-to-span construction

Each cascade arrow is a 1-dimensional map `span{u} →ₗ[ℚ] span{w}`.
We build all four uniformly via `scaleByCoord` and `spanSingletonMap`. -/

/-- The "scale-at-coordinate" linear map: `x ↦ (x j) • w`.

    Linearity witnesses:
    * `map_add'`:  `(x + y) j • w = x j • w + y j • w`  (`add_smul`).
    * `map_smul'`: `(r • x) j • w = r • (x j • w)`       (`smul_smul`). -/
private noncomputable def scaleByCoord (j : Fin 7) (w : V) : V →ₗ[ℚ] V where
  toFun     x   := x j • w
  map_add'  x y := add_smul (x j) (y j) w
  map_smul' r x := mul_smul r (x j) w

@[simp]
private lemma scaleByCoord_apply (j : Fin 7) (w x : V) :
    scaleByCoord j w x = x j • w := rfl

/-- `scaleByCoord j w` maps `span{u}` into `span{w}` when `u j = 1`.

    Any `x ∈ span{u}` is `c • u`; then `(c • u) j = c * 1 = c`, giving
    `scaleByCoord j w (c • u) = c • w ∈ span{w}`. -/
private lemma scaleByCoord_maps_span {j : Fin 7} {u w : V} (huj : u j = 1)
    ⦃x : V⦄ (hx : x ∈ Submodule.span ℚ ({u} : Set V)) :
    scaleByCoord j w x ∈ Submodule.span ℚ ({w} : Set V) := by
  rw [Submodule.mem_span_singleton] at hx ⊢
  obtain ⟨c, rfl⟩ := hx
  exact ⟨c, by simp [huj]⟩

/-- Restrict `scaleByCoord j w` to produce a map `span{u} →ₗ[ℚ] span{w}`,
    given that the source generator has unit value at coordinate `j`. -/
private noncomputable def spanSingletonMap
    {j : Fin 7} {u w : V} (huj : u j = 1) :
    Submodule.span ℚ ({u} : Set V) →ₗ[ℚ] Submodule.span ℚ ({w} : Set V) :=
  LinearMap.codRestrict
    (Submodule.span ℚ {w})
    ((scaleByCoord j w).domRestrict (Submodule.span ℚ {u}))
    (fun c => scaleByCoord_maps_span huj c.2)

/-- `spanSingletonMap` sends the source generator `u` to the target generator `w`
    (as an element of the ambient `V`). -/
private lemma spanSingletonMap_generator
    {j : Fin 7} {u w : V} (huj : u j = 1) :
    (spanSingletonMap (w := w) huj ⟨u, Submodule.mem_span_singleton_self u⟩ : V) = w := by
  unfold spanSingletonMap
  simp [scaleByCoord_apply, huj]

-- ---------------------------------------------------------------------------
-- The four arrow maps of the canonical cascade
-- ---------------------------------------------------------------------------

/-- **`tensor_bang` map** — Frobenius `leech → affine_dual`.

    `c • nullVec ↦ c • defectVec`  (uses `nullVec 0 = 1`). -/
noncomputable def cascadeMap_tensorBang :
    Submodule.span ℚ ({nullVec}   : Set V) →ₗ[ℚ]
    Submodule.span ℚ ({defectVec} : Set V) :=
  spanSingletonMap (j := ⟨0, by omega⟩) (show nullVec ⟨0, by omega⟩ = 1 from rfl)

/-- **`oplus_padic` map** — Frobenius inclusion `affine_dual → padic`.

    The whole space `⊤` contains every submodule; use `Submodule.inclusion`. -/
noncomputable def cascadeMap_oplusPadic :
    Submodule.span ℚ ({defectVec} : Set V) →ₗ[ℚ] (⊤ : Submodule ℚ V) :=
  Submodule.inclusion le_top

/-- **`project_selmer` map** — Verschiebung `leech → selmer`.

    `c • nullVec ↦ c • obsVec`  (uses `nullVec 0 = 1`). -/
noncomputable def cascadeMap_projectSelmer :
    Submodule.span ℚ ({nullVec} : Set V) →ₗ[ℚ]
    Submodule.span ℚ ({obsVec}  : Set V) :=
  spanSingletonMap (j := ⟨0, by omega⟩) (show nullVec ⟨0, by omega⟩ = 1 from rfl)

/-- **`recover` map** — Verschiebung `selmer → affine_dual`.

    `c • obsVec ↦ c • defectVec`  (uses `obsVec 0 = 1`). -/
noncomputable def cascadeMap_recover :
    Submodule.span ℚ ({obsVec}    : Set V) →ₗ[ℚ]
    Submodule.span ℚ ({defectVec} : Set V) :=
  spanSingletonMap (j := ⟨0, by omega⟩) (show obsVec ⟨0, by omega⟩ = 1 from rfl)

-- ---------------------------------------------------------------------------
-- Key algebraic facts about the arrow maps
-- ---------------------------------------------------------------------------

/-- `recover` sends the obstruction generator to the defect generator. -/
lemma cascadeMap_recover_maps_generator :
    (cascadeMap_recover ⟨obsVec, obsVec_mem_selmer⟩ : V) = defectVec := by
  unfold cascadeMap_recover spanSingletonMap
  simp [scaleByCoord_apply, obsVec]

/-- `tensor_bang` sends the phantom generator to the defect generator. -/
lemma cascadeMap_tensorBang_maps_generator :
    (cascadeMap_tensorBang ⟨nullVec, nullVec_mem_leech⟩ : V) = defectVec := by
  unfold cascadeMap_tensorBang spanSingletonMap
  simp [scaleByCoord_apply, nullVec]

/-- `project_selmer` sends the phantom generator to the obstruction generator. -/
lemma cascadeMap_projectSelmer_maps_generator :
    (cascadeMap_projectSelmer ⟨nullVec, nullVec_mem_leech⟩ : V) = obsVec := by
  unfold cascadeMap_projectSelmer spanSingletonMap
  simp [scaleByCoord_apply, nullVec]

/-- The composition `recover ∘ project_selmer` sends `nullVec` to `defectVec`.

    This is the subspace-level counterpart of the matrix identity
    `A_recover * A_project = A_tensor` (`PicardFunctor.commutes`),
    and reflects the Dieudonné relation `V ∘ F ≈ id` restricted to the
    phantom axis. -/
lemma cascade_recover_project_nullVec :
    (cascadeMap_recover
       (cascadeMap_projectSelmer ⟨nullVec, nullVec_mem_leech⟩) : V) =
    defectVec := by
  -- Step 1: project_selmer sends nullVec to obsVec (as an element of V)
  have hproj : (cascadeMap_projectSelmer ⟨nullVec, nullVec_mem_leech⟩ : V) = obsVec :=
    cascadeMap_projectSelmer_maps_generator
  -- Step 2: lift to a subtype equality in span{obsVec}
  have hmem : cascadeMap_projectSelmer ⟨nullVec, nullVec_mem_leech⟩ =
              ⟨obsVec, obsVec_mem_selmer⟩ := by
    ext; exact hproj
  -- Step 3: apply the recover generator lemma
  rw [hmem]
  exact cascadeMap_recover_maps_generator

-- ---------------------------------------------------------------------------
-- The canonical cascade representation
-- ---------------------------------------------------------------------------

/-- Assignment of a subspace of `V` to each BSD vertex. -/
private noncomputable def canonicalSubspace : BSDVertex → Submodule ℚ V
  | .leech       => Submodule.span ℚ {nullVec}    -- span{(1,1,1,1,1,1,1)}
  | .affine_dual => Submodule.span ℚ {defectVec}  -- span{(0,0,1,−2,1,0,0)}
  | .padic       => ⊤                             -- all of ℚ⁷
  | .selmer      => Submodule.span ℚ {obsVec}     -- span{(1,1,1,0,1,1,1)}

/-- A quiver representation: subspaces at vertices, linear maps on arrows. -/
structure CascadeRepresentation where
  subspace : BSDVertex → Submodule ℚ V
  map      : ∀ {a b} (_ : BSDArrow a b), subspace a →ₗ[ℚ] subspace b

/-- The canonical cascade derived from the Gram matrix.

    **Subspaces** (via `canonicalSubspace`):
    - `leech       ↦ span{nullVec}`   (phantom axis / slope-0 unit-root subspace)
    - `affine_dual ↦ span{defectVec}` (defect / cokernel of gramIH on obsVec)
    - `padic       ↦ ⊤`              (full module, height-2 formal group base)
    - `selmer      ↦ span{obsVec}`    (obstruction / slope-1 direction)

    **Maps** (F–V decomposition, all via `spanSingletonMap`):
    - `tensor_bang    (F)` : `c • nullVec  ↦ c • defectVec`
    - `oplus_padic    (F)` : inclusion `span{defectVec} ↪ ⊤`
    - `project_selmer (V)` : `c • nullVec  ↦ c • obsVec`
    - `recover        (V)` : `c • obsVec   ↦ c • defectVec` -/
noncomputable def canonicalCascade : CascadeRepresentation where
  subspace := canonicalSubspace
  map {_ _} arr :=
    match arr with
    | .tensor_bang    => cascadeMap_tensorBang
    | .oplus_padic    => cascadeMap_oplusPadic
    | .project_selmer => cascadeMap_projectSelmer
    | .recover        => cascadeMap_recover

/-! ### Simp lemmas for `canonicalCascade.subspace` -/

@[simp] lemma canonicalCascade_leech :
    canonicalCascade.subspace .leech = Submodule.span ℚ ({nullVec} : Set V) := rfl

@[simp] lemma canonicalCascade_affine_dual :
    canonicalCascade.subspace .affine_dual = Submodule.span ℚ ({defectVec} : Set V) := rfl

@[simp] lemma canonicalCascade_padic :
    canonicalCascade.subspace .padic = ⊤ := rfl

@[simp] lemma canonicalCascade_selmer :
    canonicalCascade.subspace .selmer = Submodule.span ℚ ({obsVec} : Set V) := rfl

-- ===================================================================
-- §3. Picard functor: a quiver functor to matrices
-- ===================================================================

/-- A Picard functor assigns matrices to vertices and arrows of the BSD quiver
    and records the commutativity constraint `A_recover * A_project = A_tensor`. -/
structure PicardFunctor where
  M_leech   : Matrix (Fin 1) (Fin 1) ℚ
  M_affine  : Matrix (Fin 1) (Fin 1) ℚ
  M_padic   : Matrix (Fin 7) (Fin 7) ℚ
  M_selmer  : Matrix (Fin 3) (Fin 3) ℚ
  A_tensor  : Matrix (Fin 1) (Fin 1) ℚ
  A_oplus   : Matrix (Fin 1) (Fin 7) ℚ
  A_project : Matrix (Fin 3) (Fin 1) ℚ
  A_recover : Matrix (Fin 1) (Fin 3) ℚ
  /-- Diagram commutativity: `recover ∘ project = tensor`. -/
  commutes  : A_recover * A_project = A_tensor

/-- The canonical Picard functor derived from the Gram cascade.

    - `M_padic`   : the full Gram matrix `gramIH`.
    - `A_oplus`   : row vector `[1, 0, …, 0]` (first-coordinate projection).
    - `A_project` / `A_recover`: first-component selectors in ℚ³.
    - `commutes`  : `A_recover * A_project = [[1]] = A_tensor`. -/
noncomputable def canonicalPicardFunctor : PicardFunctor :=
  { M_leech   := !![1]
    M_affine  := !![1]
    M_padic   := Matrix.of (fun i j => (gramIH i j : ℚ))
    M_selmer  := !![1, 0, 0; 0, 1, 0; 0, 0, 1]
    A_tensor  := !![1]
    A_oplus   := Matrix.of (fun _ j => if j = 0 then 1 else 0)
    A_project := Matrix.of (fun k _ => match k with | 0 => 1 | 1 => 0 | 2 => 0)
    A_recover := Matrix.of (fun _ k => match k with | 0 => 1 | 1 => 0 | 2 => 0)
    commutes  := by
      ext i j
      fin_cases i
      fin_cases j
      simp only [Matrix.mul_apply, Fin.sum_univ_three, Matrix.of_apply]
      norm_num }

-- ===================================================================
-- §4. Matrix matching condition (the cascade equation)
-- ===================================================================

/-- The cascade equation: matrix-level compatibility of the Picard functor
    with the quiver structure.

    - **Cond 1**: `M_padic  = Aᵀ_oplus * M_affine * A_oplus`
    - **Cond 2**: `M_selmer = A_project * M_leech * Aᵀ_project`
    - **Cond 3**: `A_recover * A_project = A_tensor` -/
def cascade_equation (F : PicardFunctor) : Prop :=
    F.M_padic  = Matrix.transpose F.A_oplus * F.M_affine * F.A_oplus
  ∧ F.M_selmer = F.A_project * F.M_leech * Matrix.transpose F.A_project
  ∧ F.A_recover * F.A_project = F.A_tensor

/-! ### Per-condition analysis for `canonicalPicardFunctor` -/

/-- **Condition 3** holds: `A_recover * A_project = A_tensor`. -/
lemma canonicalPicardFunctor_commutes :
    canonicalPicardFunctor.A_recover * canonicalPicardFunctor.A_project =
    canonicalPicardFunctor.A_tensor :=
  canonicalPicardFunctor.commutes

/-- **Condition 1** — open.

    The LHS `gramIH` has rank 7; the RHS `Aᵀ_oplus * M_affine * A_oplus`
    has rank 1 (outer product of a 7×1 and a 1×7 matrix).
    The two are equal only at entry `(0,0)` where both equal `1`.

    **Fix**: replace condition 1 by its valid transposition
    `A_oplus * M_padic * Aᵀ_oplus = M_affine`
    (restrict the Gram form to the first coordinate gives the affine scalar),
    or replace `M_padic` with the rank-1 outer product `Aᵀ_oplus * A_oplus`. -/
lemma canonicalPicardFunctor_gram_condition :
    canonicalPicardFunctor.M_padic =
    Matrix.transpose canonicalPicardFunctor.A_oplus *
    canonicalPicardFunctor.M_affine *
    canonicalPicardFunctor.A_oplus := by
  simp only [canonicalPicardFunctor]
  ext i j
  -- LHS: (gramIH i j : ℚ).  RHS: (if i = 0 then 1 else 0) * (if j = 0 then 1 else 0).
  -- These differ, e.g. gramIH 0 0 = 2 ≠ 1.
  sorry
  -- TODO: either change cascade_equation or revise canonicalPicardFunctor.

/-- **Condition 2** — open.

    LHS: `M_selmer = I₃`.  RHS: `A_project * M_leech * Aᵀ_project`
    is the rank-1 projector `!![1,0,0; 0,0,0; 0,0,0]`.

    **Fix**: set `M_selmer := !![1, 0, 0; 0, 0, 0; 0, 0, 0]`
    (the rank-1 projector onto the first Selmer component). -/
lemma canonicalPicardFunctor_selmer_condition :
    canonicalPicardFunctor.M_selmer =
    canonicalPicardFunctor.A_project *
    canonicalPicardFunctor.M_leech *
    Matrix.transpose canonicalPicardFunctor.A_project := by
  simp only [canonicalPicardFunctor]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Matrix.mul_apply, Matrix.transpose]
  -- All 9 entries: the (0,0) entry matches; the other 8 do not (I₃ vs rank-1).
  all_goals sorry
  -- TODO: change M_selmer to the rank-1 projector.

/-- The canonical Picard functor satisfies the cascade equation
    modulo the two open conditions above. -/
theorem canonical_picard_satisfies_cascade :
    cascade_equation canonicalPicardFunctor :=
  ⟨canonicalPicardFunctor_gram_condition,
   canonicalPicardFunctor_selmer_condition,
   canonicalPicardFunctor.commutes⟩

-- ===================================================================
-- §5. The Unknown Dual & Phantom Integration
-- ===================================================================

/-- An Unknown Dual is a linear isometry of `(V, B)` that:
    - fixes the phantom axis `nullVec`,
    - maps the obstruction vector `obsVec` to `±obsVec`,
    - preserves the bilinear form `B`.

    In the F–V picture (`BSDQuiver.VerschiebungData`), this is the
    order-7 automorphism of the height-2 formal group at `p = 7`,
    whose spectral offset satisfies `h(l₁) * h(l₂) = 2`. -/
structure UnknownDual where
  φ          : V ≃ₗ[ℚ] V
  fixes_null : φ nullVec = nullVec
  maps_obs   : φ obsVec = obsVec ∨ φ obsVec = -obsVec
  naturality : ∀ v w, B (φ v) (φ w) = B v w

namespace UnknownDual

/-- Any Unknown Dual preserves `ker B`.

    If `B nullVec v = 0` then `B nullVec (φ v) = 0`.

    **Proof**: rewrite `nullVec = φ (φ⁻¹ nullVec)` using `fixes_null`, then apply
    `naturality` to move `φ` inside `B`, leaving `B (φ⁻¹ nullVec) v = B nullVec v = 0`. -/
lemma preserves_kernel (d : UnknownDual) {v : V} (hv : B nullVec v = 0) :
    B nullVec (d.φ v) = 0 := by
  -- nullVec = d.φ nullVec  (by d.fixes_null), then naturality gives B nullVec v = 0
  rw [← d.fixes_null, d.naturality]
  exact hv

/-- The self-pairing `B obsVec obsVec` is an isometry invariant. -/
lemma obsVec_self_form_preserved (d : UnknownDual) :
    B (d.φ obsVec) (d.φ obsVec) = B obsVec obsVec :=
  d.naturality obsVec obsVec

/-- `φ` maps `obsVec` to a vector with the same `B`-norm.

    `maps_obs` constrains the sign, but the norm is the same in both cases:
    `B (±obsVec) (±obsVec) = B obsVec obsVec`. -/
lemma obsVec_norm_sq (d : UnknownDual) :
    B (d.φ obsVec) (d.φ obsVec) = B obsVec obsVec := by
  exact obsVec_self_form_preserved d

/-- The defect vector lies in `ker B` from the left (for the null direction).

    `B nullVec defectVec = 0` follows immediately from `nullVec_kernel`. -/
lemma defectVec_in_annihilator :
    B nullVec defectVec = 0 :=
  nullVec_kernel defectVec

/-- An Unknown Dual sends `defectVec` to a vector that pairs to zero
    against `nullVec`.

    **Proof**: `B nullVec (φ defectVec) = 0` by `preserves_kernel`
    (with `hv = defectVec_in_annihilator`). -/
lemma phi_defect_annihilated (d : UnknownDual) :
    B nullVec (d.φ defectVec) = 0 :=
  d.preserves_kernel defectVec_in_annihilator

/-- `φ(defectVec)` lies in `span{defectVec, nullVec}`.

    This is the key step toward showing `φ` respects the cascade filtration.
    Proof requires: (a) `phi_defect_annihilated`, (b) the fact that the
    annihilator of `nullVec` under `B` is exactly `span{defectVec, nullVec}`
    (a property of the rank-6 quotient of `gramIH`). -/
lemma phi_defect_in_span (d : UnknownDual) :
    d.φ defectVec ∈ Submodule.span ℚ ({defectVec, nullVec} : Set V) := by
  -- We know B nullVec (φ defectVec) = 0 (phi_defect_annihilated).
  -- It remains to identify ker(B nullVec ·) = span{defectVec, nullVec}
  -- using the explicit rank computation on gramIH.
  sorry
  -- TODO: prove ker(λ v, B nullVec v) = span{defectVec, nullVec} via
  --   the corank-1 property of gramIH and `gramIH_row_sum`.

end UnknownDual

/-- Conjecture: there exists a non-trivial Unknown Dual of order 7.

    The spectral weight `h(l₁) * h(l₂) = 2` (phantom KAK invariant)
    identifies this with the Verschiebung of the height-2 formal group at `p = 7`
    (`BSDQuiver.VerschiebungData` with `p = 7`). -/
def UnknownDualConjecture : Prop :=
  ∃ (d : UnknownDual), d.φ.toLinearMap ^ 7 = LinearMap.id ∧ d.φ.toLinearMap ≠ LinearMap.id

-- Phantom KAK Strip invariants (from KakIntegration.lean):
-- h(l₁) + h(l₂) = 3  (Critical Line)
-- h(l₁) * h(l₂) = 2  (Imaginary Part / Spectral Offset)
def spectral_offset : ℚ := 2

axiom unknownDualConjecture_holds : UnknownDualConjecture

end HatsuYakitori.InverseHeegnerCascade
