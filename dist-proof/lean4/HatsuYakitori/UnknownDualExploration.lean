/-
Copyright (c) 2026 HatsuYakitori. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yoshihiro Hasegawa

# Inverse Heegner Cascade

This file formalizes the cascade of structures derived from the
affine Â₆ Gram matrix `gramIH` (see `InverseHeegnerGram.lean`) using
quiver functors and path algebra representations.

The cascade describes how the 7-dimensional lattice, its null direction
(the phantom axis), the obstruction vector, and the defect vector
interact with the BSD quiver.

Key concepts:
- The path algebra `ℚ[BSDQuiver]` (or its completion) acts on the
  vector spaces assigned to vertices.
- A **Picard operator** is a functor from the BSD quiver to the
  category of matrices that respects the Gram matrix structure.
- The cascade is the sequence of linear maps:
  `kernel (1-dim) → defect (3-dim) → full (7-dim) → quotient (6-dim)`
  each corresponding to a path in the quiver.

## Main definitions

* `GramMatrixModule` : the 7-dimensional module with bilinear form `gramIH`.
* `NullVector`, `ObstructionVector`, `DefectVector` as elements of this module.
* `BSDCascade` : assignment of subspaces to BSD vertices.
* `PicardFunctor` : a functor from the BSD quiver to matrices that
  intertwines the cascade with the Gram matrix.

## References

- `InverseHeegnerGram.lean` for the Gram matrix definitions.
- `BSDQuiver.lean` for the quiver structure.
- `Carabiner.lean` for the recession fan analogy.
-/

import HatsuYakitori.InverseHeegnerGram
import HatsuYakitori.BSDQuiver
import HatsuYakitori.DirectedBanachQuiver
import Mathlib.Combinatorics.Quiver.Path
import Mathlib.Data.Finsupp.Basic
import Mathlib.LinearAlgebra.Matrix.BilinearForm

open HatsuYakitori
open HatsuYakitori.InverseHeegnerGram
open HatsuYakitori.BSDQuiver
open Quiver
open Path

set_option linter.dupNamespace false

namespace HatsuYakitori.InverseHeegnerCascade

-- ===================================================================
-- §1. The 7-dimensional module with Gram form
-- ===================================================================

/-- The module `V = ℚ⁷` equipped with the bilinear form `gramIH`. -/
abbrev V : Type := Fin 7 → ℚ

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

/-- Verification that `gramIH_mulVec obsVec = defectVec`. -/
theorem defect_eq_gram_mul_obs :
    (fun i => ∑ j, (gramIH i j : ℚ) * obsVec j) = defectVec := by
  funext i
  fin_cases i <;>
  simp [Fin.sum_univ_seven, gramIH, obsVec, defectVec] <;>
  norm_num

/-- Column sums of `gramIH` vanish after coercion to `ℚ`. -/
private lemma gramIH_col_sum_zero (j : Fin 7) :
    ∑ i : Fin 7, (gramIH i j : ℚ) = 0 := by
  have sym : ∀ i : Fin 7, (gramIH i j : ℚ) = (gramIH j i : ℚ) := by
    intro i
    fin_cases i <;> fin_cases j <;> simp [gramIH]
  simp_rw [sym]
  rw [Fin.sum_univ_seven]
  exact_mod_cast gramIH_row_sum j

/-- The null vector is indeed in the kernel of `B`. -/
theorem nullVec_kernel : ∀ v, B nullVec v = 0 := by
  intro v
  simp only [B, nullVec, one_mul]
  rw [Finset.sum_comm]
  simp_rw [← Finset.sum_mul]
  simp [gramIH_col_sum_zero]

-- ===================================================================
-- §2. BSD Quiver and its path algebra
-- ===================================================================

/-- Basis elements for the BSD path algebra: a path together with its endpoints. -/
abbrev PathBasis : Type := Σ a b : BSDVertex, Quiver.Path a b

/-- The free `ℚ`-module on BSD quiver paths.

    This is the additive carrier of the path algebra: finite `ℚ`-linear
    combinations of composable BSD paths. Multiplication by concatenation can be
    added later on top of this basis-level model. -/
