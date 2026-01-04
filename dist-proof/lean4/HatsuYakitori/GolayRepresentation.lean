-- filepath: c:\Users\tyuuw\hatsu-yakitori\dist-proof\lean4\HatsuYakitori\GolayRepresentation.lean
/-
  HatsuYakitori.GolayRepresentation

  Bridge layer between combinatorial Golay/Witt objects and the
  representation/height side.

  Design goal:
  - Keep this file THIN (interfaces + naming + intended correspondences).
  - Avoid committing to Mathlib's `Quiver.Path` formalization for now.
  - Leave room to refine later (e.g. introduce a real quiver and path weights).
-/

import HatsuYakitori.WittFoundation
import HatsuYakitori.GolayFrontier
import HatsuYakitori.MachineConstants

namespace HatsuYakitori.GolayRepresentation

/--
A minimal “bridge interface” that records the correspondences we care about,
without forcing a full formalization (Quiver/Path/fractal dimension, etc.).

This avoids the “floating abstract gal_height” smell by stating *what data* is
missing as explicit fields/axioms, while keeping the build stable.
-/
structure Bridge where
  -- Combinatorial side
  Point : Type
  Octad : Type
  IsOctad : Octad → Prop

  -- Weight class indexing (representation side)
  octadToWeightClass : Octad → Fin 25

  -- Group action side (M₂₄-like)
  Mathieu24 : Type
  act : Mathieu24 → Octad → Octad
  preservesOctad : ∀ g o, IsOctad o → IsOctad (act g o)

  -- Height side
  octadHeight : Fin 25 → ℝ
  machineEpsilonReal : ℝ

  -- The key “epsilon resolves nontrivial transitions” assumption, isolated here
  minimal_arrow_weight_bound :
    ∀ src dst : Fin 25, src ≠ dst → |octadHeight src - octadHeight dst| ≥ machineEpsilonReal

/-- “Arrow thickness” (quiver-ish) model: no Path yet. -/
@[simp] def Bridge.arrowWeight (B : Bridge) (src dst : Fin 25) : ℝ :=
  |B.octadHeight src - B.octadHeight dst|

/-- Convenience lemma: symmetry of the arrow weight (purely definitional). -/
theorem arrowWeight_symm (B : Bridge) (src dst : Fin 25) :
    B.arrowWeight src dst = B.arrowWeight dst src := by
  simp [Bridge.arrowWeight, abs_sub_comm]

end HatsuYakitori.GolayRepresentation