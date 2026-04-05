import Mathlib
import HatsuYakitori.MachineConstants

structure Carabiner where
  weight : GolayWeight
  phase : ZMod 4
deriving DecidableEq, Repr

def Carabiner.height (c : Carabiner) : ℝ := c.weight.height

theorem carabiner_height_injective (c1 c2 : Carabiner) :
    c1.height = c2.height ↔ c1.weight = c2.weight := by
  constructor
  · intro h
    rcases c1 with ⟨w1, p1⟩
    rcases c2 with ⟨w2, p2⟩
    cases w1 <;> cases w2 <;> simp_all [Carabiner.height, GolayWeight.height, GolayWeight.toFin25, octadHeight, galoisHeightBound] <;> norm_num
  · intro h
    simp [Carabiner.height, h]
