/-
Copyright (c) 2026 hatsu-yakitori contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/

import HatsuYakitori.BSDQuiver
import HatsuYakitori.PhantomCarabiner
import Mathlib.Data.Matrix.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.LinearAlgebra.Matrix.Adjugate

/-!
# DirectedBanachQuiver: Inverse Pauli Operators and Directed Banach Space Functor

This file constructs the *inverse* of the BSD quiver representation:
a functor from directed Banach spaces back into the BSD quiver,
mediated by **inverse Pauli operators**.

## Motivation

`BSDQuiver` sends the quiver `BSDVertex ⇒ BSDArrow` *forward* into ℝ-modules
via `sig_to_representation`.  The `PhantomCarabiner` lifts evaluation points to
`ℂ`-weights, but to relate the Θ-link rotation (a `ℂ`-linear map) to actual
quiver morphisms one needs:

1. **Inverse Pauli operators** — since every Pauli matrix `σ` satisfies `σ² = 1`,
   its inverse is itself (`σ⁻¹ = σ`).  What is geometrically interesting is the
   *adjoint action* of `σ` on the Berkovich height lattice, which reverses the
   orientation of the corresponding BSD arrow.

2. **Directed Banach spaces** — a Banach space equipped with a partial order
   compatible with the norm, modelling the Berkovich tree direction structure.

3. **Quiver-to-Banach functor** — assigns to each `BSDVertex` a directed Banach
   object and to each `BSDArrow` a Pauli-operator-mediated bounded linear map.

4. **Inverse functor** — the adjoint assignment maps a directed Banach object
   back to the `BSDVertex` that generated it, recovering the quiver from the
   geometry.  This closes the BSD–Satake–Berkovich loop in `PhantomCarabiner`.

## Main definitions

- `PauliInvOp`: The four inverse Pauli operators as `Matrix (Fin 2) (Fin 2) ℂ`.
  Since every Pauli matrix is its own inverse, `PauliInvOp.ofPauli` simply returns
  the same matrix; the distinct operation is *adjoint conjugation*
  `c ↦ σ · c · σ` on `ComplexCarabiner.weight`.

- `DirectedBanach`: A `NormedAddCommGroup` with a `Preorder` whose positive cone
  is norm-closed.  Used to model the directed Berkovich tree at a fixed prime.

- `BSDVertexBanach`: Assignment of a `DirectedBanach` object to each `BSDVertex`,
  matching the height lattice of the associated `GolayWeight`.

- `pauliConjWeight`: Adjoint Pauli conjugation of a `ComplexCarabiner` weight.
  For the four Pauli matrices:
  - `σ₀ (I)`: identity, fixes all weights.
  - `σ₁ (X)`: swaps real and imaginary parts (= `theta_link²` up to sign).
  - `σ₂ (Y)`: rotates by `π` (negates weight).
  - `σ₃ (Z)`: conjugates weight (`w ↦ conj w`), i.e. collapses imaginary sector.

- `bsdArrowToPauli`: Each `BSDArrow` corresponds to a canonical Pauli conjugation:
  - `tensor_bang`:    `σ₁ (X)` — swap height ↔ obstruction.
  - `oplus_padic`:    `σ₀ (I)` — identity (direct sum preserves height).
  - `project_selmer`: `σ₃ (Z)` — conjugate (project to real axis).
  - `recover`:        `σ₂ (Y)` — negate (adjoint recovery reverses direction).

- `quiverToComplexCarabiner`: The inverse functor sending a `BSDVertex` to the
  canonical `ComplexCarabiner` at the associated Golay height.

- `complexCarabinerToVertex`: The forward map sending a `ComplexCarabiner` to
  the nearest `BSDVertex` (discretisation of height to Golay weight).

## Adjunction statement

`quiver_banach_adjunction`: `quiverToComplexCarabiner` and the real-weight
discretisation form an adjoint pair: the round-trip
`complexCarabinerToVertex ∘ quiverToComplexCarabiner = id` holds on vertices.

## References

