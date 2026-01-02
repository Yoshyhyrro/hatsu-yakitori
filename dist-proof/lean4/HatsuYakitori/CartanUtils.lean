/-
  HatsuYakitori.CartanUtils

  Lean4 formalization skeleton corresponding to Chicken Scheme:
    core/cartan_utils.scm

  This module will eventually host Cartan matrix construction and
  decomposition utilities used by the KAK pipeline.

  For now we keep a minimal definition of a Cartan matrix as a real matrix
  indexed by `Fin n`.
-/

import Mathlib.Data.Real.Basic
import Mathlib.Data.Matrix.Basic

namespace HatsuYakitori.CartanUtils

/-- A Cartan matrix (placeholder model). -/
abbrev CartanMatrix (n : Nat) : Type := Matrix (Fin n) (Fin n) ℝ

end HatsuYakitori.CartanUtils
