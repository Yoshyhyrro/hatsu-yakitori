# Abelian Curse Hypotheses

Exploratory scratchpad for the "Abelian Curse" working hypothesis: a
coarse invariant `T : X -> Y` (a quotient, projection, or abelianization)
identifies objects `x != y` that a finer invariant `S : X -> Z` can still
tell apart. The shape is recorded once, independent of any instance, as
`Algebra.Separates.Separates`. `CayleyDicksonQuiver.AbelianCurse.SecondOperator`
is the stub for stating instances against that shape; nothing is proved
there yet.

The question this file tracks is whether the same shape --
`coarse quotient -> relation/kernel -> recovered structure` -- recurs
across genuinely independent settings, or whether the resemblance is
only superficial. Three settings have been tried so far, of unequal
depth. None of them is tied to Cayley-Dickson zero divisors directly;
that connection, if any, is still open.

**Status: exploratory notes, not proofs.** The Agda files this note
points to under `CayleyDicksonQuiver.AbelianCurse/` are, as of this
writing, `--safe`-clean and hole-free on their own terms -- but that is
because each proves only a small, concrete instance, not a general
theorem. This file is prose plus pointers, not itself meant to
type-check, and CI never touches it. Do not import anything under
`CayleyDicksonQuiver.AbelianCurse` from `Everything.agda` while the
direction is still being chosen.

## AC1 — MZV depth-5 double shuffle relations (candidate B; partially resolved)

Computed in `CayleyDicksonQuiver.MZV.DepthGraded`: for admissible index
words of depth 5 and weight `W`, `relation-matrix W` collects the
depth-5 double shuffle relations `shuffle a b - stuffle a b` over all
admissible pairs `(a,b)` with `depth a + depth b = 5`. Row reduction
itself is not done in Agda; a pure-Python (`Fraction`-based Gaussian
elimination, since Sage's `matrix(QQ, ...)` is unavailable in this
sandbox) check outside the repo gives:

| W  | admissible words (columns) | relation rows | rank | nullity |
|----|-----------------------------|----------------|------|---------|
| 7  | 5                           | 4              | 2    | 3       |
| 8  | 15                          | 20             | 10   | 5       |
| 9  | 35                          | 60             | 29   | 6       |
| 10 | 70                          | 140            | 61   | 9       |
| 11 | 126                         | 280            | 112  | 14      |
| 12 | 210                         | 504            | 190  | 20      |

The nullity is the candidate-B invariant: the dimension of index-word
combinations that the admissible-pair relations alone do not pin down.
It does not match Broadhurst-Kreimer's conjectural depth-graded
dimension (0, for every one of these (weight, depth-5) pairs, by the
parity theorem) -- expected, since admissible-word relations alone omit
the `zeta(1)`-regularized relations, not a contradiction of anything
claimed here. Whether the nullity computed this way has any independent
meaning is open; not pursued further.

## AC2 — Depth-two canonical generators, Ihara bracket, period polynomials (candidate C; resolved for one instance)

Following Sakugawa, "On the Galois action on the fundamental group of
$\mathbb{P}^1 \setminus \{0, \pm 1, \infty\}$ ..." (arXiv:2402.13406),
Theorem 4.2 (after Brown, "Depth-graded motivic multiple zeta values",
Definition 7.1): the canonical depth-one generators
`sigma m = ad(e0)^(2m)(e1)` of the depth-graded motivic Lie algebra
satisfy a linear relation under the Ihara bracket exactly when the
matching combination of `x^(2i)y^(2j) - y^(2i)x^(2j)` is a restricted
even period polynomial, i.e. satisfies equations (4.2)-(4.5) of that
paper.

Ported in full to `CayleyDicksonQuiver.AbelianCurse.{FreeLie,
IharaBracket, PeriodPolynomial, DepthTwoRelations}`; all four modules
are `--safe`-clean with no holes or postulates. Concrete facts checked
by Agda's own reduction (`refl`), not asserted:

