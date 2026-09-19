# Carabiner Hypotheses

Exploratory scratchpad connecting `CayleyDicksonQuiver.Properties` (this
project's sedenion zero-divisor formalization) to ideas borrowed from
elsewhere in `hatsu-yakitori`: the GF(4) phase / Barnes-Wall carabiner
model in `CliffordCarabiner.lean`, and Guillermo Moreno's rotation
structure on `Spec(a)` for Cayley-Dickson zero divisors
(arXiv:math/0512517).

**Status: exploratory, intentionally *not* `--safe`-clean by policy, and
intentionally *not* imported from `Everything.agda`.** CI never touches
this file. Do not add `open import CayleyDicksonQuiver.Hypotheses` to
`Everything.agda` — if a hypothesis here eventually firms up into a real
result, port the finished statement (and only the finished statement)
into `Properties.agda` under `--safe`, rather than relaxing safety here.

Each hypothesis is stated as an anonymous `_ : P` / `_ = proof` pair, so
it can be type-checked without committing a permanent name to the public
API. If a hypothesis turns out to be the wrong shape, delete or rewrite
the block directly — there is no downstream name to migrate.

```agda
module CayleyDicksonQuiver.Hypotheses where

open import Data.Fin using (Fin; zero; suc)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
```

## H1 — GF(4) phase periodicity (ported sanity check, not a new claim)

`CliffordCarabiner.lean`'s `Carabiner.crossLoad` shifts `phase : ZMod 4`
by `+1`, and `crossLoad_four` shows four shifts return to the start.
This is not itself a hypothesis about `CayleyDicksonQuiver` -- it is a
warm-up restating the same fact on `Fin 4`, to confirm the pattern reads
the same way after the Lean-to-Agda move before building anything new on
top of it.

```agda
rotate : Fin 4 → Fin 4
rotate zero                   = suc zero
rotate (suc zero)             = suc (suc zero)
rotate (suc (suc zero))       = suc (suc (suc zero))
rotate (suc (suc (suc zero))) = zero

_ : ∀ (x : Fin 4) → rotate (rotate (rotate (rotate x))) ≡ x
_ = λ { zero                   → refl
      ; (suc zero)             → refl
      ; (suc (suc zero))       → refl
      ; (suc (suc (suc zero))) → refl
      }
```

## H2 — `Spec(a) = 1` rotation as the source of the phase (open)

Moreno's Theorem 3.5: for every nonzero doubly-pure `a`, `1 ∈ Spec(a)`,
and on that eigenspace `L_a` acts as a genuine 2D rotation (`a(ax) =
-x`), which returns to the start after 4 applications -- structurally
the same shape as H1's `rotate`.

Guess: `CliffordCarabiner`'s `phase : GF4Phase` is secretly counting
applications of `L_a` restricted to the `Spec(a) = 1` eigenspace.

Not formalizable yet at this point in the file: `Pair = ℕ × ℕ` carries
no inner-product structure, so there is no `L_a`, no `Spec`, and no
eigenspace to even state this against. Formalizing it for real would mean
building a genuine `Fin (ambient-dim k) → ℝ` (or similar) vector model
with an inner product -- a substantially bigger undertaking than
anything else in `Properties.agda` so far. Leaving as a note rather than
faking a postulate for it.

## H3 — S³ holonomy in `G₂ → V_{7,2}` (open)

Moreno describes the zero divisors of fixed norm in `A₄` (sedenions) via
the fibration `G₂ → V_{7,2}` with fiber `S³`. `S³` is the unit
quaternions, which contain `ℤ/4 = {1, i, -1, -i}` as a subgroup.

Guess: `CliffordRoute.holonomy` (total phase drift around a route) is
tracking position in that `ℤ/4 ⊂ S³` subgroup as a path winds through
the fiber -- i.e. an actual fiber-bundle holonomy, not a metaphor.

Same caveat as H2: no fiber bundle, no `S³`, nothing to hang this on yet
in the current `Pair`-based model. Left as a note.

## H4 — On-shell / off-shell via the `ImageUniverse` involution (a real try)

From here on: resemblance is enough reason to try, not proof of a bridge.
This section is a real attempt, not just a note.

`ImageUniverse k p` already carries an involution (`pseudo-inv-op`,
`identity-law`). `InverseHeegnerGram.lean`'s pattern is: define a pairing,
call kernel points "on-shell" (orthogonal, pairs to 0) and non-kernel
points "off-shell" (non-orthogonal, pairs to nonzero). Trying the same
shape here, built directly from the involution instead of a Gram matrix:
two points are *paired* exactly when the involution sends one to the
other; a point is *on-shell* when it is paired with itself (a fixed
point), *off-shell* otherwise.

```agda
open import Data.Fin.Properties using (_≟_)
open import Relation.Nullary using (Dec; ¬_)
open ImageUniverse

Paired : ∀ {k p} (iu : ImageUniverse k p) →
  Fin (ambient-dim k) → Fin (ambient-dim k) → Set
Paired iu x y = pseudo-inv-op iu x ≡ y

-- Symmetric for free: unfolds to identity-law.
paired-symm : ∀ {k p} (iu : ImageUniverse k p) {x y} →
  Paired iu x y → Paired iu y x
paired-symm iu {x} refl = identity-law iu x

OnShell : ∀ {k p} (iu : ImageUniverse k p) → Fin (ambient-dim k) → Set
OnShell iu x = Paired iu x x

OffShell : ∀ {k p} (iu : ImageUniverse k p) → Fin (ambient-dim k) → Set
OffShell iu x = ¬ OnShell iu x

-- Every point is decidably one or the other (Fin has decidable equality).
_ : ∀ {k p} (iu : ImageUniverse k p) (x : Fin (ambient-dim k)) →
  Dec (OnShell iu x)
_ = λ iu x → pseudo-inv-op iu x ≟ x

-- Smallest-case sanity check (k=0, ambient-dim 0 = 1): with only one
-- point available, it is forced on-shell -- there is nothing else for
-- pseudo-inv-op to send it to.
_ : ∀ {p} (iu : ImageUniverse 0 p) (x : Fin (ambient-dim 0)) → OnShell iu x
_ = go
  where
  go : ∀ {p} (iu : ImageUniverse 0 p) (x : Fin (ambient-dim 0)) → OnShell iu x
  go iu zero with pseudo-inv-op iu zero
  ... | zero = refl
```

Next smallest untried case: `k = 1` (`ambient-dim 1 = 2`, `Fin 2`). An
involution on a 2-point set is either the identity (both points
on-shell) or the swap (both points off-shell, paired with each other) --
worth stating and checking both are actually realizable before assuming
either.

## Not pursuing

Went looking for a literature connection between Cayley-Dickson
zero-divisor combinatorics and the Butcher group / Connes-Kreimer Hopf
algebra of rooted trees. Found none -- the two areas (real
zero-divisor/Stiefel-manifold algebra vs. rooted-tree renormalization
combinatorics) appear to be genuinely separate in the literature. Not
carrying this one forward.