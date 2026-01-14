/-
  HatsuYakitori.AbstractFrontier.lean
-/

import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Fin.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

open BigOperators

namespace HatsuYakitori

/-! ## Core Constants -/

noncomputable def galoisHeightBound : ℝ := 8
noncomputable def machineEpsilonReal : ℝ := 2.220446049250313e-16
def StandardWeights : Set ℕ := {0, 8, 12, 16, 24}

lemma mem_standardWeights {n : ℕ} :
    n ∈ StandardWeights ↔ n = 0 ∨ n = 8 ∨ n = 12 ∨ n = 16 ∨ n = 24 := by
  simp [StandardWeights]

/-! ## Frontier Modes -/

inductive FrontierMode where
  | stack
  | queue
  deriving DecidableEq, Repr, Inhabited

def FrontierMode.toString : FrontierMode → String
  | .stack => "stack"
  | .queue => "queue"

instance : ToString FrontierMode := ⟨FrontierMode.toString⟩

/-! ## Abstract Frontier Structure -/

structure AbstractFrontier where
  height : ℝ
  weight : ℕ
  orbitType : String
  mode : FrontierMode
  height_bound : height ≤ galoisHeightBound
  weight_bound : weight ≤ 24

noncomputable def emptyFrontier : AbstractFrontier where
  height := 0
  weight := 0
  orbitType := "trivial"
  mode := .stack
  height_bound := by simp [galoisHeightBound]
  weight_bound := by decide

/-! ## Mode Decision Functions -/

def decideModeFromWeight (w : ℕ) : FrontierMode :=
  if w < 12 then .stack else .queue

noncomputable def decideModeFromHeight (h : ℝ) : FrontierMode :=
  if h < galoisHeightBound / 2 then .stack else .queue

/-! ## Consistency Theorems -/

theorem weight_height_iff (w : ℕ) :
  ((w : ℝ) / 24 * galoisHeightBound) < galoisHeightBound / 2 ↔ w < 12 := by
  unfold galoisHeightBound
  constructor
  · intro H
    have H' : (w : ℝ) / 24 * 8 < 4 := by linarith
    have H2 : (w : ℝ) * 8 < 4 * 24 := by
      nlinarith [show (0 : ℝ) < 24 by norm_num]
    have H3 : (w : ℝ) < 12 := by linarith
    exact Nat.cast_lt.mp H3
  · intro hw
    have wR : (w : ℝ) < 12 := Nat.cast_lt.mpr hw
    nlinarith [show (0 : ℝ) < 24 by norm_num]

theorem modeDecisionConsistency (w : ℕ) (h : ℝ)
    (h_scaling : h = (w : ℝ) / 24 * galoisHeightBound) :
    decideModeFromWeight w = decideModeFromHeight h := by
  unfold decideModeFromWeight decideModeFromHeight
  rw [h_scaling]
  by_cases hw : w < 12
  · have hR := (weight_height_iff w).mpr hw
    simp only [hw, hR, ite_true]
  · have hR : ¬ ((w : ℝ) / 24 * galoisHeightBound < galoisHeightBound / 2) :=
      fun p => hw ((weight_height_iff w).mp p)
    simp only [hw, hR, ite_false]

theorem modeDecisionConsistency_valid (w : ℕ) (_h_bound : w ≤ 24) :
    decideModeFromWeight w =
    decideModeFromHeight ((w : ℝ) / 24 * galoisHeightBound) := by
  apply modeDecisionConsistency w ((w : ℝ) / 24 * galoisHeightBound)
  rfl

/-! ## Height Function -/

noncomputable def octadHeight (w : Fin 25) : ℝ :=
  let k := w.val
  if k = 0 then 0
  else if k = 8 then galoisHeightBound / 3
  else if k = 12 then galoisHeightBound / 2
  else if k = 16 then galoisHeightBound * 2 / 3
  else if k = 24 then galoisHeightBound
  else (k : ℝ) / 24 * galoisHeightBound

