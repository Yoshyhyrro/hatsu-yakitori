import Mathlib
import HatsuYakitori.Carabiner

theorem test_ascending_descending (r : Route) (h : r.isAscending) : r.complement.isDescending := by
  unfold Route.isDescending Route.complement Route.isAscending at *
  rw [List.pairwise_map, List.pairwise_reverse]
  apply List.Pairwise.imp _ h
  intro a b hab
  dsimp
  have ha := a.height_add_complement
  have hb := b.height_add_complement
  linarith
