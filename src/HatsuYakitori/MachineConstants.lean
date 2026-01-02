/-
  HatsuYakitori.WittFoundation

  Lean4 formalization skeleton corresponding to Chicken Scheme:
    core/witt_foundation.scm

  This file intentionally starts minimal: it defines the core types
  (points, octads, contexts) and a few basic operations. Deeper
  theorems (e.g. Steiner system axioms, M24 action) should be added
  in later iterations and may depend on additional modules.
-/

import Mathlib.Data.Fin.Basic
import Mathlib.Data.Finset.Card

namespace HatsuYakitori.WittFoundation

/-- The 24 points of the Witt design. -/
abbrev Point : Type := Fin 24

/-- An octad is represented as a finite subset of the 24 points.

In the Scheme implementation this is a 24-bit integer (bitset). In Lean,
we start with `Finset Point` as a convenient mathematical model.
-/
abbrev Octad : Type := Finset Point

/-- Hamming weight / set cardinality. -/
abbrev weight (o : Octad) : Nat := o.card

/-- Predicate: an octad has weight 8. -/
def IsOctad (o : Octad) : Prop := weight o = 8

/-- Set operations mirroring Scheme octad primitives. -/
abbrev inter (a b : Octad) : Octad := a ∩ b

/-- Complement inside the 24-point universe. -/
abbrev compl (o : Octad) : Octad := oᶜ

/-- A Witt context bundles the set of all octads and basic invariants.

We keep the axioms as fields (rather than proving them now) so that later
we can connect this to a concrete construction (e.g. from Golay code).
-/
structure WittContext where
  /-- The collection of octads (expected to have cardinality 759). -/
  octads : Finset Octad
  /-- Every element of `octads` is an octad (has weight 8). -/
  octads_are_octads : ∀ o, o ∈ octads → IsOctad o
  /-- The Witt design contains 759 octads. -/
  octads_card : octads.card = 759

end HatsuYakitori.WittFoundation