theorem octadHeight_nonneg (w : Fin 25) : octadHeight w ≥ 0 := by
  simp only [octadHeight, galoisHeightBound]
  split_ifs <;> norm_num
  positivity

theorem octadHeight_bounded (w : Fin 25) : octadHeight w ≤ galoisHeightBound := by
  simp only [octadHeight, galoisHeightBound]
  split_ifs <;> try norm_num
  have hk_le : (w.val : ℝ) ≤ 24 := Nat.cast_le.mpr (Nat.le_of_lt_succ w.isLt)
  nlinarith

/-! ## Affine Dimension -/

def AffineDim : ℕ := 11

noncomputable def affineDistance (v1 v2 : Fin AffineDim → ℝ) : ℝ :=
  Real.sqrt (∑ i : Fin AffineDim, (v1 i - v2 i) ^ 2)

/-! ## NEW: Additional Lemmas for MachineConstants -/

-- Galois height bound is nonnegative
theorem galoisHeightBound_nonneg : 0 ≤ galoisHeightBound := by
  unfold galoisHeightBound
  norm_num

-- Standard weights have bounded height
theorem standard_weight_height_bound (w : Fin 25)
    (hw : w.val ∈ StandardWeights) :
    octadHeight w ≤ galoisHeightBound / 2 := by
  unfold octadHeight galoisHeightBound
  simp [StandardWeights, mem_standardWeights] at hw
  rcases hw with rfl|rfl|rfl|rfl|rfl <;> norm_num

-- Simplified version of octadHeight for standard weights
theorem octadHeight_eq_div_3 (w : Fin 25) : octadHeight w = w.val / 3 := by
  unfold octadHeight galoisHeightBound
  by_cases h0 : w.val = 0
  · simp [h0]; norm_num
  · by_cases h8 : w.val = 8
    · simp [h0, h8]; norm_num
    · by_cases h12 : w.val = 12
      · simp [h0, h8, h12]; norm_num
      · by_cases h16 : w.val = 16
        · simp [h0, h8, h12, h16]; norm_num
        · by_cases h24 : w.val = 24
          · simp [h0, h8, h12, h16, h24]; norm_num
          · simp [h0, h8, h12, h16, h24]; ring

-- Injectivity of octadHeight
theorem octadHeight_injective : Function.Injective octadHeight := by
  intro x y h
  rw [octadHeight_eq_div_3, octadHeight_eq_div_3] at h
  have : (x.val : ℝ) = (y.val : ℝ) := by
    have h3 : (3 : ℝ) ≠ 0 := by norm_num
    field_simp at h
    exact h
  exact Fin.eq_of_val_eq (Nat.cast_injective this)

-- Distinct standard weights have different heights
theorem distinct_standard_weights_different_heights
    (w1 w2 : Fin 25)
    (h1 : w1.val ∈ StandardWeights)
    (h2 : w2.val ∈ StandardWeights)
    (hne : w1 ≠ w2) :
    octadHeight w1 ≠ octadHeight w2 :=
  octadHeight_injective.ne hne

-- Minimum height difference for standard weights
theorem minimum_height_difference_standard_weights
    (w1 w2 : Fin 25)
    (h1 : w1.val ∈ StandardWeights)
    (h2 : w2.val ∈ StandardWeights)
    (hne : w1 ≠ w2) :
    |octadHeight w1 - octadHeight w2| ≥ 8 / 3 := by
  rw [octadHeight_eq_div_3, octadHeight_eq_div_3]
  rw [← abs_div, ← sub_div]
  rw [abs_div, show |(3:ℝ)| = 3 by norm_num]
  rw [div_le_iff (by norm_num : (0:ℝ) < 3)]
  -- Need |(w1.val : ℝ) - (w2.val : ℝ)| ≥ 8
  simp [StandardWeights, mem_standardWeights] at h1 h2
  rcases h1 with rfl|rfl|rfl|rfl|rfl <;>
  rcases h2 with rfl|rfl|rfl|rfl|rfl <;>
  try contradiction <;>
  norm_num

end HatsuYakitori.AbstractFrontier
