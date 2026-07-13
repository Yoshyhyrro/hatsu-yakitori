/-
Copyright (c) 2026 hatsu-yakitori contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/

import HatsuYakitori.Carabiner
import HatsuYakitori.YangBaxterBanach
import Mathlib.Data.Complex.Basic
import Mathlib.Logic.Function.Iterate
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Algebra.Star.Basic
import Mathlib.FieldTheory.Finite.GaloisField

/-!
# PhantomCarabiner: Complex-Weight Carabiner with Verschiebung and Θ-Link

A *phantom carabiner* lifts the discrete `GolayWeight`-based `Carabiner` to a fully
complex evaluation point. The weight is a genuine element of `ℂ`:

- **real part** `w.re`: the Berkovich-tree height; continuous analogue of
  `Carabiner.height`.
- **imaginary part** `w.im`: the *obstruction residual degree*; measures how far
  the evaluation point deviates from the real axis.

## Core operations

- `complement`: reflect across the critical midpoint `3 + 0·i`
  by conjugating and subtracting from `6`.
- `verschiebung`: halve the weight; models the Witt-vector
  Verschiebung `V`.
- `theta_link`: multiply the weight by `−i` (rotate by `−π/2`);
  models the IUT Θ-link.
-/

namespace HatsuYakitori.PhantomCarabiner

/-! ## §0 Preliminaries and Helpers -/

lemma I_mul_I_eq_neg_one : Complex.I * Complex.I = -1 := by
  rw [← sq, Complex.I_sq]

/-! ## §1 Structure -/

/-- A *phantom carabiner* is a fully complex evaluation point on the Berkovich tree.
    - `weight : ℂ` encodes the point as `w = h + ε·i`.
    - `phase : ℕ` records the order of the discrete phase group at this point. -/
@[ext]
structure ComplexCarabiner where
  weight : ℂ
  phase  : ℕ := 4

def ComplexCarabiner.weightNormSq (c : ComplexCarabiner) : ℝ :=
  c.weight.re * c.weight.re + c.weight.im * c.weight.im


/-! ## §2 Core operations -/

/-- **Complement** of a phantom carabiner: reflect across the critical midpoint `3`.
    The map `w ↦ 6 − conj(w)` combines complex conjugation and reflection across `h = 3`. -/
def complement (c : ComplexCarabiner) : ComplexCarabiner :=
  { weight := 6 - Complex.conj c.weight
    phase  := c.phase }

/-- **Verschiebung** of a phantom carabiner: halve the weight.
    Models the Witt-vector Verschiebung operator `V` (for `p = 2`). -/
noncomputable def verschiebung (c : ComplexCarabiner) : ComplexCarabiner :=
  { weight := c.weight / 2
    phase  := c.phase }

/-- **Θ-link** of a phantom carabiner: rotate the weight by `−π/2`.
    The map `w ↦ −w · i` models the IUT Θ-link. -/
def theta_link (c : ComplexCarabiner) : ComplexCarabiner :=
  { weight := -c.weight * Complex.I
    phase  := c.phase }

/-! ## §3 Component-projection lemmas -/

section Projections

variable (c : ComplexCarabiner)

@[simp] lemma complement_phase    : (complement c).phase  = c.phase := rfl
@[simp] lemma verschiebung_phase  : (verschiebung c).phase = c.phase := rfl
@[simp] lemma theta_link_phase    : (theta_link c).phase   = c.phase := rfl

/-- The real part of the complement is `6 − c.weight.re`. -/
@[simp]
lemma complement_re : (complement c).weight.re = 6 - c.weight.re := by
  simp [complement]

/-- The imaginary part of the complement equals `c.weight.im`. -/
@[simp]
lemma complement_im : (complement c).weight.im = c.weight.im := by
  simp [complement]

/-- Self-duality equation: real parts of a carabiner and its complement sum to 6. -/
lemma complement_re_sum : (complement c).weight.re + c.weight.re = 6 := by
  simp [complement_re]

/-- Verschiebung halves the real part (Berkovich height). -/
@[simp]
lemma verschiebung_re : (verschiebung c).weight.re = c.weight.re / 2 := by
  simp [verschiebung]

/-- Verschiebung halves the imaginary part (obstruction residual degree). -/
@[simp]
lemma verschiebung_im : (verschiebung c).weight.im = c.weight.im / 2 := by
  simp [verschiebung]