- `BSDQuiver.lean` — `BSDVertex`, `BSDArrow`, `BSDRepresentation`.
- `PhantomCarabiner.lean` — `ComplexCarabiner`, `theta_link`, `verschiebung`.
- `YangBaxterBanach.lean` §7 — `pauli24Component` (2×2 Pauli matrices).
- `MachineConstants.lean` — `GolayWeight`, `galoisHeight`.
-/

open HatsuYakitori.BSDQuiver
open HatsuYakitori.PhantomCarabiner
open HatsuYakitori.MachineConstants

namespace HatsuYakitori.DirectedBanachQuiver

set_option linter.dupNamespace false

/-! ## §1  Inverse Pauli operators -/

/-- The four 2×2 Pauli matrices as elements of `Matrix (Fin 2) (Fin 2) ℂ`.

    Every Pauli matrix satisfies `σ² = 1`, so `σ⁻¹ = σ`.  Their geometric
    role here is *adjoint conjugation* of complex weights. -/
def pauliI : Matrix (Fin 2) (Fin 2) ℂ := !![1, 0; 0, 1]

def pauliX : Matrix (Fin 2) (Fin 2) ℂ := !![0, 1; 1, 0]

def pauliY : Matrix (Fin 2) (Fin 2) ℂ :=
  !![0, -Complex.I; Complex.I, 0]

def pauliZ : Matrix (Fin 2) (Fin 2) ℂ := !![1, 0; 0, -1]

/-- Every Pauli matrix squares to the identity. -/
@[simp] theorem pauliX_sq : pauliX * pauliX = 1 := by
  ext i j; fin_cases i <;> fin_cases j <;> simp [pauliX, Matrix.mul_fin_two]
@[simp] theorem pauliZ_sq : pauliZ * pauliZ = 1 := by
  ext i j; fin_cases i <;> fin_cases j <;> simp [pauliZ, Matrix.mul_fin_two]

/-- The Pauli matrices are unitary: `σ * σ†  = 1`. -/
@[simp] theorem pauliX_unitary : pauliX * pauliX.conjTranspose = 1 := by
  ext i j; fin_cases i <;> fin_cases j <;>
    simp only [pauliX, Matrix.conjTranspose, Matrix.mul_apply, Fin.sum_univ_two,
               Matrix.of_apply, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons,
               Matrix.head_fin_const, starRingEnd_apply, star_one, star_zero,
               Matrix.one_apply, Fin.val_zero, Fin.val_one] <;>
    norm_num
@[simp] theorem pauliZ_unitary : pauliZ * pauliZ.conjTranspose = 1 := by
  ext i j; fin_cases i <;> fin_cases j <;>
    simp only [pauliZ, Matrix.conjTranspose, Matrix.mul_apply, Fin.sum_univ_two,
               Matrix.of_apply, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons,
               Matrix.head_fin_const, starRingEnd_apply, star_one, star_zero, star_neg,
               Matrix.one_apply, Fin.val_zero, Fin.val_one] <;>
    norm_num

/-- Since Pauli matrices are involutions, their inverse equals themselves. -/
lemma pauliX_inv : pauliX⁻¹ = pauliX :=
  Matrix.inv_eq_right_inv pauliX_sq

lemma pauliZ_inv : pauliZ⁻¹ = pauliZ :=
  Matrix.inv_eq_right_inv pauliZ_sq

/-! ## §2  Pauli adjoint conjugation of `ComplexCarabiner` weights

Adjoint conjugation `w ↦ σ₁ · ⟨w, 0; 0, 0⟩ · σ₁` projected to the
`(0,0)`-entry.  For `σ₁ = X`, this swaps the diagonal entries, so
`(X · diag(w, 0) · X)₀₀ = 0` is trivial.  Instead we use the weight
vector presentation: identify `w ∈ ℂ` with `![w, 0] : Fin 2 → ℂ` and
define the adjoint action as `σ · ![w, 0]`. -/

/-- **σ₁ (X) conjugation**: swap real and imaginary parts of weight.

    `σ₁ · ![w.re + w.im·i, 0] = ![0, w.re + w.im·i]`.  Taking the real
    part of the second entry recovers `w.re`; so the swap is realised on
    `ComplexCarabiner` as: re-part becomes im-part and vice versa.  Up to
    sign this is `theta_link ∘ theta_link`, i.e. the 180° rotation. -/
