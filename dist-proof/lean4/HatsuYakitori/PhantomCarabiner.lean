/-
Copyright (c) 2026 hatsu-yakitori contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/

import HatsuYakitori.Carabiner
import HatsuYakitori.YangBaxterBanach
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Algebra.Star.Basic

/-!
# PhantomCarabiner: Complex-Weight Carabiner with Verschiebung and Θ-Link

A *phantom carabiner* lifts the discrete `GolayWeight`-based `Carabiner` to a fully
complex evaluation point.  The weight is a genuine element of `ℂ`:

- **real part** `w.re`: the Berkovich-tree height; continuous analogue of
  `Carabiner.height`.
- **imaginary part** `w.im`: the *obstruction residual degree*; measures how far
  the evaluation point deviates from the real axis, i.e. the fractional portion
  of the archimedean conductor that has been rotated into the imaginary direction.

The name *phantom* alludes to the phantom component of a Witt vector: the imaginary
part lives "in the background" and becomes visible only after applying
`verschiebung` or `theta_link`.

## Core operations

- `ComplexCarabiner.complement`: reflect across the critical midpoint `3 + 0·i`
  by conjugating and subtracting from `6`.  Extends `Carabiner.complement`
  (`h ↦ K − h`, `K = 8`) to the complex plane with `K = 6`.
- `ComplexCarabiner.verschiebung`: halve the weight; models the Witt-vector
  Verschiebung `V` satisfying `V ∘ F = p·id` (here `p = 2`).  Moves the
  evaluation point halfway toward the Gauss point `w = 0`.
- `ComplexCarabiner.theta_link`: multiply the weight by `−i` (rotate by `−π/2`);
  models the IUT Θ-link, which exchanges the additive height structure with the
  multiplicative obstruction structure via a quarter-turn.

## Phantom ℝ-module (§5)

The real-weight projection `reWeight : ComplexCarabiner → ℝ` is an additive map
compatible with scalar multiplication.  Verschiebung is exactly scalar multiplication
by `(1/2 : ℝ)` in the natural `SMul ℝ ComplexCarabiner` structure.

## Bridge to `SpiralRotation` / Satake parameters (§6)

A `SpiralRotation` with parameters `(λ, θ)` embeds into `ComplexCarabiner` via the
Satake spectral parameter `u = λ · exp(iθ)`.  Under this embedding:

- `verschiebung` halves the scaling factor `λ`.
- `theta_link` rotates the spectral parameter by `−π/2`:
  `u ↦ −u · i = u · exp(−iπ/2)`.

## References

- `Carabiner.lean` — discrete `GolayWeight`-based carabiner; source of complement
  and phase conventions.
- `YangBaxterBanach.lean` §8 — `SpiralRotation`, `spiralToSpectralParam`; the
  Satake-parameter interpretation of complex weights.
- `InverseHeegnerGram.lean` — IUT Θ-link and Gram matrix context.
- `CartanUtils.lean` §10 — odd unimodular θ-decomposition and cusp extraction.
-/

namespace HatsuYakitori.PhantomCarabiner

set_option linter.dupNamespace false

/-! ## §1  Structure -/

/-- A *phantom carabiner* is a fully complex evaluation point on the Berkovich tree.

    - `weight : ℂ` encodes the point as `w = h + ε·i`, where `h = w.re` is the
      real Berkovich height and `ε = w.im` is the obstruction residual degree.
      Together they form the Satake spectral parameter `u = w` of the associated
      unramified representation.
    - `phase : ℕ` records the order of the discrete phase group at this point.
      For example: `4` recovers the `ℤ/4ℤ` Pauli phase of `Carabiner`; `24`
      records the full Mathieu-group orbit order. -/
@[ext]
structure ComplexCarabiner where
  weight : ℂ
  phase  : ℕ := 4

/-! ## §2  Core operations -/