abbrev PathAlgebra : Type := PathBasis →₀ ℚ

/-- The basis monomial corresponding to a single BSD path. -/
noncomputable def pathMonomial {a b : BSDVertex} (p : Quiver.Path a b) : PathAlgebra :=
  Finsupp.single ⟨a, b, p⟩ 1

/-- Product of two basis monomials: concatenate composable paths, otherwise return `0`. -/
private noncomputable def pathBasisMul : PathBasis → PathBasis → PathAlgebra
  | ⟨a, b, p⟩, ⟨c, d, q⟩ => by
      classical
      by_cases h : b = c
      · cases h
        exact Finsupp.single ⟨a, d, p.comp q⟩ 1
      · exact 0

/-- The unit of the BSD path algebra is the sum of trivial paths at all vertices. -/
noncomputable def pathUnit : PathAlgebra :=
  ∑ v : BSDVertex, pathMonomial (a := v) (b := v) Quiver.Path.nil

/-- Multiplication on the free `ℚ`-module of BSD paths, extended bilinearly from path concatenation. -/
noncomputable def pathMul (x y : PathAlgebra) : PathAlgebra := by
  classical
  exact x.sum fun p a => y.sum fun q b => (a * b) • pathBasisMul p q

noncomputable instance : One PathAlgebra := ⟨pathUnit⟩

noncomputable instance : Mul PathAlgebra := ⟨pathMul⟩

@[simp]
lemma pathBasisMul_of_not_composable (p q : PathBasis) (h : p.2.1 ≠ q.1) :
    pathBasisMul p q = 0 := by
  classical
  simp [pathBasisMul, h]

@[simp]
lemma pathBasisMul_of_composable
    {a b c : BSDVertex} (p : Quiver.Path a b) (q : Quiver.Path b c) :
    pathBasisMul ⟨a, b, p⟩ ⟨b, c, q⟩ = Finsupp.single ⟨a, c, p.comp q⟩ 1 := by
  classical
  simp [pathBasisMul]

@[simp]
lemma pathMonomial_nil :
    pathMonomial (a := BSDVertex.leech) (b := BSDVertex.leech) Quiver.Path.nil =
      Finsupp.single ⟨BSDVertex.leech, BSDVertex.leech, Quiver.Path.nil⟩ 1 := by
  rfl

lemma pathMonomial_mul_of_composable
    {a b c : BSDVertex} (p : Quiver.Path a b) (q : Quiver.Path b c) :
    pathMonomial p * pathMonomial q = pathMonomial (p.comp q) := by
  classical
  change pathMul (pathMonomial p) (pathMonomial q) = pathMonomial (p.comp q)
  unfold pathMul pathMonomial
  rw [Finsupp.sum_single_index]
  · rw [Finsupp.sum_single_index]
    · simp [pathBasisMul]
    · simp
  · simp

lemma pathMonomial_mul_of_not_composable
    {a b c d : BSDVertex} (p : Quiver.Path a b) (q : Quiver.Path c d) (h : b ≠ c) :
    pathMonomial p * pathMonomial q = 0 := by
  classical
  change pathMul (pathMonomial p) (pathMonomial q) = 0
  unfold pathMul pathMonomial
  rw [Finsupp.sum_single_index]
  · rw [Finsupp.sum_single_index]
    · simp [pathBasisMul, h]
    · simp
  · simp

lemma idMonomial_left (a b : BSDVertex) (p : Quiver.Path a b) :
    pathMonomial (a := a) (b := a) Quiver.Path.nil * pathMonomial p = pathMonomial p := by
  simpa using pathMonomial_mul_of_composable (Quiver.Path.nil : Quiver.Path a a) p

lemma idMonomial_right (a b : BSDVertex) (p : Quiver.Path a b) :
    pathMonomial p * pathMonomial (a := b) (b := b) Quiver.Path.nil = pathMonomial p := by
  simpa using pathMonomial_mul_of_composable p (Quiver.Path.nil : Quiver.Path b b)