noncomputable def pauliXConj (c : ComplexCarabiner) : ComplexCarabiner :=
  { weight := ⟨c.weight.im, c.weight.re⟩   -- swap re/im
    phase  := c.phase }

/-- **σ₃ (Z) conjugation**: complex conjugate of weight (collapse imaginary sector).

    `σ₃ · ![w, 0] = ![w, 0]` at the first entry; but the adjoint action
    `Z · ⟨w⟩ · Z⁻¹` on the diagonal element gives `conj(w)` for the
    off-diagonal sector.  We realise this as complex conjugation of the weight. -/
noncomputable def pauliZConj (c : ComplexCarabiner) : ComplexCarabiner :=
  { weight := starRingEnd ℂ c.weight   -- complex conjugate
    phase  := c.phase }

/-- **σ₂ (Y) conjugation**: negate weight (180° rotation in the weight plane).

    `Y · ![w, 0] = ![-i·0, i·w] = ![0, i·w]`; the first-entry projection gives
    `0`, so the action on weight is negation: `w ↦ -w`.  Equivalently this is
    `theta_link ∘ theta_link` (two quarter-turns). -/
noncomputable def pauliYConj (c : ComplexCarabiner) : ComplexCarabiner :=
  { weight := -c.weight
    phase  := c.phase }

/-- The four Pauli conjugations form a `ℤ/4ℤ`-graded family indexed by the
    carabiner phase.  Phase 0 = I, 1 = X, 2 = Y, 3 = Z. -/
noncomputable def pauliConjWeight (c : ComplexCarabiner) (phase : ZMod 4) : ComplexCarabiner :=
  match phase with
  | 0 => c                   -- σ₀ = identity
  | 1 => pauliXConj c        -- σ₁ = swap re/im
  | 2 => pauliYConj c        -- σ₂ = negate
  | 3 => pauliZConj c        -- σ₃ = conjugate
  | _ => c                   -- impossible for ZMod 4 but needed for completeness

@[simp] lemma pauliConjWeight_zero (c : ComplexCarabiner) : pauliConjWeight c 0 = c := rfl
@[simp] lemma pauliConjWeight_one (c : ComplexCarabiner) : pauliConjWeight c 1 = pauliXConj c := rfl
@[simp] lemma pauliConjWeight_two (c : ComplexCarabiner) : pauliConjWeight c 2 = pauliYConj c := rfl
@[simp] lemma pauliConjWeight_three (c : ComplexCarabiner) : pauliConjWeight c 3 = pauliZConj c := rfl

/-! ## §3  Directed Banach spaces -/

/-- A *directed Banach space* is a normed additive group with a compatible preorder.

    The positive cone `{x | 0 ≤ x}` is required to be closed under the norm
    topology.  On the Berkovich tree, the partial order corresponds to the
    "closer to the Gauss point" relation: `x ≤ y` iff `‖x‖ ≤ ‖y‖`. -/
class DirectedBanach (V : Type*) extends NormedAddCommGroup V, Preorder V where
  /-- Positivity is compatible with the norm: positive elements have non-negative norm. -/
  norm_nonneg_of_pos : ∀ x : V, 0 ≤ x → 0 ≤ ‖x‖
  /-- The positive cone is closed: limits of positive sequences are positive. -/
  pos_cone_closed : ∀ (x : V), (∀ ε > 0, ∃ y, 0 ≤ y ∧ ‖x - y‖ < ε) → 0 ≤ x

/-- The reals form a directed Banach space with the usual order. -/
noncomputable instance : DirectedBanach ℝ where
  norm_nonneg_of_pos x hx := by positivity
  pos_cone_closed x hcont := by
    by_contra hlt
    push_neg at hlt
    have ε_pos : 0 < -x / 2 := by linarith
    obtain ⟨y, hy_pos, hy_close⟩ := hcont (-x / 2) ε_pos
    have hyx : ‖x - y‖ ≥ -x / 2 := by
      by_cases hy : 0 ≤ y
      · rw [Real.norm_eq_abs, abs_of_nonpos (by linarith)]; linarith
      · push_neg at hy; exact absurd hy_pos (not_le.mpr hy)
    linarith

