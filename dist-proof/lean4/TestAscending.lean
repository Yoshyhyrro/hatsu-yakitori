import Mathlib
import HatsuYakitori.Carabiner

theorem test (r : Route) (h : r.isAscending) : r.complement.isAscending := by
  unfold Route.isAscending Route.complement at *
  rw [List.pairwise_map, List.pairwise_reverse]
  apply List.Pairwise.imp _ h
  intro a b hab
  dsimp
  have ha := a.height_add_complement
  have hb := b.height_add_complement
  linarith
