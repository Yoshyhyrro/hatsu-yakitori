/-
  HatsuYakitori.MachineConstants
  Core constants and structures for HatsuYakitori modules.
  Centralized definitions for machine precision, discrete lattice structures,
  pruned cone semiring, prime sequences, height functions, and affine geometry.
  Foundational constants and structures for Galois-to-Leech height theory.
-/

import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Data.Fin.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

open BigOperators

namespace HatsuYakitori.MachineConstants

/-! ## Part 0: Machine Precision Constants -/

def machineEpsilon : Float := 2.220446049250313e-16
def defaultTolerance : Float := 1e-10
noncomputable def galoisHeightBound : ℝ := 8
noncomputable def machineEpsilonReal : ℝ := 2.220446049250313e-16
noncomputable def defaultToleranceReal : ℝ := 1e-10

theorem machineEpsilonReal_pos : machineEpsilonReal > 0 := by
  rw [machineEpsilonReal]; norm_num

def valuationDepth : ℕ := 52
def arikiKoikeN : ℕ := 8
def arikiKoikeR : ℕ := 3

/-! ## Part 1: Discrete Lattice Structure -/

abbrev N : Type := Fin 11 → ℤ

instance : Add N := Pi.instAdd
instance : Zero N := Pi.instZero

def StandardWeights : Set ℕ := {0, 8, 12, 16, 24}

lemma mem_standardWeights {n : ℕ} :
    n ∈ StandardWeights ↔ n = 0 ∨ n = 8 ∨ n = 12 ∨ n = 16 ∨ n = 24 := by
  rfl

/-! ## Part 2: PrunedCone Semiring -/

inductive PrunedCone where
  | origin : PrunedCone
  | ray (i : Fin 11) : PrunedCone
  | full : PrunedCone
  deriving DecidableEq, Repr

namespace PrunedCone

def add : PrunedCone → PrunedCone → PrunedCone
  | origin, c => c
  | c, origin => c
  | ray i, ray j => if i = j then ray i else full
  | full, _ => full
  | _, full => full

def mul : PrunedCone → PrunedCone → PrunedCone
  | origin, _ => origin
  | _, origin => origin
  | full, c => c
  | c, full => c
  | ray i, ray j => if i = j then ray i else origin

instance : Add PrunedCone := ⟨add⟩
instance : Mul PrunedCone := ⟨mul⟩
instance : Zero PrunedCone := ⟨origin⟩
instance : One PrunedCone := ⟨full⟩

theorem add_assoc (a b c : PrunedCone) : (a + b) + c = a + (b + c) := by
  cases a <;> cases b <;> cases c
  all_goals { simp [add]; split_ifs <;> rfl }

theorem add_comm (a b : PrunedCone) : a + b = b + a := by
  cases a <;> cases b
  all_goals { simp [add]; split_ifs <;> rfl }

theorem zero_add (a : PrunedCone) : 0 + a = a := by
  cases a <;> rfl

theorem add_zero (a : PrunedCone) : a + 0 = a := by
  cases a <;> rfl

theorem mul_assoc (a b c : PrunedCone) : (a * b) * c = a * (b * c) := by
  cases a <;> cases b <;> cases c
  all_goals { simp [mul]; split_ifs <;> rfl }

theorem one_mul (a : PrunedCone) : 1 * a = a := by
  cases a <;> rfl

theorem mul_one (a : PrunedCone) : a * 1 = a := by
  cases a <;> rfl

theorem zero_mul (a : PrunedCone) : 0 * a = 0 := by
  cases a <;> rfl

theorem mul_zero (a : PrunedCone) : a * 0 = 0 := by
  cases a <;> rfl

theorem left_distrib (a b c : PrunedCone) : a * (b + c) = a * b + a * c := by
  cases a <;> cases b <;> cases c
  all_goals { simp [add, mul]; split_ifs <;> rfl }

theorem right_distrib (a b c : PrunedCone) : (a + b) * c = a * c + b * c := by
  cases a <;> cases b <;> cases c
  all_goals { simp [add, mul]; split_ifs <;> rfl }

instance : Semiring PrunedCone where
  add := add
  mul := mul
  zero := origin
  one := full
  add_assoc := add_assoc
  add_comm := add_comm
  zero_add := zero_add
  add_zero := add_zero
  mul_assoc := mul_assoc
  one_mul := one_mul
  mul_one := mul_one
  zero_mul := zero_mul
  mul_zero := mul_zero
  left_distrib := left_distrib
  right_distrib := right_distrib
  nsmul := nsmulRec
  npow := npowRec

end PrunedCone

/-! ## Part 2.5: Height Vector to Cone Mapping -/

