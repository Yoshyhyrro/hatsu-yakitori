import Mathlib
import HatsuYakitori.Carabiner

theorem test_golayRoute_lattice_points :
    golayRoute.map (fun c => c.height) =
    [galoisHeight 0, galoisHeight 8, galoisHeight 12,
     galoisHeight 16, galoisHeight 24] := by
  simp [golayRoute, carabiner0, carabiner8, carabiner12, carabiner16, carabiner24, Carabiner.height, GolayWeight.height, GolayWeight.toFin25, octadHeight, galoisHeightBound, galoisHeight]
  sorry