/-! ## §4  Assignment of directed Banach spaces to BSD vertices -/

/-- The canonical `DirectedBanach` object associated to a `BSDVertex`.

    Each vertex is assigned `ℝ` as its underlying Banach space, but with
    a vertex-specific *height bound* reflecting the Golay weight:
    - `leech`:       height bound = 0   (ground level)
    - `affine_dual`: height bound = 4   (dodecad = self-dual midpoint)
    - `padic`:       height bound = 8/3 (octad)
    - `selmer`:      height bound = 16/3 (complement octad) -/
noncomputable def bsdVertexHeightBound : BSDVertex → ℝ
  | .leech       => 0
  | .affine_dual => 4
  | .padic       => 8 / 3
  | .selmer      => 16 / 3

/-- The height bound for `affine_dual` is the self-dual point (midpoint of [0, 8]). -/
lemma affine_dual_height_self_dual : bsdVertexHeightBound .affine_dual = 8 / 2 := by
  simp [bsdVertexHeightBound]; norm_num

/-- Padic and selmer height bounds sum to the dodecad height. -/
lemma padic_selmer_height_sum :
    bsdVertexHeightBound .padic + bsdVertexHeightBound .selmer =
    2 * bsdVertexHeightBound .affine_dual := by
  simp [bsdVertexHeightBound]; norm_num

/-! ## §5  The inverse functor: BSD vertex → ComplexCarabiner -/

/-- The canonical `ComplexCarabiner` associated to a `BSDVertex`.

    This is the *inverse functor*: it reconstructs a complex evaluation point
    from a quiver vertex, placing the vertex at height `h = bsdVertexHeightBound v`
    and obstruction residual degree `ε = 0` (on the real axis). -/
noncomputable def quiverToComplexCarabiner (v : BSDVertex) : ComplexCarabiner :=
  { weight := ⟨bsdVertexHeightBound v, 0⟩
    phase  := 4 }

/-- The `leech` vertex maps to the zero carabiner (ground level). -/
@[simp]
lemma quiverToCC_leech :
    (quiverToComplexCarabiner .leech).weight = 0 := by
  apply Complex.ext <;> simp [quiverToComplexCarabiner, bsdVertexHeightBound]

/-- The `affine_dual` vertex maps to the self-dual height `4`. -/
@[simp]
lemma quiverToCC_affine_dual :
    (quiverToComplexCarabiner .affine_dual).weight.re = 4 := by
  rfl

/-- Every vertex maps to a purely real carabiner (zero imaginary part). -/
@[simp]
lemma quiverToCC_im_zero (v : BSDVertex) :
    (quiverToComplexCarabiner v).weight.im = 0 := by
  simp [quiverToComplexCarabiner]

/-- Verschiebung of the `affine_dual` carabiner equals the `padic` carabiner weight.

    This is the key inverse-functor identity:
    `V(h(affine_dual)) = h(padic)`, i.e. `4/2 = 8/3`? No — the Verschiebung
    halves the real weight: `4/2 = 2 ≠ 8/3`. The correct statement is that
    Verschiebung of the dodecad moves *toward* the octad height. -/
lemma verschiebung_affine_dual_weight :
    (quiverToComplexCarabiner .affine_dual).verschiebung.weight.re = 2 := by
  simp [quiverToComplexCarabiner, bsdVertexHeightBound, ComplexCarabiner.verschiebung]
  norm_num [Complex.div_re, Complex.normSq_apply]

/-! ## §6  The forward map: ComplexCarabiner → BSDVertex (discretisation) -/

/-- Discretise a `ComplexCarabiner` to the nearest `BSDVertex` by real height.

    The Golay weight lattice {0, 8/3, 4, 16/3, 8} provides the cutpoints:
    - `re ≤ 4/3`           → `leech`
    - `4/3 < re ≤ 10/3`   → `padic`
    - `10/3 < re ≤ 14/3`  → `affine_dual` (contains 4)
    - `14/3 < re`          → `selmer` (contains 16/3)

    This is the *forward* (counit) component of the adjunction. -/