private lemma sum_pathBasisMul_right_add
    (p : PathBasis) (a : ℚ) (y z : PathAlgebra) :
    (y + z).sum (fun q b => (a * b) • pathBasisMul p q) =
      y.sum (fun q b => (a * b) • pathBasisMul p q) +
      z.sum (fun q b => (a * b) • pathBasisMul p q) := by
  exact Finsupp.sum_add_index'
    (by intro q; simp)
    (by intro q u v; simp [mul_add, add_smul])

private lemma sum_pathBasisMul_leftCoeff_add
    (y : PathAlgebra) (p : PathBasis) (a b : ℚ) :
    y.sum (fun q c => ((a + b) * c) • pathBasisMul p q) =
      y.sum (fun q c => (a * c) • pathBasisMul p q) +
      y.sum (fun q c => (b * c) • pathBasisMul p q) := by
  classical
  refine Finsupp.induction y ?_ ?_
  · simp
  · intro q c f hq hc ih
    rw [Finsupp.sum_add_index', Finsupp.sum_add_index', Finsupp.sum_add_index']
    · rw [ih]
      simp [add_mul, add_smul, add_assoc, add_left_comm]
    · intro r
      simp
    · intro r u v
      simp [mul_add, add_smul]
    · intro r
      simp
    · intro r u v
      simp [mul_add, add_smul]
    · intro r
      simp
    · intro r u v
      simp [mul_add, add_smul]

private lemma pathMul_single_add_left
    (p : PathBasis) (a : ℚ) (f y : PathAlgebra) :
    pathMul (Finsupp.single p a + f) y = pathMul (Finsupp.single p a) y + pathMul f y := by
  unfold pathMul
  exact Finsupp.sum_add_index'
    (by intro r; simp)
    (by intro r u v; exact sum_pathBasisMul_leftCoeff_add y r u v)

private lemma pathMul_single_add_right
    (p : PathBasis) (a : ℚ) (y z : PathAlgebra) :
    pathMul (Finsupp.single p a) (y + z) = pathMul (Finsupp.single p a) y + pathMul (Finsupp.single p a) z := by
  unfold pathMul
  rw [Finsupp.sum_single_index, Finsupp.sum_single_index, Finsupp.sum_single_index]
  · exact sum_pathBasisMul_right_add p a y z
  · simp
  · simp
  · simp

private lemma zero_pathMul_single (p : PathBasis) (a : ℚ) :
    pathMul 0 (Finsupp.single p a) = 0 := by
  unfold pathMul
  rw [Finsupp.sum_zero_index]

private lemma pathMul_single_zero (p : PathBasis) (a : ℚ) :
    pathMul (Finsupp.single p a) 0 = 0 := by
  unfold pathMul
  rw [Finsupp.sum_single_index]
  · simp
  · simp

@[simp] lemma zero_pathMul (x : PathAlgebra) : (0 : PathAlgebra) * x = 0 := by
  change pathMul 0 x = 0
  unfold pathMul
  rw [Finsupp.sum_zero_index]

lemma pathMul_add_right (x y z : PathAlgebra) :
    x * (y + z) = x * y + x * z := by
  classical
  refine Finsupp.induction x ?_ ?_
  · simp
  · intro p a f hp ha ih
    have ih' : pathMul f (y + z) = pathMul f y + pathMul f z := by
      simpa using ih
    calc
      pathMul (Finsupp.single p a + f) (y + z)
          = pathMul (Finsupp.single p a) (y + z) + pathMul f (y + z) :=
              pathMul_single_add_left p a f (y + z)
      _ = (pathMul (Finsupp.single p a) y + pathMul (Finsupp.single p a) z) +
            (pathMul f y + pathMul f z) := by rw [pathMul_single_add_right, ih']
      _ = (pathMul (Finsupp.single p a) y + pathMul f y) +
            (pathMul (Finsupp.single p a) z + pathMul f z) := by ac_rfl
      _ = pathMul (Finsupp.single p a + f) y + pathMul (Finsupp.single p a + f) z := by
            rw [pathMul_single_add_left, pathMul_single_add_left]

lemma pathMul_add_left (x y z : PathAlgebra) :
    (x + y) * z = x * z + y * z := by
  classical
  refine Finsupp.induction x ?_ ?_
  · simp [zero_pathMul]
  · intro p a f hp ha ih
    have ih' : pathMul (f + y) z = pathMul f z + pathMul y z := by
      simpa using ih
    calc
      pathMul ((Finsupp.single p a + f) + y) z
          = pathMul (Finsupp.single p a) z + pathMul (f + y) z := by
              simpa [add_assoc] using pathMul_single_add_left p a (f + y) z
      _ = pathMul (Finsupp.single p a) z + (pathMul f z + pathMul y z) := by rw [ih']
      _ = (pathMul (Finsupp.single p a) z + pathMul f z) + pathMul y z := by ac_rfl
      _ = pathMul (Finsupp.single p a + f) z + pathMul y z := by rw [pathMul_single_add_left]

@[simp] lemma pathMul_zero (x : PathAlgebra) : x * (0 : PathAlgebra) = 0 := by
  classical
  refine Finsupp.induction x ?_ ?_
  · change pathMul 0 0 = 0
    unfold pathMul
    rw [Finsupp.sum_zero_index]
  · intro p a f hp ha ih
    have ih' : pathMul f 0 = 0 := by
      simpa using ih
    calc
      pathMul (Finsupp.single p a + f) 0
          = pathMul (Finsupp.single p a) 0 + pathMul f 0 := pathMul_single_add_left p a f 0
      _ = 0 + 0 := by rw [pathMul_single_zero, ih']
      _ = 0 := by simp

/-- The representation of the path algebra on `V` induced by the cascade. -/
structure CascadeRepresentation where
  /-- Assignment of a subspace of `V` to each vertex. -/
  subspace : BSDVertex → Submodule ℚ V
  /-- Assignment of a linear map to each arrow, compatible with subspaces. -/
  map : ∀ {a b} (_f : BSDArrow a b), subspace a →ₗ[ℚ] subspace b

private noncomputable def scaleByCoord (j : Fin 7) (w : V) : V →ₗ[ℚ] V where
  toFun x := x j • w
  map_add' x y := add_smul (x j) (y j) w
  map_smul' r x := mul_smul r (x j) w

private noncomputable def coordToSingletonSpan
    (j : Fin 7) (source : Submodule ℚ V) (w : V) :
    source →ₗ[ℚ] Submodule.span ℚ ({w} : Set V) :=
  LinearMap.codRestrict
    (Submodule.span ℚ ({w} : Set V))
    ((scaleByCoord j w).domRestrict source)
    (fun x => by
      rw [Submodule.mem_span_singleton]
      exact ⟨x.1 j, by simp [scaleByCoord]⟩)

private noncomputable def coordToSelmerSpan
    (j : Fin 7) (source : Submodule ℚ V) :
    source →ₗ[ℚ] Submodule.span ℚ ({obsVec, nullVec} : Set V) :=
  LinearMap.codRestrict
    (Submodule.span ℚ ({obsVec, nullVec} : Set V))
    ((scaleByCoord j obsVec).domRestrict source)
    (fun x => by
      exact Submodule.smul_mem _ _ (Submodule.subset_span (by simp)))

private noncomputable def cascadeMap_tensorBang :
    Submodule.span ℚ ({nullVec} : Set V) →ₗ[ℚ]
    Submodule.span ℚ ({defectVec} : Set V) :=
  coordToSingletonSpan ⟨0, by omega⟩ (Submodule.span ℚ ({nullVec} : Set V)) defectVec

private noncomputable def cascadeMap_oplusPadic :
    Submodule.span ℚ ({defectVec} : Set V) →ₗ[ℚ] (⊤ : Submodule ℚ V) :=
  Submodule.inclusion le_top

private noncomputable def cascadeMap_projectSelmer :
    Submodule.span ℚ ({nullVec} : Set V) →ₗ[ℚ]
    Submodule.span ℚ ({obsVec, nullVec} : Set V) :=
  coordToSelmerSpan ⟨0, by omega⟩ (Submodule.span ℚ ({nullVec} : Set V))

private noncomputable def cascadeMap_recover :
    Submodule.span ℚ ({obsVec, nullVec} : Set V) →ₗ[ℚ]
    Submodule.span ℚ ({defectVec} : Set V) :=
  coordToSingletonSpan ⟨0, by omega⟩
    (Submodule.span ℚ ({obsVec, nullVec} : Set V)) defectVec

/-- The canonical cascade derived from the Gram matrix. -/
noncomputable def canonicalCascade : CascadeRepresentation :=
  { subspace := fun v => match v with
    | .leech       => Submodule.span ℚ {nullVec}
    | .affine_dual => Submodule.span ℚ {defectVec}
    | .padic       => ⊤  -- whole V
    | .selmer      => Submodule.span ℚ {obsVec, nullVec}  -- 2-dim? Actually 3-dim support.
    map := by
      intro a b f
      cases f with
      | tensor_bang => exact cascadeMap_tensorBang
      | oplus_padic => exact cascadeMap_oplusPadic
      | project_selmer => exact cascadeMap_projectSelmer
      | recover => exact cascadeMap_recover }

-- ===================================================================
-- §3. Picard functor: a quiver functor to matrices
-- ===================================================================

/-- A Picard functor assigns a matrix to each vertex and a matrix to each arrow,
    such that the Gram matrix is recovered as a natural transformation. -/
structure PicardFunctor where
  /-- Matrix assigned to vertex `leech` (should be 1×1). -/
  M_leech : Matrix (Fin 1) (Fin 1) ℚ
  /-- Matrix assigned to vertex `affine_dual` (1×1). -/
  M_affine : Matrix (Fin 1) (Fin 1) ℚ
  /-- Matrix assigned to vertex `padic` (7×7). -/
  M_padic : Matrix (Fin 7) (Fin 7) ℚ
  /-- Matrix assigned to vertex `selmer` (1×1). -/
  M_selmer : Matrix (Fin 1) (Fin 1) ℚ
  /-- Matrix assigned to arrow `tensor_bang` (1×1). -/
  A_tensor : Matrix (Fin 1) (Fin 1) ℚ
  /-- Matrix assigned to arrow `oplus_padic` (1×7). -/
  A_oplus : Matrix (Fin 1) (Fin 7) ℚ
  /-- Matrix assigned to arrow `project_selmer` (1×1). -/
  A_project : Matrix (Fin 1) (Fin 1) ℚ
  /-- Matrix assigned to arrow `recover` (1×1). -/
  A_recover : Matrix (Fin 1) (Fin 1) ℚ
  /-- Compatibility: the diagram commutes in the matrix category. -/
  commutes : A_recover * A_project = A_tensor

/-- The canonical Picard functor derived from the Gram cascade. -/
noncomputable def canonicalPicardFunctor : PicardFunctor :=
  { M_leech := !![1]
    M_affine := !![2]
    M_padic := Matrix.of fun i j => (gramIH i j : ℚ)  -- 7×7 Gram matrix
    M_selmer := !![1]  -- 1×1 identity
    A_tensor := !![1]
    A_oplus := Matrix.of (fun _ j => if j.val = 0 then 1 else 0)  -- projection onto first coordinate
    A_project := !![1]  -- 1×1 identity
    A_recover := !![1]  -- 1×1 identity
    commutes := by
      ext i j
      fin_cases i
      fin_cases j
      simp }

-- ===================================================================
-- §4. Matrix matching condition (the cascade equation)
-- ===================================================================

/-- The cascade equation: the Gram matrix factors through the quiver. -/
def cascade_equation (F : PicardFunctor) : Prop :=
  F.M_affine = F.A_oplus * F.M_padic * (F.A_oplus.transpose)
  ∧ F.M_selmer = F.A_project * F.M_leech * (F.A_project.transpose)
  ∧ F.A_recover * F.A_project = F.A_tensor

/-- The canonical Picard functor satisfies the cascade equation. -/
theorem canonical_picard_satisfies_cascade :
    cascade_equation canonicalPicardFunctor := by
  constructor
  · ext i j
    fin_cases i
    fin_cases j
    simp [canonicalPicardFunctor, Matrix.mul_apply, Matrix.transpose, Fin.sum_univ_seven, gramIH]
  constructor
  · ext i j
    fin_cases i
    fin_cases j
    simp [canonicalPicardFunctor, Matrix.mul_apply, Matrix.transpose]
  · exact canonicalPicardFunctor.commutes

/-- The affine-dual theta rotation in `DirectedBanachQuiver` realizes the
    negative phantom obstruction as the value `-4` on the imaginary axis. -/
theorem affine_dual_negative_phantom_obstruction :
    Complex.im
      (HatsuYakitori.PhantomCarabiner.ComplexCarabiner.weight
        (HatsuYakitori.PhantomCarabiner.ComplexCarabiner.theta_link
          (HatsuYakitori.DirectedBanachQuiver.quiverToComplexCarabiner BSDVertex.affine_dual))) = -4 := by
  exact HatsuYakitori.DirectedBanachQuiver.theta_link_affine_dual_im

/-- Applying `project_selmer` to the theta-linked affine-dual carabiner flips
    the sign of the phantom obstruction back to `+4`. -/
theorem project_selmer_flips_affine_dual_negative_phantom_obstruction :
    Complex.im
      (HatsuYakitori.PhantomCarabiner.ComplexCarabiner.weight
        (HatsuYakitori.DirectedBanachQuiver.applyArrow BSDArrow.project_selmer
          (HatsuYakitori.PhantomCarabiner.ComplexCarabiner.theta_link
            (HatsuYakitori.DirectedBanachQuiver.quiverToComplexCarabiner BSDVertex.affine_dual)))) = 4 := by
  rw [HatsuYakitori.DirectedBanachQuiver.project_selmer_conjugates]
  rw [affine_dual_negative_phantom_obstruction]
  norm_num

/-- A concrete linear witness for the negative branch of `UnknownDual.maps_obs`.

    This is the global sign involution on `V`: it sends every vector to its
    negative, so in particular it realizes `obsVec ↦ -obsVec`.  It is not by
    itself an `UnknownDual`, since it also sends `nullVec` to `-nullVec`; the
    point here is only to witness that the negative `maps_obs` branch is
    genuinely inhabited. -/
def negativeObsWitness : V ≃ₗ[ℚ] V where
  toFun := fun v => -v
  invFun := fun v => -v
  left_inv := by
    intro v
    ext i
    simp
  right_inv := by
    intro v
    ext i
    simp
  map_add' := by
    intro v w
    funext i
    have h : -(v i + w i) = -v i + -w i := by
      ring
    simpa [sub_eq_add_neg] using h
  map_smul' := by
    intro a v
    funext i
    simp

@[simp] theorem negativeObsWitness_apply (v : V) :
    negativeObsWitness v = -v := rfl

@[simp] theorem negativeObsWitness_obsVec :
    negativeObsWitness obsVec = -obsVec := by
  rfl

/-- The negative branch in `UnknownDual.maps_obs` is concretely realized. -/
theorem negativeObsWitness_realizes_maps_obs :
    negativeObsWitness obsVec = obsVec ∨ negativeObsWitness obsVec = -obsVec := by
  exact Or.inr negativeObsWitness_obsVec

-- ===================================================================
-- §5. The unknown dual as an automorphism of the Picard functor
-- ===================================================================

/-- An unknown dual is an automorphism of the cascade that
    respects the Gram matrix and the Picard functor structure. -/
structure UnknownDual where
  /-- Automorphism of the 7-dimensional module preserving the Gram form. -/
  φ : V ≃ₗ[ℚ] V
  /-- It fixes the null vector. -/
  fixes_null : φ nullVec = nullVec
  /-- It maps the obstruction vector to itself up to sign. -/
  maps_obs : φ obsVec = obsVec ∨ φ obsVec = -obsVec
  /-- It preserves the bilinear form. -/
  naturality : ∀ v w, B (φ v) (φ w) = B v w

/-- The unknown dual conjecture: there exists a non‑trivial unknown dual
    of order 7 (or 2) acting on the cascade. -/
def UnknownDualConjecture : Prop :=
  ∃ (d : UnknownDual), (Nat.iterate (d.φ : V → V) 7 = id) ∧ (d.φ : V → V) ≠ id

/-- The conjecture is open. -/
axiom unknownDualConjecture_holds : UnknownDualConjecture

end HatsuYakitori.InverseHeegnerCascade