/-- **Complement** of a phantom carabiner: reflect across the critical midpoint `3`.

    The map `w ↦ 6 − conj(w)` combines:
    1. Complex conjugation `w ↦ conj(w)`: reverses the sign of the obstruction
       residual `w.im`, collapsing the imaginary sector.
    2. Reflection `z ↦ 6 − z`: reflects the real height across `h = 3`.

    On the real axis this reduces to `h ↦ 6 − h`, the self-duality relation
    for the critical strip with half-bound `K = 6`.  Compare `Carabiner.complement`
    which uses `K = galoisHeightBound = 8`. -/
def ComplexCarabiner.complement (c : ComplexCarabiner) : ComplexCarabiner :=
  { weight := 6 - star c.weight
    phase  := c.phase }

/-- **Verschiebung** of a phantom carabiner: halve the weight.

    Models the Witt-vector Verschiebung operator `V` (here for `p = 2`).
    On the Berkovich tree, `V` contracts the evaluation point toward the Gauss
    point `w = 0` by a factor of `1/2`.  After `n` iterations the weight is
    `c.weight / 2^n` (see `verschiebung_iterate`).

    The real-part restriction `V|_ℝ : h ↦ h/2` is the "half-step" toward the
    top of the Berkovich tree, dual to the Frobenius `F : h ↦ 2h`. -/
noncomputable def ComplexCarabiner.verschiebung (c : ComplexCarabiner) : ComplexCarabiner :=
  { weight := c.weight / 2
    phase  := c.phase }

/-- **Θ-link** of a phantom carabiner: rotate the weight by `−π/2`.

    The map `w ↦ −w · i` is multiplication by `−i = exp(−iπ/2)`, a clockwise
    quarter-turn in the complex plane.  It exchanges:
    - real part (height) ↔ imaginary part (obstruction residual),
      with a sign change on the new imaginary part.

    This models the IUT Θ-link, which sends the multiplicative theta-value
    `Θ(τ)` to an additive normalisation, thereby converting the imaginary-axis
    obstruction into a real-axis height contribution.

    Applied four times, `theta_link` is the identity (see `theta_link_four_id`). -/
def ComplexCarabiner.theta_link (c : ComplexCarabiner) : ComplexCarabiner :=
  { weight := -c.weight * Complex.I
    phase  := c.phase }

/-! ## §3  Component-projection lemmas -/

section Projections

variable (c : ComplexCarabiner)

@[simp] lemma complement_phase    : c.complement.phase  = c.phase := rfl
@[simp] lemma verschiebung_phase  : c.verschiebung.phase = c.phase := rfl
@[simp] lemma theta_link_phase    : c.theta_link.phase   = c.phase := rfl

/-- The real part of the complement is `6 − c.weight.re`.
    This is the direct analogue of `h(complement) = K − h` in `Carabiner`. -/
@[simp]
lemma complement_re : c.complement.weight.re = 6 - c.weight.re := by
  simp [ComplexCarabiner.complement]

/-- The imaginary part of the complement equals `c.weight.im`.
    Conjugation negates `w.im`, but the final `−` in `6 − conj(w)` reverses
    that negation: `im(6 − conj w) = −im(conj w) = −(−w.im) = w.im`. -/
@[simp]
lemma complement_im : c.complement.weight.im = c.weight.im := by
  simp [ComplexCarabiner.complement]

/-- Self-duality equation: real parts of a carabiner and its complement sum to 6. -/
lemma complement_re_sum : c.complement.weight.re + c.weight.re = 6 := by
  simp [complement_re]

/-- Verschiebung halves the real part (Berkovich height). -/
@[simp]
lemma verschiebung_re : c.verschiebung.weight.re = c.weight.re / 2 := by
  simp [ComplexCarabiner.verschiebung]

/-- Verschiebung halves the imaginary part (obstruction residual degree). -/
@[simp]
lemma verschiebung_im : c.verschiebung.weight.im = c.weight.im / 2 := by
  simp [ComplexCarabiner.verschiebung]

/-- The Θ-link sends the real part (height) to the imaginary part (obstruction).
    Algebraically: `re(−w · i) = im(w)`.  On the Berkovich tree: the height
    becomes the new obstruction residual degree after the quarter-turn. -/