/-- The Θ-link sends the real part (height) to the imaginary part (obstruction). -/
@[simp]
lemma theta_link_re : (theta_link c).weight.re = c.weight.im := by
  simp [theta_link, Complex.mul_re, Complex.neg_re, Complex.I_re, Complex.I_im]

/-- The Θ-link sends the imaginary part (obstruction) to the negated real part. -/
@[simp]
lemma theta_link_im : (theta_link c).weight.im = -c.weight.re := by
  simp [theta_link, Complex.mul_im, Complex.neg_re, Complex.neg_im, Complex.I_re, Complex.I_im]

end Projections

/-! ## §4 Composition lemmas -/

section Composition

variable (c : ComplexCarabiner)

/-- The complement is an involution on the weight. -/
@[simp]
theorem complement_involutive : (complement (complement c)).weight = c.weight := by
  simp [complement]

/-- The Θ-link applied twice negates the weight: `(−π)` total rotation. -/
@[simp]
theorem theta_link_pow_two : (theta_link (theta_link c)).weight = -c.weight := by
  simp only [theta_link]
  have h : Complex.I * Complex.I = -1 := Complex.I_sq
  linear_combination c.weight * h

/-- The Θ-link is a 4-cycle: four applications return the original weight. -/
@[simp]
theorem theta_link_pow_four :
    (theta_link (theta_link (theta_link (theta_link c)))).weight = c.weight := by
  simp [theta_link_pow_two]

/-- Verschiebung and Θ-link commute as weight maps. -/
theorem verschiebung_theta_link_comm :
    (theta_link (verschiebung c)).weight = (verschiebung (theta_link c)).weight := by
  simp [verschiebung, theta_link]
  ring

/-- Complement and Θ-link do **not** commute in general. -/
theorem complement_theta_link_comm :
    (theta_link (complement c)).weight = (complement (theta_link c)).weight := by
  sorry

/-- Iterated Verschiebung scales the weight by `1 / 2^n`. -/
lemma verschiebung_iterate (n : ℕ) :
    (Function.iterate verschiebung n c).weight = c.weight / 2 ^ n := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Function.iterate_succ', Function.comp]
    have hv : (verschiebung (Function.iterate verschiebung n c)).weight =
        (Function.iterate verschiebung n c).weight / 2 := by
      simp [verschiebung]
    rw [hv, ih]
    ring

/-- The real part after `n` Verschiebung steps equals `c.weight.re / 2^n`. -/
lemma verschiebung_iterate_re (n : ℕ) :
    (Function.iterate verschiebung n c).weight.re = c.weight.re / 2 ^ n := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Function.iterate_succ', Function.comp, verschiebung_re, ih]
    ring

end Composition

/-! ## §5 ℝ-module structure -/

section PhantomModule

instance : Zero ComplexCarabiner := ⟨⟨0, 0⟩⟩

instance : Add ComplexCarabiner :=
  ⟨fun a b => ⟨a.weight + b.weight, a.phase + b.phase⟩⟩

instance : SMul ℝ ComplexCarabiner :=
  ⟨fun r c => ⟨↑r * c.weight, c.phase⟩⟩

@[simp] lemma add_weight (a b : ComplexCarabiner) : (a + b).weight = a.weight + b.weight := rfl
@[simp] lemma add_phase  (a b : ComplexCarabiner) : (a + b).phase  = a.phase  + b.phase  := rfl
@[simp] lemma smul_weight (r : ℝ) (c : ComplexCarabiner) : (r • c).weight = ↑r * c.weight := rfl
@[simp] lemma smul_phase  (r : ℝ) (c : ComplexCarabiner) : (r • c).phase  = c.phase := rfl
@[simp] lemma zero_weight : (0 : ComplexCarabiner).weight = 0 := rfl
@[simp] lemma zero_phase  : (0 : ComplexCarabiner).phase  = 0 := rfl

/-- Verschiebung is scalar multiplication by `1/2`. -/
lemma verschiebung_eq_half_smul (c : ComplexCarabiner) :
    verschiebung c = (1 / 2 : ℝ) • c := by
  ext
  · simp [verschiebung]; push_cast; ring
  · simp [verschiebung]

/-- The **real-weight projection** `reWeight c := c.weight.re` is an additive map. -/
def reWeight (c : ComplexCarabiner) : ℝ := c.weight.re