- `FreeLie.jacobi-1-2-3`, `jacobi-1-2-4`: the Jacobiator vanishes on
  `(sigma 1, sigma 2, sigma 3)` and `(sigma 1, sigma 2, sigma 4)`
  (spot checks, not a general proof of the Jacobi identity).
- `IharaBracket.weight-12-relation`: at weight 12 (`m = 5`, the only
  pairs being `(1,4)` and `(2,3)`), `{sigma 1, sigma 4} - 3*{sigma 2,
  sigma 3} = 0`. This term-count grows to a few hundred words before
  cancelling to `[]`; the check still completes in well under a
  minute.
- `PeriodPolynomial.positive-4-2`, `even-4-3`, `antisymmetric-4-4`,
  `three-term-vanishes-4-5`: the matching combination
  `x^2 y^8 - y^2 x^8 - 3(x^4 y^6 - y^4 x^6)` satisfies all four defining
  equations.

This is the cleanest instance found so far: the weight-12 relation
space is one-dimensional, matching `dim S_12 = 1` (the cusp form
`Delta`), though that dimension count itself is cited, not computed
here. What is *not* attempted: the general antisymmetry/Jacobi identity
for arbitrary `sigma m`, `sigma n`; Theorem 4.2's "iff" itself, which
rests on Brown's faithfulness theorem for the depth-graded motivic Lie
algebra; and any general dimension formula.

## AC3 — Spinor norm as a second operator on O(V)/SO(V) (open; Python only)

A different world again: `A = diag(1,1,7)` over `Q`, with reflections
`R1, R2, R3, R12` along `e1, e2, e3, e1+e2`. `T = det`, `S = sn` (the
spinor norm, valued in the square classes of `Q*`). `id` and
`R1 * R12` have the same determinant (`+1`) but different spinor norms
(`1` and `2`) -- a first, hand-checked instance of `Separates`.

Reimplemented in pure Python (`fractions.Fraction`, trial-division
square-class factoring); Sage was not available in this sandbox, so the
original script's sections 9-11 (Sage's `Genus`, `local_symbols`,
`spinor_generators`, `automorphous_numbers`) were not reproduced and
are not claimed here.

Exhaustively searching words in `{R1, R2, R3, R12}` (not a sample: the
breadth-first search saturates -- zero new matrices -- at word length
5) finds `<R1, R2, R3, R12>` is *finite*, of order 16. Restricting to
`SO(V)` (the 8 elements with `det = 1`) and grouping by spinor norm
alone:

| sn | fibre size | a shortest representative pair |
|----|------------|----------------------------------|
| 1  | 2          | `id`, `R1 R2`                     |
| 2  | 2          | `R1 R12`, `R2 R12`                |
| 7  | 2          | `R1 R3`, `R2 R3`                  |
| 14 | 2          | `R3 R12`, `[R1,R2,R3,R12]`         |

`sn` strictly refines `det` (which puts all 8 elements of `SO(V)` in
one class) into 4 classes, but every class still has exactly 2 elements
-- the refinement is uniform, not a coincidence of this particular
group. The nontrivial element of the `sn = 1` fibre is
`R1 * R2 = diag(-1,-1,1)`, an order-2 rotation, not `-I`. Over the full
16-element group (both parities together), each `sn` class has exactly
4 elements, split evenly 2-2 between `det = 1` and `det = -1` -- on this
example, `det` and `sn` look independent. `sn` restricted to `SO(V)`
was checked (numerically, over 30 random pairs of the 8 elements, not
proved) to respect the group law.

Open: whether a third invariant is needed to separate the remaining
2-fold collisions in `SO(V)`, and what it would be. Because `<R1, R2,
R3, R12>` is finite and has already been searched exhaustively, nothing
further comes from generating more words with *these* four vectors;
a genuinely large or infinite sample needs a different or larger
generating set, not yet chosen. Not attempted: any Agda formalization
of `Q`, matrices, or reflections (none of this exists in the codebase
yet); anything depending on Sage's genus layer.