@[simp]
lemma theta_link_re : c.theta_link.weight.re = c.weight.im := by
  simp [ComplexCarabiner.theta_link, Complex.mul_re,
        Complex.neg_re, Complex.I_re, Complex.I_im]

/-- The Θ-link sends the imaginary part (obstruction) to the negated real part.
    Algebraically: `im(−w · i) = −re(w)`.  The obstruction becomes the
    negated height under the quarter-turn. -/
@[simp]
lemma theta_link_im : c.theta_link.weight.im = -c.weight.re := by
  simp [ComplexCarabiner.theta_link, Complex.mul_im,
        Complex.neg_re, Complex.neg_im, Complex.I_re, Complex.I_im]

end Projections

/-! ## §4  Composition lemmas -/

section Composition

variable (c : ComplexCarabiner)

/-- The complement is an involution on the weight.
    `6 − conj(6 − conj w) = 6 − (6 − conj(conj w)) = conj(conj w) = w`.
    Extends `Carabiner.complement_complement` to the complex setting. -/
@[simp]
theorem complement_involutive : c.complement.complement.weight = c.weight := by
  simp [ComplexCarabiner.complement]

/-- The Θ-link applied twice negates the weight: `(−π)` total rotation.
    `−(−w · i) · i = w · i² = w · (−1) = −w`. -/
@[simp]
theorem theta_link_sq : c.theta_link.theta_link.weight = -c.weight := by
  simp only [ComplexCarabiner.theta_link]
  have h : Complex.I * Complex.I = -1 := by
    have := Complex.I_sq; rw [sq] at this; exact this
  linear_combination c.weight * h

/-- The Θ-link is a 4-cycle: four applications return the original weight.
    Reflects the `ℤ/4ℤ` symmetry of multiplication by `−i` on `ℂ×`. -/
@[simp]
theorem theta_link_four_id :
    c.theta_link.theta_link.theta_link.theta_link.weight = c.weight := by
  simp [theta_link_sq]

/-- Verschiebung and Θ-link commute as weight maps.
    Both are `ℂ`-linear (scaling by `1/2` and by `−i` respectively);
    scalar multiplication in a `ℂ`-module always commutes. -/
theorem verschiebung_theta_link_comm :
    c.verschiebung.theta_link.weight = c.theta_link.verschiebung.weight := by
  simp [ComplexCarabiner.verschiebung, ComplexCarabiner.theta_link]
  ring

/-- Complement and Θ-link do **not** commute in general (complement is
    affine anti-linear, theta_link is linear; their commutator is nonzero
    unless `c.weight = 3 + 3·i`).

    Left open with `sorry` pending a corrected statement. -/
theorem complement_theta_link_comm :
    c.complement.theta_link.weight = c.theta_link.complement.weight := by
  sorry

/-- Iterated Verschiebung scales the weight by `1 / 2^n`. -/
lemma verschiebung_iterate (n : ℕ) :
    (Nat.iterate ComplexCarabiner.verschiebung n c).weight = c.weight / 2 ^ n := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Function.iterate_succ', Function.comp]
    have hv : (ComplexCarabiner.verschiebung
        (Nat.iterate ComplexCarabiner.verschiebung n c)).weight =
        (Nat.iterate ComplexCarabiner.verschiebung n c).weight / 2 := by
      simp [ComplexCarabiner.verschiebung]
    rw [hv, ih]
    ring

/-- The real part after `n` Verschiebung steps equals `c.weight.re / 2^n`.
    Models the `n`-fold contraction toward the Gauss point on the real axis. -/
lemma verschiebung_iterate_re (n : ℕ) :
    (Nat.iterate ComplexCarabiner.verschiebung n c).weight.re = c.weight.re / 2 ^ n := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Function.iterate_succ', Function.comp, verschiebung_re, ih]
    ring

end Composition

/-! ## §5  ℝ-module structure and phantom reweight map -/

section PhantomModule