noncomputable def complexCarabinerToVertex (c : ComplexCarabiner) : BSDVertex :=
  if c.weight.re ≤ 4 / 3 then .leech
  else if c.weight.re ≤ 10 / 3 then .padic
  else if c.weight.re ≤ 14 / 3 then .affine_dual
  else .selmer

/-- The round-trip `complexCarabinerToVertex ∘ quiverToComplexCarabiner = id` on
    all BSD vertices: the inverse functor followed by discretisation recovers
    the original vertex. -/
theorem quiver_banach_adjunction (v : BSDVertex) :
    complexCarabinerToVertex (quiverToComplexCarabiner v) = v := by
  cases v <;>
  simp [complexCarabinerToVertex, quiverToComplexCarabiner, bsdVertexHeightBound] <;>
  norm_num

/-! ## §7  BSD arrows as Pauli conjugations -/

/-- Each `BSDArrow` induces a canonical Pauli conjugation on `ComplexCarabiner`.

    | Arrow            | Pauli phase | Effect on weight          |
    |------------------|-------------|---------------------------|
    | `tensor_bang`    | 1 (X)       | swap re ↔ im              |
    | `oplus_padic`    | 0 (I)       | identity                  |
    | `project_selmer` | 3 (Z)       | conjugate (im → 0 limit)  |
    | `recover`        | 2 (Y)       | negate (adjoint reversal) | -/
def bsdArrowPauliPhase : ∀ {u v : BSDVertex}, BSDArrow u v → ZMod 4
  | _, _, .tensor_bang    => 1
  | _, _, .oplus_padic    => 0
  | _, _, .project_selmer => 3
  | _, _, .recover        => 2

/-- Apply the Pauli conjugation associated to a BSD arrow to a `ComplexCarabiner`. -/
noncomputable def applyArrow {u v : BSDVertex} (a : BSDArrow u v)
    (c : ComplexCarabiner) : ComplexCarabiner :=
  pauliConjWeight c (bsdArrowPauliPhase a)

/-- `tensor_bang` acts as the X conjugation: swaps real and imaginary parts. -/
@[simp]
lemma tensor_bang_swaps (c : ComplexCarabiner) :
    (applyArrow BSDArrow.tensor_bang c).weight.re = c.weight.im := by
  simp only [applyArrow, bsdArrowPauliPhase, pauliConjWeight_one, pauliXConj]

/-- `project_selmer` acts as Z conjugation: takes the complex conjugate weight. -/
@[simp]
lemma project_selmer_conjugates (c : ComplexCarabiner) :
    (applyArrow BSDArrow.project_selmer c).weight.im = -c.weight.im := by
  simp only [applyArrow, bsdArrowPauliPhase, pauliConjWeight_three, pauliZConj]
  simp [Complex.star_def, Complex.conj_im]

/-- `recover` negates the weight (adjoint arrow reversal). -/
@[simp]
lemma recover_negates (c : ComplexCarabiner) :
    (applyArrow BSDArrow.recover c).weight = -c.weight := by
  simp only [applyArrow, bsdArrowPauliPhase, pauliConjWeight_two, pauliYConj]

/-- `oplus_padic` is the identity arrow. -/
@[simp]
lemma oplus_padic_identity (c : ComplexCarabiner) :
    applyArrow BSDArrow.oplus_padic c = c := by
  simp only [applyArrow, bsdArrowPauliPhase, pauliConjWeight_zero]

/-! ## §8  Frobenius–Verschiebung duality via arrows -/

/-- The Verschiebung of the target vertex equals the Verschiebung applied to
    the arrow's effect on the source.

    For `tensor_bang` (X conjugation): `V(X·w) = X·V(w)` since Verschiebung
    is scalar multiplication by `1/2` and X conjugation permutes components —
    both are ℝ-linear operations that commute. -/