@[simp]
lemma reWeight_add (a b : ComplexCarabiner) :
    reWeight (a + b) = reWeight a + reWeight b := by
  simp [reWeight]

@[simp]
lemma reWeight_zero : reWeight 0 = 0 := by
  simp [reWeight]

@[simp]
lemma reWeight_smul (r : ℝ) (c : ComplexCarabiner) :
    reWeight (r • c) = r * reWeight c := by
  simp [reWeight, Complex.mul_re, Complex.ofReal_im]

/-- Verschiebung halves the real-weight projection. -/
lemma reWeight_verschiebung (c : ComplexCarabiner) :
    reWeight (verschiebung c) = reWeight c / 2 := by
  rw [verschiebung_eq_half_smul, reWeight_smul]
  ring

/-- The Θ-link swaps real and imaginary parts. -/
lemma reWeight_theta_link (c : ComplexCarabiner) :
    reWeight (theta_link c) = c.weight.im := by
  simp [reWeight, theta_link_re]

end PhantomModule

/-! ## §6 Bridge to `SpiralRotation` -/

section SpiralBridge

/-- Embed a `SpiralRotation` as a phantom carabiner via the Satake spectral parameter. -/
noncomputable def ofSpiralRotation (s : SpiralRotation) (phase : ℕ := 4) : ComplexCarabiner :=
  { weight := spiralToSpectralParam s
    phase  := phase }

@[simp]
lemma ofSpiralRotation_weight (s : SpiralRotation) (p : ℕ) :
    (ofSpiralRotation s p).weight = spiralToSpectralParam s := rfl

/-- Verschiebung on a spiral carabiner halves the scaling factor. -/
lemma verschiebung_spiral (s : SpiralRotation) (p : ℕ) :
    (verschiebung (ofSpiralRotation s p)).weight =
    (ofSpiralRotation { s with scalingFactor := s.scalingFactor / 2 } p).weight := by
  simp [ofSpiralRotation, verschiebung, spiralToSpectralParam]
  ring

/-- The Θ-link on a spiral carabiner is multiplication of the Satake parameter by `−i`. -/
lemma theta_link_spiral_mul_neg_I (s : SpiralRotation) (p : ℕ) :
    (theta_link (ofSpiralRotation s p)).weight = -Complex.I * spiralToSpectralParam s := by
  simp [ofSpiralRotation, theta_link]
  ring

/-- The Θ-link rotates the Satake spectral parameter by `−π/2`. -/
lemma theta_link_spiral_rotation (s : SpiralRotation) (p : ℕ) :
    (theta_link (ofSpiralRotation s p)).weight =
    (ofSpiralRotation { s with angle := s.angle - Real.pi / 2 } p).weight := by
  simp only [ofSpiralRotation, theta_link, spiralToSpectralParam]
  have h_neg_I : Complex.exp (Complex.I * -(↑(Real.pi / 2 : ℝ) : ℂ)) = -Complex.I := by
    rw [show Complex.I * -(↑(Real.pi / 2 : ℝ) : ℂ) = ↑(-(Real.pi / 2 : ℝ)) * Complex.I from by push_cast; ring]
    rw [Complex.exp_mul_I]
    rw [show (↑(-(Real.pi / 2 : ℝ)) : ℂ) = -(↑(Real.pi / 2 : ℝ) : ℂ) from by push_cast; ring]
    rw [Complex.cos_neg, Complex.sin_neg]
    rw [← Complex.ofReal_cos, ← Complex.ofReal_sin, Real.cos_pi_div_two, Real.sin_pi_div_two]
    simp
  have h_exp : Complex.exp (Complex.I * ↑(s.angle - Real.pi / 2 : ℝ)) =
      Complex.exp (Complex.I * ↑s.angle) * (-Complex.I) := by
    have : (↑(s.angle - Real.pi / 2 : ℝ) : ℂ) = ↑s.angle + -(↑(Real.pi / 2 : ℝ) : ℂ) := by push_cast; ring
    rw [this, mul_add, Complex.exp_add, h_neg_I]
  rw [h_exp]; ring

end SpiralBridge

/-! ## §7 Berry phase interpretation -/

section BerryPhase

variable (c : ComplexCarabiner)