/-- Zero phantom carabiner. -/
instance : Zero ComplexCarabiner := ⟨⟨0, 0⟩⟩

/-- Pointwise addition of phantom carabiners. -/
instance : Add ComplexCarabiner :=
  ⟨fun a b => ⟨a.weight + b.weight, a.phase + b.phase⟩⟩

/-- Scalar multiplication by a real number: scales the complex weight,
    leaves the phase unchanged. -/
instance : SMul ℝ ComplexCarabiner :=
  ⟨fun r c => ⟨↑r * c.weight, c.phase⟩⟩

@[simp] lemma add_weight (a b : ComplexCarabiner) :
    (a + b).weight = a.weight + b.weight := rfl
@[simp] lemma add_phase  (a b : ComplexCarabiner) :
    (a + b).phase  = a.phase  + b.phase  := rfl
@[simp] lemma smul_weight (r : ℝ) (c : ComplexCarabiner) :
    (r • c).weight = ↑r * c.weight := rfl
@[simp] lemma smul_phase  (r : ℝ) (c : ComplexCarabiner) :
    (r • c).phase  = c.phase := rfl
@[simp] lemma zero_weight : (0 : ComplexCarabiner).weight = 0 := rfl
@[simp] lemma zero_phase  : (0 : ComplexCarabiner).phase  = 0 := rfl

/-- Verschiebung is scalar multiplication by `1/2`. -/
lemma verschiebung_eq_half_smul (c : ComplexCarabiner) :
    c.verschiebung = (1 / 2 : ℝ) • c := by
  ext
  · simp [ComplexCarabiner.verschiebung]
    push_cast; ring
  · simp [ComplexCarabiner.verschiebung]

/-- The **real-weight projection** `reWeight c := c.weight.re` is an additive map.
    It projects a phantom carabiner onto the Berkovich real axis and is
    compatible with scalar multiplication (`reWeight (r • c) = r * reWeight c`). -/
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
    reWeight c.verschiebung = reWeight c / 2 := by
  rw [verschiebung_eq_half_smul, reWeight_smul]
  ring

/-- The Θ-link swaps real and imaginary parts (with a sign on the new imaginary).
    Thus `reWeight (theta_link c) = c.weight.im`: height becomes obstruction
    residual under the quarter-turn. -/
lemma reWeight_theta_link (c : ComplexCarabiner) :
    reWeight c.theta_link = c.weight.im := by
  simp [reWeight, theta_link_re]

end PhantomModule

/-! ## §6  Bridge to `SpiralRotation` and Satake parameters -/

section SpiralBridge

/-- Embed a `SpiralRotation` as a phantom carabiner via the Satake spectral
    parameter `u = λ · exp(iθ)`.

    The scaling factor `λ` and angle `θ` encode the Berkovich position on the
    p-adic disc; together they determine the unramified representation `π_u`.
    The default phase `4` matches the Pauli `ℤ/4ℤ` symmetry from `Carabiner`. -/
noncomputable def ofSpiralRotation (s : SpiralRotation) (phase : ℕ := 4) : ComplexCarabiner :=
  { weight := spiralToSpectralParam s
    phase  := phase }

/-- The weight of `ofSpiralRotation s` is the Satake spectral parameter. -/
@[simp]
lemma ofSpiralRotation_weight (s : SpiralRotation) (p : ℕ) :
    (ofSpiralRotation s p).weight = spiralToSpectralParam s := rfl

/-- Verschiebung on a spiral carabiner halves the scaling factor.
    The angle is unchanged: `V(λ · exp(iθ)) = (λ/2) · exp(iθ)`. -/
lemma verschiebung_spiral (s : SpiralRotation) (p : ℕ) :
    (ofSpiralRotation s p).verschiebung.weight =
    (ofSpiralRotation { s with scalingFactor := s.scalingFactor / 2 } p).weight := by
  simp [ofSpiralRotation, ComplexCarabiner.verschiebung, spiralToSpectralParam]
  ring

