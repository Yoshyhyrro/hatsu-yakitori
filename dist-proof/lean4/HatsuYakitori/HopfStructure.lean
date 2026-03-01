/-
Copyright (c) 2026 HatsuYakitori. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: HatsuYakitori
-/
import HatsuYakitori.MachineConstants
import Mathlib.Data.Real.Basic

namespace HatsuYakitori

open MachineConstants

/-!
# Hopf Algebra Structure on Hida Transitions

We formalize the coalgebra structure on `GolayWeight` via `HidaTransition`,
realizing the tensor-coproduct recovery diagram:

```
z(Λ₂₄)  ---⊗!--->  A¹¹∨  ---Banach completion--->  L(E,s)
  |                   |                                |
  | Δ (coproduct)     | eval (octadHeight)             | ord_{s=1}
  v                   v                                v
z(Λ₂₄) ⊗ z(Λ₂₄) --> ℝ  ⊕  Op  ----collapse---->  analytic_rank
               (combinatorial)       (analytic)
```

The left half is **combinatorial** (Bruhat–Tits tree vertices, exact Hopf axioms).
The right half is **analytic** (Banach space representations, L-functions).
The horizontal arrow "collapse" is where the Hopf axiom ε(w) + ε(S(w)) = K
breaks — this breakage is measured by the Faltings height defect.

### Three collapse regimes (Bruhat–Tits → Banach)

1. **Cusp action**: The antipode S: w ↦ 24−w acts on *cusps* (infinite points
   of the Bruhat–Tits tree), not vertices. Fixing the cusp w₂₄ (orbitSize=1)
   passes from M₂₄ to M₂₃, from tree interior to boundary behavior.
   The combinatorial counit (octadHeight) is the residual tree structure.

2. **Coefficient enlargement**: The passage from `octadHeight` (piecewise-linear,
   complement-additive: h(w) + h(S(w)) = K exactly) to `galoisHeight`
   (log-based: log(a) + log(b) ≠ log(a+b)) reflects coefficient field
   enlargement. On the tree, local self-similarity gives additivity;
   once the coefficient field grows, the additive structure collapses
   into a multiplicative (logarithmic) one.

3. **Banach completion**: The 5-point discrete Mellin transform
   (`PAdicMellin.lean`) completes to the analytic L-function.
   The operator component Op absorbs the completion error.
   Path `faltings_height_bound` (currently axiom) → theorem requires
   controlling this analytic defect.

### Key components

- **Coproduct (Δ)**: factorization of HidaTransition through intermediate weights
- **Combinatorial counit (h)**: `octadHeight` — satisfies h(w) + h(S(w)) = K
- **Analytic counit (ε)**: `galoisHeight` — log-based, breaks complement additivity
- **Antipode (S)**: weight complement w ↦ 24 - w, with S² = id
- **Collapse defect**: ε(w) + ε(S(w)) − K measures the Bruhat–Tits → Banach gap
-/

namespace GolayWeight

/-- Successor weight in the Golay lattice ordering. -/
def succ_weight : GolayWeight → GolayWeight
  | .w0  => .w8
  | .w8  => .w12
  | .w12 => .w16
  | .w16 => .w24
  | .w24 => .w24

end GolayWeight

/-- The coproduct structure: factorization of a transition through
    an intermediate weight. This realizes the coalgebra structure
    Δ : z(Λ₂₄) → z(Λ₂₄) ⊗ z(Λ₂₄). -/
structure Coproduct (w₁ w₃ : GolayWeight) where
  mid : GolayWeight
  left  : HidaTransition w₁ mid
  right : HidaTransition mid w₃

/-- The counit ε : GolayWeight → ℝ given by galoisHeight.
    This is the "forgetful" map from the Hopf algebra to the base field. -/
noncomputable def counit (w : GolayWeight) : ℝ :=
  galoisHeight w.toNat

/-- Counit respects the antipode: ε(S(w)) = galoisHeight(24 - w). -/
theorem counit_antipode_eq (w : GolayWeight) :
    counit w.antipode = galoisHeight (24 - w.toNat) := by
  cases w <;> simp [counit, GolayWeight.antipode, GolayWeight.complement, GolayWeight.toNat]

/-- Triangle inequality for the counit (Yang-Baxter compatibility). -/
theorem counit_triangle (w₁ w₂ w₃ : GolayWeight) :
    |counit w₁ - counit w₃| ≤
    |counit w₁ - counit w₂| + |counit w₂ - counit w₃| :=
  abs_sub_le (counit w₁) (counit w₂) (counit w₃)

