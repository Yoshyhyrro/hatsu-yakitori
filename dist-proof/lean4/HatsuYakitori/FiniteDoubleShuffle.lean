import Mathlib.Algebra.FreeAlgebra
import Mathlib.Data.ZMod.Basic
-- The two imports above weren't enough to get `GroupWithZero (ZMod p)` (hence
-- `Field (ZMod p)` from `[Fact p.Prime]`) resolved on this Mathlib pin — the
-- `Mathlib.Data.ZMod.Basic` doc page's own import list doesn't obviously reach
-- it. Adding these two explicitly; if `harmonicSum` still doesn't find the
-- instance, the guaranteed (if blunt) fallback is `import Mathlib`.
import Mathlib.Algebra.Field.Basic
import Mathlib.Algebra.GroupWithZero.Units.Basic

/-!
# A finite double-shuffle algebra, parametrized by a prime

`HeisenbergCarabiner.lean` generalized `QuiverRep` from a fixed `ZMod q` to an
arbitrary ring `R` (`QuiverRepGeneral`). This file applies the same move to the
`DSAlgebra17` sketch: instead of hardcoding the prime `17`, the whole
construction is parametrized by an arbitrary prime `p`; `DSAlgebra17` itself is
just the special case `DSAlgebra 17`, recovered for free at the bottom.

Picture: an alphabet with one fixed letter `X` and one letter `Y u` for every
nonzero residue `u` mod `p` (`p` letters total, since `p` is prime), the free
`ℚ`-algebra on that alphabet, and two products on words — `shuffleProd` (the
ordinary interleaving/shuffle product) and `stuffleProd` (a "harmonic"
quasi-shuffle product that additionally contracts adjacent `Y`-letters by
adding their indices mod `p`). This is the usual algebraic skeleton behind the
double shuffle relations for (finite) multiple zeta values.
-/

namespace HatsuYakitori.FiniteDoubleShuffle
-- renamed from `HatsuYakitori.DSAlgebra`: that collided with the `DSAlgebra`
-- abbrev below (`linter.dupNamespace`: `HatsuYakitori.DSAlgebra.DSAlgebra`).
-- Rename again to fit wherever this actually lands in the project.

/-- The alphabet: `X`, plus one letter `Y u` for every nonzero residue `u`
mod `p`. Doesn't need `p` prime to typecheck — `(ZMod p)ˣ` makes sense for any
`p` — the primality hypothesis only shows up later, in `harmonicSum`. -/
inductive Letter (p : ℕ) : Type
  | X : Letter p
  | Y : (ZMod p)ˣ → Letter p
deriving DecidableEq
-- `Repr` dropped from the original sketch: not guaranteed to exist for
-- `(ZMod p)ˣ` in general. Add a hand-written instance back in (e.g. via
-- `u.val.val`) if you want `#eval`-friendly output.

/-- The free (noncommutative, unital) `ℚ`-algebra on `Letter p`; words form a
`ℚ`-basis. `abbrev`, not `def`: keeps `DSAlgebra p` *reducibly* equal to
`FreeAlgebra ℚ (Letter p)`, so `Ring`/`Algebra` instances transfer for free
instead of needing to be re-derived by hand. -/
abbrev DSAlgebra (p : ℕ) : Type := FreeAlgebra ℚ (Letter p)

variable {p : ℕ}

/-- Prepends a letter to a word, as a monomial in `DSAlgebra p`. -/
def consAlg (a : Letter p) (x : DSAlgebra p) : DSAlgebra p :=
  FreeAlgebra.ι ℚ a * x

/-- The shuffle product of two words: the sum over all interleavings.
Named top-level parameters (rather than the bare `| pat => ...` equational
style of the original sketch) so `termination_by` has something unambiguous
to point at for the well-founded recursion. -/
def shuffleProd (l₁ l₂ : List (Letter p)) : DSAlgebra p :=
  match l₁, l₂ with
  | [], ws => ws.foldr consAlg 1
  | us, [] => us.foldr consAlg 1
  | (a :: us), (b :: vs) =>
      consAlg a (shuffleProd us (b :: vs)) +
      consAlg b (shuffleProd (a :: us) vs)
termination_by l₁.length + l₂.length

/-- The harmonic contraction of two head letters: two `Y`-letters combine by
adding their indices mod `p`, vanishing if the sum is `0`; `X` never combines
with anything. Same as `DSAlgebra17.harmonicSum`, but for general `p`, and
without the `sorry`: the `dite` below already binds `h : u.val + v.val ≠ 0` in
the `else` branch, which is exactly what `Units.mk0` wants. -/
def harmonicSum [Fact p.Prime] (a b : Letter p) : DSAlgebra p :=
  match a, b with
  | Letter.Y u, Letter.Y v =>
      if h : u.val + v.val = 0 then
        0
      else
        FreeAlgebra.ι ℚ (Letter.Y (Units.mk0 (u.val + v.val) h))
  | _, _ => 0

/-- `harmonicSum` doesn't see argument order: every branch of the match is
visibly symmetric. First real theorem in this file, not just a definition. -/
theorem harmonicSum_comm [Fact p.Prime] (a b : Letter p) :
    harmonicSum a b = harmonicSum b a := by
  cases a with
  | X => cases b with
    | X => rfl
    | Y v => rfl
  | Y u => cases b with
    | X => rfl
    | Y v => simp only [harmonicSum, add_comm u.val v.val]

/-- The stuffle (quasi-shuffle / harmonic) product of two words. -/
def stuffleProd [Fact p.Prime] (l₁ l₂ : List (Letter p)) : DSAlgebra p :=
  match l₁, l₂ with
  | [], ws => ws.foldr consAlg 1
  | us, [] => us.foldr consAlg 1
  | (a :: us), (b :: vs) =>
      consAlg a (stuffleProd us (b :: vs)) +
      consAlg b (stuffleProd (a :: us) vs) +
      harmonicSum a b * stuffleProd us vs
termination_by l₁.length + l₂.length

/-- **Statement only, proof deferred.** Shuffle product should be commutative:
interleavings of `(us, vs)` biject with interleavings of `(vs, us)`. Induction
on `us.length + vs.length` (matching `shuffleProd`'s own `termination_by`);
the two recursive calls in the `(a::us),(b::vs)` case need to line up against
the two recursive calls of `shuffleProd (b::vs) (a::us)` after reassociating
the sum. Mathematically routine, but the well-founded-recursion equation
lemmas can make the `rw`/`simp` bookkeeping fiddly — left as the next concrete
target rather than guessed at here. -/
theorem shuffleProd_comm (us vs : List (Letter p)) :
    shuffleProd us vs = shuffleProd vs us := by
  sorry

/-- **Statement only, proof deferred.** Same shape as `shuffleProd_comm`, with
`harmonicSum_comm` handling the extra contraction term. -/
theorem stuffleProd_comm [Fact p.Prime] (us vs : List (Letter p)) :
    stuffleProd us vs = stuffleProd vs us := by
  sorry

/-- The original `17`-specific sketch is just this one instance — no
`Fact (Nat.Prime 17)` needed merely to name the type, only once `harmonicSum`
or `stuffleProd` are actually used at `p = 17`. -/
example : Type := DSAlgebra 17

end HatsuYakitori.FiniteDoubleShuffle