/-- The Θ-link on a spiral carabiner is multiplication of the Satake parameter
    by `−i`.  In polar form: `u = λ exp(iθ) ↦ −i · u = λ exp(i(θ − π/2))`.
    This is the spectral-parameter manifestation of the IUT Θ-link. -/
lemma theta_link_spiral_mul_neg_I (s : SpiralRotation) (p : ℕ) :
    (ofSpiralRotation s p).theta_link.weight =
    -Complex.I * spiralToSpectralParam s := by
  simp [ofSpiralRotation, ComplexCarabiner.theta_link]
  ring

/-- The Θ-link rotates the Satake spectral parameter by `−π/2`.

    Precisely: `theta_link (ofSpiralRotation s) = ofSpiralRotation s'` where
    `s'.scalingFactor = s.scalingFactor` and `s'.angle = s.angle − π/2`.

    The proof requires `exp(i(θ − π/2)) = exp(iθ) · exp(−iπ/2) = exp(iθ) · (−i)`,
    which follows from `Complex.exp_add` and the Euler formula. -/
lemma theta_link_spiral_rotation (s : SpiralRotation) (p : ℕ) :
    (ofSpiralRotation s p).theta_link.weight =
    (ofSpiralRotation { s with angle := s.angle - Real.pi / 2 } p).weight := by
  simp only [ofSpiralRotation, ComplexCarabiner.theta_link, spiralToSpectralParam]
  -- Prove exp(I*(θ - π/2)) = exp(I*θ) * (-I), then close by ring
  have h_neg_I : Complex.exp (Complex.I * -(↑(Real.pi / 2 : ℝ) : ℂ)) = -Complex.I := by
    rw [show Complex.I * -(↑(Real.pi / 2 : ℝ) : ℂ) = ↑(-(Real.pi / 2 : ℝ)) * Complex.I from by
          push_cast; ring]
    rw [Complex.exp_mul_I]
    rw [show (↑(-(Real.pi / 2 : ℝ)) : ℂ) = -(↑(Real.pi / 2 : ℝ) : ℂ) from by push_cast; ring]
    rw [Complex.cos_neg, Complex.sin_neg]
    rw [← Complex.ofReal_cos, ← Complex.ofReal_sin,
        Real.cos_pi_div_two, Real.sin_pi_div_two]
    simp
  have h_exp : Complex.exp (Complex.I * ↑(s.angle - Real.pi / 2 : ℝ)) =
      Complex.exp (Complex.I * ↑s.angle) * (-Complex.I) := by
    have : (↑(s.angle - Real.pi / 2 : ℝ) : ℂ) = ↑s.angle + -(↑(Real.pi / 2 : ℝ) : ℂ) := by
      push_cast; ring
    rw [this, mul_add, Complex.exp_add, h_neg_I]
  rw [h_exp]; ring

end SpiralBridge

/-! ## §7  Berry phase interpretation

The operations `theta_link`, `verschiebung`, and `complement` on a
`ComplexCarabiner` have a natural interpretation in terms of Berry's geometric
phase for a family of quantum Hamiltonians parametrised by the complex weight
`w ∈ ℂ`.

### Setup

Regard `w = c.weight` as an adiabatic parameter for a two-level quantum system.
The **Berry connection** (U(1) gauge field on ℂ \ {0}) is

```
A_Berry(w) = Im(dw / w) = d(arg w)
```

which is the imaginary part of the logarithmic differential, i.e. the standard
Aharonov–Bohm connection with a single monopole at the origin.

### Correspondence table

| `ComplexCarabiner` operation | Berry / geometric-phase language |
|------------------------------|----------------------------------|
| `theta_link` (×(−i)) | advance the Berry phase by −π/2 |
| `theta_link^4 = id` | the ℤ₄ holonomy group closes |
| `verschiebung` (×(1/2)) | adiabatic rescaling; Berry phase unchanged |
| `complement` (w ↦ 6−w̄) | time-reversal (anti-unitary); phase negated |
| `c.phase : ℕ` | winding number of the adiabatic loop |

### Connection to MZV / HaradaNortonCarabiner