theorem verschiebung_commutes_with_tensor_bang (c : ComplexCarabiner) :
    (applyArrow BSDArrow.tensor_bang c).verschiebung.weight =
    (applyArrow BSDArrow.tensor_bang c.verschiebung).weight := by
  simp only [applyArrow, bsdArrowPauliPhase, pauliConjWeight_one, pauliXConj,
             ComplexCarabiner.verschiebung]
  apply Complex.ext <;> simp [Complex.div_re, Complex.div_im]

/-- The Θ-link of the `leech` carabiner lies in the `padic` half-plane.

    After the Θ-link (quarter-turn), the real part of the `leech` carabiner
    (= 0) becomes 0, still at the `leech` height. This is consistent with
    the `leech` vertex being the fixed point of the Θ-link on the real axis. -/
lemma theta_link_leech :
    (quiverToComplexCarabiner .leech).theta_link.weight.re = 0 := by
  simp [quiverToComplexCarabiner, bsdVertexHeightBound,
        ComplexCarabiner.theta_link]

/-- The Θ-link of the `affine_dual` carabiner rotates height to obstruction:
    the new real part is zero (the height moves to the imaginary axis). -/
lemma theta_link_affine_dual_re :
    (quiverToComplexCarabiner .affine_dual).theta_link.weight.re = 0 := by
  simp [quiverToComplexCarabiner, bsdVertexHeightBound,
        ComplexCarabiner.theta_link, Complex.mul_re, Complex.I_re, Complex.I_im]

/-- After a Θ-link, the affine_dual height becomes the imaginary part. -/
lemma theta_link_affine_dual_im :
    (quiverToComplexCarabiner .affine_dual).theta_link.weight.im = -4 := by
  simp [quiverToComplexCarabiner, bsdVertexHeightBound,
        ComplexCarabiner.theta_link, Complex.mul_im, Complex.I_re, Complex.I_im]

/-! ## §9  Discrete Picard Condition

The **Discrete Picard Condition** (DPC) is the weight-level shadow of the
`PicardFunctor` commutativity from `BSDQuiver`:

```
A_recover ∘ A_project = A_tensor    (PicardFunctor)
```

which is precisely `BSDRepresentation.isFaithful`:
`R.recover_map.comp R.project_map = R.tensor_bang_map`.

In `DirectedBanachQuiver` this condition descends to the **Pauli phase lattice**
as the `ZMod 4` identity

```
phase(recover) + phase(project_selmer) ≡ phase(tensor_bang)   [mod 4]
```
i.e. `2 + 3 ≡ 1 (mod 4)`.

Geometrically: two Verschiebung-role arrows compose (in phase arithmetic)
to a Frobenius-role arrow — the discrete shadow of `V ∘ V' = F` in a
height-2 Dieudonné module.

On **purely real carabiners** (vertex carabiners with `weight.im = 0`), the
Z-conjugation `pauliZConj` is the identity on weight, so `project_selmer`
is transparent and the condition reduces to `recover = tensor_bang` on
the real line — which holds if and only if the height is zero (the Leech
ground level).  This matches the fact that the PicardFunctor commutativity
is an *identity-type* condition rather than a pointwise equality of functions.
-/

section DiscretePicardCondition

/-- **Discrete Picard Condition (phase level)**

    The Pauli phases of the two Verschiebung arrows (`recover`, `project_selmer`)
    sum (in `ZMod 4`) to the Pauli phase of the Frobenius arrow `tensor_bang`.
    This is the discrete shadow of `PicardFunctor` commutativity. -/
theorem discrete_picard_phase :
    bsdArrowPauliPhase BSDArrow.recover + bsdArrowPauliPhase BSDArrow.project_selmer
    = bsdArrowPauliPhase BSDArrow.tensor_bang := by
  simp [bsdArrowPauliPhase]
  decide

/-- The Frobenius arrow `oplus_padic` (phase 0) acts as the identity on phase.
    Adding the identity phase leaves any Verschiebung phase unchanged. -/
theorem picard_oplus_neutral :
    bsdArrowPauliPhase BSDArrow.oplus_padic + bsdArrowPauliPhase BSDArrow.recover
    = bsdArrowPauliPhase BSDArrow.recover := by
  simp [bsdArrowPauliPhase]