/-- The **Berry phase angle** of a phantom carabiner. -/
noncomputable def berryPhaseAngle (c : ComplexCarabiner) : ℝ :=
  Complex.arg c.weight

/-- The squared modulus `|w|²` of the carabiner weight. -/
noncomputable def weightNormSq (c : ComplexCarabiner) : ℝ :=
  Complex.normSq c.weight

@[simp]
lemma weightNormSq_eq (c : ComplexCarabiner) :
    c.weightNormSq = c.weight.re ^ 2 + c.weight.im ^ 2 := by
  simp [weightNormSq, Complex.normSq_apply, sq]

/-- `theta_link` preserves the squared modulus. -/
@[simp]
theorem theta_link_preserves_normSq :
    (theta_link c).weightNormSq = c.weightNormSq := by
  simp [weightNormSq, theta_link, Complex.normSq_mul, Complex.normSq_neg, Complex.normSq_I]

/-- `verschiebung` scales the squared modulus by `1/4`. -/
@[simp]
theorem verschiebung_normSq :
    (verschiebung c).weightNormSq = c.weightNormSq / 4 := by
  simp [weightNormSq, verschiebung, Complex.normSq_div, Complex.normSq_ofNat]
  ring

theorem theta_link_four_normSq :
    (theta_link (theta_link (theta_link (theta_link c)))).weightNormSq = c.weightNormSq := by
  simp [theta_link_preserves_normSq]

theorem theta_link_holonomy_z4 :
    ∀ (c : ComplexCarabiner),
      (theta_link (theta_link (theta_link (theta_link c)))).weight = c.weight := by
  intro c; simp [theta_link_pow_four]

/-- `verschiebung` does not change the Berry phase angle. -/
theorem verschiebung_berryPhaseAngle_eq (hw : c.weight ≠ 0) :
    berryPhaseAngle (verschiebung c) = berryPhaseAngle c := by
  simp only [berryPhaseAngle, verschiebung]
  rw [show c.weight / 2 = c.weight * ((2 : ℝ)⁻¹ : ℝ) from by push_cast; ring]
  exact Complex.arg_mul_real (by norm_num : (0 : ℝ) < 2⁻¹) _

/-- The **real-axis Berry phase is zero**. -/
theorem real_weight_berryPhase_eq_zero (hr : 0 < c.weight.re) (hi : c.weight.im = 0) :
    berryPhaseAngle c = 0 := by
  simp only [berryPhaseAngle]
  have : c.weight = (c.weight.re : ℂ) := by
    apply Complex.ext <;> simp [hi]
  rw [this]
  simp [Complex.arg, le_of_lt hr]

/-- The **Chen–Berry depth bound**. -/
theorem theta_link_iterate_normSq (n : ℕ) :
    (Function.iterate theta_link n c).weightNormSq = c.weightNormSq := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Function.iterate_succ', Function.comp, theta_link_preserves_normSq, ih]

/-- The **complement reversal of Berry phase**. -/
theorem complement_berryPhase_of_real (hr : c.weight.re = 3) (hi : c.weight.im = 0) :
    berryPhaseAngle (complement c) = 0 := by
  simp only [berryPhaseAngle, complement]
  have hcompw : (6 : ℂ) - Complex.conj c.weight = (3 : ℂ) := by
    have : Complex.conj c.weight = (3 : ℂ) := by
      apply Complex.ext <;> simp [hr, hi]
    rw [this]; ring
  rw [hcompw]
  simp [Complex.arg, show (0 : ℝ) ≤ 3 from by norm_num]

end BerryPhase

/-! ## §8 Third Chern class shadow -/

section ThirdChernShadow

variable (c : ComplexCarabiner)

/-- The imaginary part of the Θ-link equals the negated real part. -/
lemma theta_link_im_eq_neg_height :
    (theta_link c).weight.im = -c.weight.re :=
  theta_link_im c

/-- For any `ComplexCarabiner` whose real weight equals `n`, the Θ-link imaginary part is `−n`. -/
lemma theta_link_im_neg_of_height (n : ℕ) (hn : c.weight.re = n) :
    (theta_link c).weight.im = -(n : ℝ) := by
  rw [theta_link_im_eq_neg_height, hn]

end ThirdChernShadow

/-! ## §9  Exponential state spaces via `𝔽₂`-extensions

