/-
  HatsuYakitori.MachineConstants.lean
  Unified with AbstractFrontier for Ariki-Koike fan theory.
-/

import HatsuYakitori.AbstractFrontier
import Mathlib.Data.Real.Basic
import Mathlib.Data.Fin.Basic
import Mathlib.Tactic
import Mathlib.Data.Fintype.Basic

open HatsuYakitori

namespace HatsuYakitori.MachineConstants

/-! ## Part 1: PrunedCone Semiring (Tropical Lattice) -/

inductive PrunedCone where
  | origin : PrunedCone
  | ray (i : Fin 11) : PrunedCone
  | full : PrunedCone
  deriving DecidableEq, Repr

namespace PrunedCone

open Finset

-- 1: Fintype instance with correct simp arguments
instance : Fintype PrunedCone where
  elems := {origin, full} ∪ (univ.image ray)
  complete := by
    intro x
    cases x <;> simp [mem_insert, mem_image, mem_univ]

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

-- Helper lemmas
private lemma add_ray_ray (i j : Fin 11) :
    ray i + ray j = if i = j then ray i else full := rfl

private lemma mul_ray_ray (i j : Fin 11) :
    ray i * ray j = if i = j then ray i else origin := rfl

-- Basic properties proven by decide
theorem add_assoc : ∀ a b c : PrunedCone, (a + b) + c = a + (b + c) := by
  decide

theorem add_comm : ∀ a b : PrunedCone, a + b = b + a := by
  decide

theorem zero_add : ∀ a : PrunedCone, 0 + a = a := by
  decide

theorem add_zero : ∀ a : PrunedCone, a + 0 = a := by
  decide

theorem mul_assoc : ∀ a b c : PrunedCone, (a * b) * c = a * (b * c) := by
  decide

theorem one_mul : ∀ a : PrunedCone, 1 * a = a := by
  decide

theorem mul_one : ∀ a : PrunedCone, a * 1 = a := by
  decide

theorem zero_mul : ∀ a : PrunedCone, 0 * a = 0 := by
  decide

theorem mul_zero : ∀ a : PrunedCone, a * 0 = 0 := by
  decide

-- 2: Distribution laws - manual proof because decide fails
theorem left_distrib : ∀ a b c : PrunedCone, a * (b + c) = a * b + a * c := by
  intro a b c
  cases a <;> cases b <;> cases c <;>
  try { rfl }
  all_goals {
    unfold add mul
    split_ifs <;> try rfl
  }

theorem right_distrib : ∀ a b c : PrunedCone, (a + b) * c = a * c + b * c := by
  intro a b c
  cases a <;> cases b <;> cases c <;>
  try { rfl }
  all_goals {
    unfold add mul
    split_ifs <;> try rfl
  }

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

/-! ## Part 2: Semistability -/

namespace ArikiKoike

-- FIX 3: Make isSemistable noncomputable
noncomputable def isSemistable (h : ℝ) : Prop := h ≤ galoisHeightBound * 2