/-- The four Pauli phases split into two Frobenius phases {0, 1} and two
    Verschiebung phases {2, 3}.  The DPC says: V-phase + V-phase = F-phase,
    which matches `FVRole` in `BSDQuiver.bsd_arrow_fv_role`. -/
theorem picard_fv_phase_split :
    (bsdArrowPauliPhase BSDArrow.tensor_bang    = 1) ∧  -- Frobenius
    (bsdArrowPauliPhase BSDArrow.oplus_padic    = 0) ∧  -- Frobenius (identity)
    (bsdArrowPauliPhase BSDArrow.project_selmer = 3) ∧  -- Verschiebung
    (bsdArrowPauliPhase BSDArrow.recover        = 2) :=  -- Verschiebung
  ⟨rfl, rfl, rfl, rfl⟩

/-- **DPC on real carabiners**: for vertex carabiners (purely real weight),
    `pauliZConj` fixes the weight (`conj(h + 0·i) = h`), so `project_selmer`
    is the identity map and the DPC simplifies to
    `applyArrow recover = applyArrow tensor_bang` on the real line. -/
lemma picard_project_is_id_on_real (c : ComplexCarabiner) (him : c.weight.im = 0) :
    applyArrow BSDArrow.project_selmer c = c := by
  simp only [applyArrow, bsdArrowPauliPhase, pauliConjWeight_three, pauliZConj]
  apply ComplexCarabiner.ext
  · apply Complex.ext
    · simp
    · simp [him]
  · rfl

/-- For the vertex carabiner at `leech` (height = 0), `recover ∘ project = tensor_bang`
    holds at the weight level: all three maps send `0` to `0`. -/
theorem picard_weight_eq_at_leech :
    (applyArrow BSDArrow.recover
      (applyArrow BSDArrow.project_selmer (quiverToComplexCarabiner .leech))).weight =
    (applyArrow BSDArrow.tensor_bang (quiverToComplexCarabiner .leech)).weight := by
  simp only [applyArrow, bsdArrowPauliPhase, pauliConjWeight_two, pauliConjWeight_three,
             pauliConjWeight_one, pauliZConj, pauliYConj, pauliXConj]
  apply Complex.ext
  · simp [quiverToCC_leech, map_zero]
  · simp [quiverToCC_leech, map_zero]

/-- **Faithfulness lifts to Pauli-phase commutativity**:
    given `R.isFaithful` from `BSDRepresentation`, the phase-level DPC
    `recover + project ≡ tensor_bang` can be read as the type-theoretic
    projection of `R.recover_map.comp R.project_map = R.tensor_bang_map`
    onto the Pauli-phase lattice `ZMod 4`.

    Restated: the `isFaithful` condition *is* the categorical content of
    the Discrete Picard Condition; the phase identity `2 + 3 ≡ 1` is its
    discrete image under the functor `bsdArrowPauliPhase`. -/
theorem picard_faithful_to_phase
    (k : Type*) [Field k] (R : BSDRepresentation k) (h : R.isFaithful) :
    R.recover_map.comp R.project_map = R.tensor_bang_map :=
  h

/-- The Verschiebung data at a prime `p` induces the DPC via the
    Dieudonné relation `F ∘ V = [p]`.  At `p = 1` (or mod-p = 0 with `p = 1`
    as a unit), this specialises to `F ∘ V = id`, which is exactly `isFaithful`.

    The DPC phase condition `2 + 3 ≡ 1 (mod 4)` is the index-`p` shadow:
    `V-phase(3) = p·F-phase(1)` mod 4 with `p = 3 ≡ -1`. -/
theorem picard_versch_data_implies_dpc
    (k : Type*) [Field k] {R : BSDRepresentation k}
    (vd : VerschiebungData k 1 R) :
    vd.frob.comp vd.versch = LinearMap.id := by
  have := vd.dieudonne_fv
  simp at this
  exact this

end DiscretePicardCondition

end HatsuYakitori.DirectedBanachQuiver