In `HaradaNortonCarabiner`, the Chen iterated integrals use

```
ω₁ = dt/t          (multiplicative differential = Berry connection)
ω₀ = dt/(1−t)      (additive differential = complementary connection)
```

One application of `theta_link` on a `ComplexCarabiner` corresponds to
inserting one `ω₁` factor in a Chen integral:  depth increases by 1 and
the Berry phase advances by −π/2.  The **odd-depth obstruction**
(`HNWeight.mzvParity = -1`) is the discrete remnant of the non-trivial
Aharonov–Bohm holonomy around the pole at `t = 0`.

### References

- Berry, M. V. (1984). *Quantal phase factors accompanying adiabatic changes*.
  Proc. Royal Soc. London A **392**, 45–57.
- Chen, K.-T. (1977). *Iterated path integrals*.
  Bull. Amer. Math. Soc. **83**, 831–879.
- Ihara, K., Kaneko, M., Zagier, D. (2006). *Derivation and double shuffle
  relations for multiple zeta values*. Compositio Math. **142**, 307–338.
-/

section BerryPhase

variable (c : ComplexCarabiner)

/-- The **Berry phase angle** of a phantom carabiner: the argument
    (principal value in `(-π, π]`) of the complex weight.

    This is the phase accumulated along the Berry connection
    `A = Im(dw/w)` when the adiabatic parameter is `w = c.weight`.
    It equals zero on the positive real axis (purely real carabiners)
    and advances by `−π/2` under each application of `theta_link`. -/
noncomputable def ComplexCarabiner.berryPhaseAngle (c : ComplexCarabiner) : ℝ :=
  Complex.arg c.weight

/-- The squared modulus `|w|²` of the carabiner weight.

    This is a gauge-invariant quantity: it is preserved under the
    `complement` involution up to a translation, and it governs
    the adiabatic norm in the Berry-phase picture. -/
noncomputable def ComplexCarabiner.weightNormSq (c : ComplexCarabiner) : ℝ :=
  Complex.normSq c.weight

/-- The squared modulus satisfies `|w|² = re(w)² + im(w)²`. -/
@[simp]
lemma weightNormSq_eq (c : ComplexCarabiner) :
    c.weightNormSq = c.weight.re ^ 2 + c.weight.im ^ 2 := by
  simp [ComplexCarabiner.weightNormSq, Complex.normSq_apply, sq]

/-- `theta_link` preserves the squared modulus.

    Multiplication by `−i` is a unitary operation on ℂ; it rotates
    the weight vector without changing its length.  Hence the Berry
    curvature (proportional to `|w|⁻²`) is also preserved. -/
@[simp]
theorem theta_link_preserves_normSq :
    c.theta_link.weightNormSq = c.weightNormSq := by
  simp [ComplexCarabiner.weightNormSq, ComplexCarabiner.theta_link,
        Complex.normSq_mul, Complex.normSq_neg, Complex.normSq_I]

/-- `verschiebung` scales the squared modulus by `1/4`.

    Under the adiabatic rescaling `w ↦ w/2`, the Berry curvature
    `F = dA = dx ∧ dy / |w|²` is rescaled by 4 (i.e. it becomes
    stronger as the parameter moves toward the Gauss point `w = 0`). -/
@[simp]
theorem verschiebung_normSq :
    c.verschiebung.weightNormSq = c.weightNormSq / 4 := by
  simp [ComplexCarabiner.weightNormSq, ComplexCarabiner.verschiebung,
        Complex.normSq_div, Complex.normSq_ofNat]
  ring

/-- Applying `theta_link` four times returns the squared modulus to itself.

    This is a corollary of `theta_link_preserves_normSq` applied four times,
    or equivalently of the ℤ₄ periodicity `theta_link^4 = id`. -/
theorem theta_link_four_normSq :
    c.theta_link.theta_link.theta_link.theta_link.weightNormSq = c.weightNormSq := by
  simp [theta_link_preserves_normSq]

