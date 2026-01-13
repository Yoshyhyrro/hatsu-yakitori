/-
  Fixed theorems for HatsuYakitori.AbstractFrontier
  All arithmetic proofs corrected using nlinarith and proper simplification
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

/-! ## Consistency Theorems (FIXED) -/

theorem weight_height_iff (w : ℕ) :
  ((w : ℝ) / 24 * galoisHeightBound) < galoisHeightBound / 2 ↔ w < 12 := by
  unfold galoisHeightBound
  constructor
  · intro H
    -- H : (w : ℝ) / 24 * 8 < 8 / 2 = 4
    have H' : (w : ℝ) / 24 * 8 < 4 := by linarith
    -- Clear denominators: (w : ℝ) * 8 < 4 * 24 = 96
    have H2 : (w : ℝ) * 8 < 4 * 24 := by
      nlinarith [show (0 : ℝ) < 24 by norm_num]
    -- Therefore (w : ℝ) < 12
    have H3 : (w : ℝ) < 12 := by linarith
    exact Nat.cast_lt.mp H3
  · intro hw
    have wR : (w : ℝ) < 12 := Nat.cast_lt.mpr hw
    -- Need to show: (w : ℝ) / 24 * 8 < 4
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

/-! ## Height Function (FIXED) -/

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

end HatsuYakitori