-- FIX 4: Remove Decidable instance (can't be decidable for real numbers)
-- Instead, we'll use it as a Prop

def isGeometricNeighbor (i j : Fin 11) : Bool :=
  let dist := (i.val : ℤ) - (j.val : ℤ)
  dist.natAbs = 1 || dist.natAbs = 10

end ArikiKoike

/-! ## Part 3: Affine Action -/

noncomputable def affineSymmetricAction (shift : ℤ) (w : Fin 25) : Fin 25 :=
  let n : ℤ := (w : ℤ) + shift
  let m : ℤ := n % 25
  let norm : ℤ := if m < 0 then m + 25 else m
  ⟨norm.natAbs, by
    have h0 : 0 ≤ norm := by
      by_cases hm : m < 0 <;> simp [norm, hm]
      · have : m % 25 = m := Int.emod_eq_of_lt (by omega) (by omega)
        omega
      · have hm_bound : m < 25 := Int.emod_lt_of_pos n (by omega)
        omega
    omega⟩

-- FIX 5: Remove noncomputable from lemma (theorems can't be noncomputable)
lemma affineSymmetricAction_zero (w : Fin 25) :
    affineSymmetricAction 0 w = w := by
  unfold affineSymmetricAction
  simp
  ext
  simp [Int.natAbs_of_nonneg]
  have : (w : ℤ) % 25 = (w : ℤ) := by
    apply Int.emod_eq_of_lt
    · exact mod_cast (Nat.zero_le w.val)
    · exact mod_cast w.isLt
  rw [this]
  simp

noncomputable def gluingHeightAfterK (w : Fin 25) (k : ℕ) : ℝ :=
  octadHeight (affineSymmetricAction (↑k : ℤ) w) + (k : ℝ)

/-! ## Part 4: Semistable Step Search -/

noncomputable def findSemistableStep (w : Fin 25) : ℕ :=
  let rec loop (k fuel : ℕ) : ℕ :=
    match fuel with
    | 0 => 25
    | n + 1 => if gluingHeightAfterK w k ≤ galoisHeightBound * 2 then k else loop (k + 1) n
  loop 0 25

/-! ## Part 5: Tropical Embedding -/

noncomputable def prunedHeightVector (w : Fin 25) : Fin 11 → ℝ :=
  fun i =>
    if i.val = 0 then (findSemistableStep w : ℝ)
    else octadHeight w

noncomputable def octadToCone (w : Fin 25) : PrunedCone :=
  let v₀ := findSemistableStep w
  if v₀ = 0 then
    if octadHeight w = 0 then PrunedCone.origin else PrunedCone.ray ⟨0, by decide⟩
  else if v₀ > 20 then PrunedCone.full
  else PrunedCone.ray ⟨0, by decide⟩

/-! ## Part 6: Main Theorem -/

theorem standard_weights_are_semistable (w : Fin 25)
    (hw : w.val ∈ StandardWeights) :
    findSemistableStep w = 0 := by
  unfold findSemistableStep
  have h_action : affineSymmetricAction (↑0 : ℤ) w = w :=
    affineSymmetricAction_zero w
  have h_height : octadHeight w ≤ galoisHeightBound / 2 :=
    AbstractFrontier.standard_weight_height_bound w hw
  have h_gluing : gluingHeightAfterK w 0 = octadHeight w := by
    unfold gluingHeightAfterK
    rw [h_action]
    simp
  have h_galois_nonneg : 0 ≤ galoisHeightBound :=
    AbstractFrontier.galoisHeightBound_nonneg
  have h_stable : gluingHeightAfterK w 0 ≤ galoisHeightBound * 2 := by
    rw [h_gluing]
    linarith [h_height, h_galois_nonneg]
  simp [h_stable]

/-! ## Part 7: Arrow Weight -/

noncomputable def arrowWeight (src dst : Fin 25) : ℝ :=
  |octadHeight src - octadHeight dst|

theorem arrowWeight_nonneg (src dst : Fin 25) : arrowWeight src dst ≥ 0 := by
  unfold arrowWeight
  exact abs_nonneg _

-- FIX 6: arrowWeight_pos_of_distinct_standard with proper proof
theorem arrowWeight_pos_of_distinct_standard
    {w1 w2 : Fin 25}
    (h1 : w1.val ∈ StandardWeights)
    (h2 : w2.val ∈ StandardWeights)
    (hne : w1 ≠ w2) :
    arrowWeight w1 w2 > 0 := by
  unfold arrowWeight
  apply abs_pos.mpr
  intro heq
  have : octadHeight w1 = octadHeight w2 := by linarith
  have := AbstractFrontier.distinct_standard_weights_different_heights w1 w2 h1 h2 hne
  exact this this

-- FIX 7: minimum_standard_arrow_weight with correct bound
theorem minimum_standard_arrow_weight
    {w1 w2 : Fin 25}
    (h1 : w1.val ∈ StandardWeights)
    (h2 : w2.val ∈ StandardWeights)
    (hne : w1 ≠ w2) :
    arrowWeight w1 w2 ≥ 8 / 3 := by
  unfold arrowWeight
  exact AbstractFrontier.minimum_height_difference_standard_weights w1 w2 h1 h2 hne

end HatsuYakitori.MachineConstants