def heightShiftAction (shift : ℤ) (hv : Fin 11 → ℝ) : Fin 11 → ℝ :=
  fun i => hv i + shift

noncomputable def coneOfHeightVector (hv : Fin 11 → ℝ) : PrunedCone :=
  let nonzeroIndices := Finset.filter (fun i => hv i ≠ 0) Finset.univ
  if h : nonzeroIndices.card = 0 then
    PrunedCone.origin
  else if nonzeroIndices.card = 1 then
    let i := nonzeroIndices.min' (by simp [Finset.card_pos]; omega)
    PrunedCone.ray i
  else
    PrunedCone.full

/-! ## Part 3: Prime Sequence and Discrete Logarithm -/

def prime_sequence : Fin 11 → ℕ := fun i => match i.val with
  | 0  => 2 | 1  => 3 | 2  => 5 | 3  => 7 | 4  => 11 | 5  => 13
  | 6  => 17 | 7  => 19 | 8  => 23 | 9  => 29 | 10 => 31 | _  => 2

def discreteLog (n : ℕ) : ℕ :=
  if n ≤ 1 then 0 else Nat.log 2 n

noncomputable def galoisHeight (cycleLength : ℕ) : ℝ :=
  if cycleLength = 0 then 0
  else (discreteLog cycleLength : ℝ) * galoisHeightBound / (discreteLog 24)

theorem galoisHeight_nonneg (n : ℕ) : galoisHeight n ≥ 0 := by
  unfold galoisHeight; split_ifs <;> positivity

theorem galoisHeight_bounded (n : ℕ) (hn : 0 < n ∧ n ≤ 24) :
    galoisHeight n ≤ galoisHeightBound := by
  unfold galoisHeight discreteLog
  simp only [Nat.pos_iff_ne_zero.mp hn.1, ite_false]
  have h_bound_pos : galoisHeightBound > 0 := by rw [galoisHeightBound]; norm_num
  have h_log24 : Nat.log 2 24 = 4 := by norm_num
  rw [h_log24]
  have h_log_le : Nat.log 2 n ≤ 4 := by
    rw [← h_log24]
    apply Nat.log_mono_right (by norm_num) hn.2
  calc (Nat.log 2 n : ℝ) * galoisHeightBound / 4
      ≤ 4 * galoisHeightBound / 4 := by
        apply div_le_div_of_nonneg_right _ (by norm_num)
        apply mul_le_mul_of_nonneg_right (Nat.cast_le.mpr h_log_le)
        exact le_of_lt h_bound_pos
    _ = galoisHeightBound := by ring

/-! ## Part 4: Octad Height and Core Theory -/

noncomputable def octadHeight (weight : Fin 25) : ℝ :=
  let k := weight.val
  if k = 0 then 0
  else if k = 8 then galoisHeightBound / 3
  else if k = 12 then galoisHeightBound / 2
  else if k = 16 then galoisHeightBound * 2 / 3
  else if k = 24 then galoisHeightBound
  else (k : ℝ) / 24 * galoisHeightBound

theorem octadHeight_nonneg (w : Fin 25) : octadHeight w ≥ 0 := by
  simp only [octadHeight, galoisHeightBound]
  split_ifs <;> norm_num; positivity

theorem octadHeight_bounded (w : Fin 25) : octadHeight w ≤ galoisHeightBound := by
  simp only [octadHeight, galoisHeightBound]
  split_ifs <;> try norm_num
  have hk_le : (w.val : ℝ) ≤ 24 := Nat.cast_le.mpr (Nat.le_of_lt_succ w.isLt)
  nlinarith

def eCore (e : ℕ) (w : Fin 25) : ℕ :=
  if e = 0 then w.val else w.val % e

def multicore (e : ℕ) (w : Fin 25) : ℕ := eCore e w

instance : DecidablePred (· ∈ StandardWeights) := fun n =>
  decidable_of_iff (n = 0 ∨ n = 8 ∨ n = 12 ∨ n = 16 ∨ n = 24) mem_standardWeights.symm

def corePartition (w : Fin 25) : Bool :=
  decide (w.val ∈ StandardWeights)

/-! ## Part 5: Octad-to-Cone Correspondence -/

def octadToCone : Fin 25 → PrunedCone
  | ⟨0, _⟩ => PrunedCone.ray ⟨0, by decide⟩
  | ⟨8, _⟩ => PrunedCone.ray ⟨1, by decide⟩
  | ⟨12, _⟩ => PrunedCone.ray ⟨2, by decide⟩
  | ⟨16, _⟩ => PrunedCone.ray ⟨3, by decide⟩
  | ⟨24, _⟩ => PrunedCone.ray ⟨4, by decide⟩
  | _ => PrunedCone.origin