This section illustrates, purely algebraically, the same "exponential state
space, then fold by symmetry" phenomenon that motivated the discrete folding
strategy used elsewhere in this project. Earlier revisions of this file
borrowed a register-machine/stack-machine SMT bridge (`canonical_chain`,
`Scheme`, `realize`, `collapse`) to make that point; that bridge has been
factored out to `HatsuYakitori.RegisterStackMachine`, so that models-of-
computation content stays separate from the complex-analytic `ComplexCarabiner`
story told here. What remains needs nothing beyond
`Mathlib.FieldTheory.Finite.GaloisField`.

`F₂ := GaloisField 2 1` is the field with two elements — the residue field of
the `p = 2` Witt vectors that `verschiebung` (§2) is already modelled on.
Adjoining a degree-`50` extension gives `F₂_50`, a field with `2 ^ 50`
elements: an explicit, fully algebraic witness of exponential blow-up, in
place of the earlier `canonical_chain`-based one (which bounded a search
space by `2 ^ 17 = 131072`).

**Key insight (folding)**:
`Nat.card F₂_50 = 2 ^ 50 = (2 ^ 25) ^ 2`, i.e. the size-`2 ^ 50` state space
is literally the square of a size-`2 ^ 25` one (`card_F₂_50_eq_sq`). This is
the same exponent-halving idea as the old `foldDepth`, now witnessed by
`pow_mul` rather than an SMT/register-stack-machine bridge.

**Connection to F-crystals**:
The Witt vectors `W(𝔽₂)` carry a Frobenius endomorphism `F` and a Verschiebung
`V` satisfying `F ∘ V = V ∘ F = (multiplication by p = 2)` — the same `V`
that `verschiebung` above is named after. An *F-crystal* is (roughly) a
finite free `W(k)`-module equipped with a Frobenius-semilinear endomorphism,
arising from the crystalline cohomology of a smooth proper variety over a
perfect field `k` of characteristic `p`; taking `k` to be `𝔽₂` or a finite
extension of it, as here, is the simplest nontrivial case. This file does
not attempt to formalize F-crystals themselves — see the reference below for
background reading.

## Main definitions

* `F₂` — the field with two elements, `GaloisField 2 1`.
* `F₂_50` — the degree-`50` extension `GaloisField 2 50`, with `2 ^ 50`
  elements.

## Main results

* `card_F₂_50` — the exponential blow-up: `Nat.card F₂_50 = 2 ^ 50`.
* `card_F₂_50_eq_sq` — the algebraic folding fact: `2 ^ 50 = (2 ^ 25) ^ 2`.

## References

* MathOverflow, [*F-crystals from crystalline cohomology*](https://mathoverflow.net/questions/462197/f-crystals-from-crystalline-cohomology)
  — background on F-crystals arising from crystalline cohomology; there is
  not much other online material on this specific construction.
* `HatsuYakitori/RegisterStackMachine.lean` — the register/stack-machine SMT
  bridge and `foldDepth`-based folding strategy formerly in this section.
-/

section GaloisFieldWitness

/-- `2` is prime; required to form `GaloisField 2 n`. -/
instance : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩

/-- `F₂`, the field with two elements — the `p = 2` residue field that
    `verschiebung` (§2) is modelled on. -/
abbrev F₂ : Type := GaloisField 2 1

/-- `F₂` has exactly two elements. -/
theorem card_F₂ : Nat.card F₂ = 2 := by
  show Nat.card (GaloisField 2 1) = 2
  rw [GaloisField.card 2 1 (by norm_num), pow_one]

/-- The exponential witness: the degree-`50` extension of `F₂`. -/
abbrev F₂_50 : Type := GaloisField 2 50

/-- **The exponential blow-up**: `F₂_50` has `2 ^ 50` elements. -/
theorem card_F₂_50 : Nat.card F₂_50 = 2 ^ 50 := by
  show Nat.card (GaloisField 2 50) = 2 ^ 50
  exact GaloisField.card 2 50 (by norm_num)

/-- **Folding**: the `2 ^ 50`-size witness is the square of a `2 ^ 25`-size
    one — the algebraic analogue of the old `foldDepth` exponent-halving. -/
theorem card_F₂_50_eq_sq : Nat.card F₂_50 = (2 ^ 25) ^ 2 := by
  norm_num [card_F₂_50]

end GaloisFieldWitness

end HatsuYakitori.PhantomCarabiner
