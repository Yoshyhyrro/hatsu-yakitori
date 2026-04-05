import Mathlib
import HatsuYakitori.Carabiner

theorem test : (golayRoute.complement).isAscending := by
  unfold Route.isAscending Route.complement golayRoute
  dsimp [carabiner0, carabiner8, carabiner12, carabiner16, carabiner24, Carabiner.complement, Carabiner.height, GolayWeight.complement, GolayWeight.height, GolayWeight.toFin25, octadHeight, galoisHeightBound]
  decide