/-- The **ℤ₄ holonomy** group of `theta_link`.

    A single `theta_link` advances the Berry phase by `−π/2`.
    Four applications complete the full `−2π` cycle, returning to
    the identity.  The winding number of this adiabatic loop is `−1`
    (one clockwise revolution), recorded in `c.phase` as `4`. -/
theorem theta_link_holonomy_z4 :
    ∀ (c : ComplexCarabiner),
      c.theta_link.theta_link.theta_link.theta_link.weight = c.weight := by
  intro c; simp [theta_link_four_id]

/-- `verschiebung` does not change the Berry phase angle.

    Since `verschiebung` multiplies `w` by the positive real `1/2`,
    the argument `arg(w/2) = arg(w)` (for `w ≠ 0`).  The adiabatic
    parameter moves radially inward without any phase rotation. -/
theorem verschiebung_berryPhaseAngle_eq (hw : c.weight ≠ 0) :
    c.verschiebung.berryPhaseAngle = c.berryPhaseAngle := by
  simp only [ComplexCarabiner.berryPhaseAngle, ComplexCarabiner.verschiebung]
  rw [show c.weight / 2 = c.weight * ((2 : ℝ)⁻¹ : ℝ) from by
        push_cast; ring]
  exact Complex.arg_mul_real (by norm_num : (0 : ℝ) < 2⁻¹) _

/-- The **real-axis Berry phase is zero**.

    A carabiner on the positive real axis (pure height, no obstruction)
    has Berry phase zero.  This is the `ground state` of the Berry
    connection: the adiabatic loop at a real parameter acquires no phase. -/
theorem real_weight_berryPhase_eq_zero (hr : 0 < c.weight.re) (hi : c.weight.im = 0) :
    c.berryPhaseAngle = 0 := by
  simp only [ComplexCarabiner.berryPhaseAngle]
  have : c.weight = (c.weight.re : ℂ) := by
    apply Complex.ext
    · simp
    · simp [hi]
  rw [this]
  simp [Complex.arg, le_of_lt hr]

/-- The **Chen–Berry depth bound**.

    The squared modulus of `theta_link^n c` equals the squared modulus of `c`
    for every `n : ℕ`, because `theta_link` is unitary.  Equivalently, the
    adiabatic loop generated by `n` applications of the Θ-link lies on the
    circle of radius `|c.weight|` in the complex plane.

    In MZV language: `n` insertions of `ω₁ = dt/t` (= `n` log-link steps)
    do not change the absolute value of the evaluation point; only the
    Berry phase angle advances by `−n·(π/2)`. -/
theorem theta_link_iterate_normSq (n : ℕ) :
    (ComplexCarabiner.theta_link^[n] c).weightNormSq = c.weightNormSq := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Function.iterate_succ', Function.comp, theta_link_preserves_normSq, ih]

/-- The **complement reversal of Berry phase**.

    The complement map `w ↦ 6 − conj(w)` combines a reflection and
    conjugation.  Complex conjugation negates `arg`, so the Berry phase
    of the complement is (generically) not equal to the original.

    The norm changes as well, since `|6 − w̄| ≠ |w|` in general.  The
    complement is therefore *not* a Berry-phase-preserving operation; it
    corresponds to **time reversal** (the anti-unitary symmetry of the
    Berry connection), which negates the phase. -/
theorem complement_berryPhase_of_real (hr : c.weight.re = 3) (hi : c.weight.im = 0) :
    c.complement.berryPhaseAngle = 0 := by
  simp only [ComplexCarabiner.berryPhaseAngle, ComplexCarabiner.complement]
  have hw : c.weight = (3 : ℂ) := by
    apply Complex.ext <;> simp [hr, hi]
  have hcompw : (6 : ℂ) - star c.weight = (3 : ℂ) := by
    rw [hw]; apply Complex.ext <;> simp [Complex.star_def]
  rw [hcompw]
  simp [Complex.arg, show (0 : ℝ) ≤ 3 from by norm_num]

end BerryPhase

end HatsuYakitori.PhantomCarabiner