def coneToWeight : PrunedCone → Option ℕ
  | PrunedCone.ray ⟨0, _⟩ => some 0
  | PrunedCone.ray ⟨1, _⟩ => some 8
  | PrunedCone.ray ⟨2, _⟩ => some 12
  | PrunedCone.ray ⟨3, _⟩ => some 16
  | PrunedCone.ray ⟨4, _⟩ => some 24
  | _ => none

theorem standard_weight_cone_correspondence (w : Fin 25) (hw : w.val ∈ StandardWeights) :
    coneToWeight (octadToCone w) = some w.val := by
  rcases (mem_standardWeights.mp hw) with h | h | h | h | h
  · have : w = ⟨0, by decide⟩ := Fin.ext h; simp [this, octadToCone, coneToWeight]
  · have : w = ⟨8, by decide⟩ := Fin.ext h; simp [this, octadToCone, coneToWeight]
  · have : w = ⟨12, by decide⟩ := Fin.ext h; simp [this, octadToCone, coneToWeight]
  · have : w = ⟨16, by decide⟩ := Fin.ext h; simp [this, octadToCone, coneToWeight]
  · have : w = ⟨24, by decide⟩ := Fin.ext h; simp [this, octadToCone, coneToWeight]

/-! ## Part 6: Height Vectors and Affine Geometry -/

noncomputable def octadHeightVector (w : Fin 25) : Fin 11 → ℝ :=
  fun i => match i.val with
    | 0 => octadHeight w
    | 1 => (w.val : ℝ)
    | 2 => if w.val = 8 then 1 else 0
    | 3 => if w.val = 12 then 1 else 0
    | 4 => if w.val = 16 then 1 else 0
    | 5 => if w.val = 24 then 1 else 0
    | _ => 0

noncomputable def affineDistance (w1 w2 : Fin 25) : ℝ :=
  Real.sqrt (∑ i : Fin 11, (octadHeightVector w1 i - octadHeightVector w2 i) ^ 2)

theorem affineDistance_nonneg (w1 w2 : Fin 25) : affineDistance w1 w2 ≥ 0 := by
  unfold affineDistance; exact Real.sqrt_nonneg _

theorem affineDistance_self (w : Fin 25) : affineDistance w w = 0 := by
  unfold affineDistance; simp [Real.sqrt_zero]

/-! ## Part 7: Affine Symmetric Group Action -/

def affineSymmetricAction (shift : ℤ) (w : Fin 25) : Fin 25 :=
  let shifted := ((w.val : ℤ) + shift) % 25
  let normalized := if shifted < 0 then shifted + 25 else shifted
  let n := Int.natAbs normalized % 25
  have h : (n : ℕ) < 25 := by
    have : 25 > 0 := by decide
    exact Nat.mod_lt _ this
  ⟨n, h⟩

def isKleshchev (w : Fin 25) : Bool :=
  corePartition w || (w.val > 0 && w.val < 25)

/-! ## Part 8: K-Stability and Gluing Endpoints -/

def is_k_stable (h : ℝ) : Prop :=
  h ≤ galoisHeightBound * 2

noncomputable instance (h : ℝ) : Decidable (is_k_stable h) :=
  inferInstanceAs (Decidable (h ≤ galoisHeightBound * 2))

noncomputable def gluingHeightAfterK (w : Fin 25) (k : ℕ) : ℝ :=
  octadHeight (affineSymmetricAction (k : ℤ) w) + (k : ℝ)

noncomputable def findStableGluingStep (w : Fin 25) : ℕ :=
  let rec go (k : ℕ) (fuel : ℕ) : ℕ :=
    match fuel with
    | 0 => k
    | fuel' + 1 =>
        if is_k_stable (gluingHeightAfterK w k) then k
        else go (k + 1) fuel'
  go 0 101

theorem gluingTerminates (w : Fin 25) :
    findStableGluingStep w ≤ 101 := by
  unfold findStableGluingStep
  sorry

/-! ## Part 9: Final Affine Height Vectors -/

noncomputable def prunedAffineVector (w : Fin 25) : Fin 11 → ℝ :=
  fun i =>
    if i.val = 0 then (findStableGluingStep w : ℝ)
    else octadHeightVector w i

theorem finalVectorWellDefined (w : Fin 25) :
    ∃ (v : Fin 11 → ℝ),
      v = prunedAffineVector w ∧
      (findStableGluingStep w ≤ 100 → is_k_stable (gluingHeightAfterK w (findStableGluingStep w))) := by
  use prunedAffineVector w
  constructor
  · rfl
  · intro _h_limit
    sorry

end HatsuYakitori.MachineConstants