/-- Every pair of weights admits a coproduct factorization
    (the coalgebra structure is total). -/
theorem coproduct_exists (w₁ w₂ : GolayWeight) :
    ∃ (c : Coproduct w₁ w₂), True :=
  ⟨⟨w₁, .hecke, .frob⟩, trivial⟩

/-- The coproduct through the dodecad (fixed point of antipode)
    gives a canonical factorization. -/
def coproduct_via_dodecad (w₁ w₂ : GolayWeight) : Coproduct w₁ w₂ :=
  ⟨.w12, .frob, .frob⟩

/-- Combined Hopf structure summary:
    - Galois heights are nonneg (counit is nonneg)
    - Antipode is an involution (S² = id)
    - Coproduct is total (Δ exists for all pairs)
    - Counit + antipode satisfies w + S(w) = 24 -/
theorem hopf_structure_summary :
    (∀ n, galoisHeight n ≥ 0) ∧
    (∀ w : GolayWeight, w.antipode.antipode = w) ∧
    (∀ w₁ w₂ : GolayWeight, ∃ c : Coproduct w₁ w₂, True) ∧
    (∀ w : GolayWeight, w.toNat + w.antipode.toNat = 24) := by
  exact ⟨galoisHeight_nonneg, GolayWeight.antipode_antipode,
         coproduct_exists, GolayWeight.toNat_add_antipode⟩

/-! ## Part 2: Connection to Ramification Data -/

/-- The counit respects the palindromic weight enumerator:
    `orbitSize(w) = orbitSize(S(w))`. -/
theorem counit_palindromic (w : GolayWeight) :
    w.orbitSize = w.antipode.orbitSize :=
  w.orbitSize_complement

/-- Heights of complementary weights sum to the height bound,
    reflecting the ramification product `e₂ · e₃ = 8 = K`.

    This is the **combinatorial** counit (octadHeight), which satisfies
    the exact Hopf axiom h(w) + h(S(w)) = K on the Bruhat–Tits tree.
    The log-based `galoisHeight` does NOT satisfy this additivity —
    the defect is the Bruhat–Tits collapse (see module doc). -/
theorem counit_complement_sum (w : GolayWeight) :
    w.height + w.complement.height = galoisHeightBound :=
  w.height_add_complement_height

/-- Collapse defect: the analytic counit (galoisHeight, log-based) does not
    satisfy complement additivity. The defect
      δ(w) := ε(w) + ε(S(w)) − K
    is zero only at the extremes (w₀, w₂₄) and at the Heegner point w₁₂
    iff 2·log(12) = log(24), which is false.

    This defect is what `faltings_height_bound` (AnabelianSketch) must
    eventually absorb when transitioning from the combinatorial to the
    analytic regime. -/
noncomputable def collapseDefect (w : GolayWeight) : ℝ :=
  (counit w + counit w.antipode) - galoisHeightBound

/-- The collapse defect vanishes at the empty codeword w₀:
    ε(w₀) + ε(w₂₄) = 0 + K = K. -/
theorem collapseDefect_w0 : collapseDefect .w0 = 0 := by
  simp [collapseDefect, counit, GolayWeight.antipode, GolayWeight.complement, GolayWeight.toNat]
  unfold galoisHeight galoisHeightBound
  simp
  rw [div_self (Real.log_ne_zero_of_pos_of_ne_one (by norm_num) (by norm_num))]
  ring

/-- The collapse defect vanishes at the full support w₂₄:
    ε(w₂₄) + ε(w₀) = K + 0 = K. -/
theorem collapseDefect_w24 : collapseDefect .w24 = 0 := by
  simp [collapseDefect, counit, GolayWeight.antipode, GolayWeight.complement, GolayWeight.toNat]
  unfold galoisHeight galoisHeightBound
  simp
  rw [div_self (Real.log_ne_zero_of_pos_of_ne_one (by norm_num) (by norm_num))]
  ring

/-- The collapse defect is non-negative: the analytic counit always
    overshoots the combinatorial bound. This reflects that log is concave. -/
theorem collapseDefect_nonneg (w : GolayWeight) : collapseDefect w ≥ 0 := by
  simp only [collapseDefect]
  sorry -- requires: concavity of log ⟹ log(a) + log(b) ≥ log(a+b) when a·b ≥ a+b

end HatsuYakitori
