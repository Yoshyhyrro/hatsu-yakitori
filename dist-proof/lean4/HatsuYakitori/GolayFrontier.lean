/-
  HatsuYakitori.GolayFrontier

  Lean4 formalization skeleton corresponding to Chicken Scheme:
    core/golay_frontier.scm

  The long-term goal is to connect the extended binary Golay code
  Golay[24,12,8] to the Witt design (octads are the weight-8 codewords),
  and then to automorphisms (M24).

  This file defines minimal types and "interfaces" (structures) so that
  later proofs can be layered on without rewriting the plumbing.
-/

import Mathlib.Data.Finset.Card
import Mathlib.Data.Set.Basic

import HatsuYakitori.WittFoundation

namespace HatsuYakitori.GolayFrontier

open HatsuYakitori.WittFoundation

/-- A codeword is a subset of the 24 positions.

(Again, Scheme uses bitvectors; we model as `Finset` for now.)
-/
abbrev Codeword : Type := Octad

/-- The (extended) Golay code as a set of codewords.

We keep algebraic properties as fields to avoid committing early
to a particular representation (matrices vs generators vs bitvectors).
-/
structure Golay24Code where
  codewords : Set Codeword
  /-- Placeholder: linearity / closure properties live here later. -/
  isLinear : Prop := True

/-- Weight of a codeword. -/
abbrev weight (c : Codeword) : Nat := c.card

/-- The set of octads as weight-8 codewords of the Golay code. -/
def octads (G : Golay24Code) : Set Codeword :=
  { c | c ∈ G.codewords ∧ weight c = 8 }

end HatsuYakitori.GolayFrontier
