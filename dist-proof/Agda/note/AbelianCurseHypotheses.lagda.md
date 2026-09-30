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
itself is not done in Agda. The rank and nullity below are exact, not
estimated or merely bounded -- they come from exact rational (not
floating-point) Gaussian elimination, carried out outside Agda since
Sage's `matrix(QQ, ...)` is unavailable in this sandbox:

| W  | admissible words (columns) | relation rows | rank | nullity |
|----|-----------------------------|----------------|------|---------|
| 7  | 5                           | 4              | 2    | 3       |
| 8  | 15                          | 20             | 10   | 5       |
| 9  | 35                          | 60             | 29   | 6       |
| 10 | 70                          | 140            | 61   | 9       |
| 11 | 126                         | 280            | 112  | 14      |
| 12 | 210                         | 504            | 190  | 20      |

The nullity is the candidate-B invariant: exactly the dimension of
index-word combinations the admissible-pair relations leave
undetermined, not an upper bound on that dimension. This exact count
does not match Broadhurst-Kreimer's conjectural depth-graded dimension
(0, for every one of these (weight, depth-5) pairs, by the parity
theorem) -- expected rather than contradictory, since admissible-word
relations alone omit the `zeta(1)`-regularized ones. Whether the
nullity computed this way carries any meaning beyond its own definition
is open; not pursued further.

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

Recomputed by exact rational arithmetic outside Agda (`fractions.
Fraction`, trial-division square-class factoring); Sage was not
available in this sandbox, so the original script's sections 9-11
(Sage's `Genus`, `local_symbols`, `spinor_generators`,
`automorphous_numbers`) are neither reproduced nor claimed here.

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
one class) into 4 classes, and every one of those classes has exactly 2
elements -- not merely "at most 2" from a search that might have missed
elements, since the enumeration is exhaustive (the search space is the
whole, already-closed, order-16 group). Whether this uniformity
persists for a larger or different generating set is open; nothing here
establishes it in general. The nontrivial element of the `sn = 1` fibre
is
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

### AC3a — Local (GF(2)) reformulation of the spinor norm

`Q*/(Q*)^2` is the product of a sign bit and, for each prime `p`, the
parity of the `p`-adic valuation. Writing each square class this way --
a fixed list of primes, one GF(2) bit per prime, plus a sign bit --
turns "which classes does `sn` reach" into a linear-algebra question:
because `sn` is a group homomorphism into an `F_2`-vector space, the
image of `sn` on a subgroup generated by reflections along
`v_1, ..., v_r` is *exactly* the GF(2)-span of the vectors
`local-signature(q(v_1)), ..., local-signature(q(v_r))` -- not merely
contained in it, and not merely containing it -- of size `2^rank`,
whichever generators are chosen. Against AC3's own generators
(`q(e1)=1, q(e2)=1, q(e3)=7, q(e12)=2`, primes `2,3,5,7,11`) this
predicts `2^2 = 4` reachable classes from the rank alone; this is
exactly the `{1,2,7,14}` found earlier by exhaustive search of the
order-16 group, but obtained here without enumerating the group at all.
(For this particular positive-definite form every generator has
`q(v) > 0`, so the sign bit is constant and carries no information; it
would matter for an indefinite form.)

This makes the "how many classes are reachable" half of AC3 scale
politely (linear algebra over GF(2), polynomial in the number of primes
and generators, no combinatorial search). It does *not* by itself give
the fibre sizes computed above: by the first isomorphism theorem,
`|SO(V)| = |image(sn)| * |ker(sn|_SO(V))|` exactly, so knowing the
image's size (now cheap) still leaves `|SO(V)|` itself -- the actual
order of the reflection group -- as the unresolved cost, currently only
obtained by exhaustive enumeration. Separately: representing `sn`'s
target as a GF(2) vector of supplied valuation parities, rather than a
signed squarefree integer requiring factorization, would also be the
lighter choice if this is ever ported to Agda -- no factorization
algorithm needed, just XOR on `List Bool`.

### AC3b — p-adic genus symbols and the oddity formula (a second, independent local-to-global identity)

A different, more classical instance of local data reconstructing a
global invariant exactly rather than merely bounding it. For a
symmetric integer matrix `A`, Conway-Sloane's Jordan splitting at each
prime `p` (Sage: `p_adic_symbol` / `two_adic_symbol`) assigns a local
genus symbol, whose `excess` (called the oddity at `p = 2`) satisfies

```
(r - s) - excess(2) + sum_{p odd} excess(p) ≡ 0 (mod 8)
```

for any symmetric matrix admitting a genus, where `(r,s)` is the
signature -- this is exactly the identity Sage's own `is_GlobalGenus`
checks, not a heuristic approximation of it. The sign is not uniform:
`excess(2)` is subtracted while odd primes are added, so "the sum of
all local excess equals the signature" is not the identity and does
not hold in general.

`p_adic_symbol`, `two_adic_symbol`, `split_odd`, `trace_diag_mod_8`,
and `excess` were ported line-for-line from Sage's
`sage/quadratic_forms/genera/genus.py` (fetched from the `sagemath/
sage` repository, since Sage itself is unavailable in this sandbox)
rather than reconstructed from memory, and checked against the three
worked examples already present as doctests in that file (`diag(1,3,
-3)`, `2*diag(1,3,-3)`, `2*diag(1,2,3,4)`, each at `p = 2,3,5,7,11`: 15
values total) -- all 15 match exactly, not approximately. One porting
error was caught this way: the recursive Jordan-splitting step must
shift its own current-level block by the same valuation as the
recursive part, not the recursive part alone; the mismatch is invisible
whenever `m0 = 0` at the outer call or the recursion has depth 1, which
is why the smaller doctest examples did not expose it and `diag(1,2,3,
4)` at `p = 3,5,7,11` did not either -- only `p = 2` on the full
rank-4 example forced a recursion deep enough to matter.

For `A = 2*diag(1,2,3,4)`, `primes = [2,3,5,7,11]`:

| p | 2 | 3 | 5 | 7 | 11 |
|---|---|---|---|---|----|
| excess | 2 | 6 | 0 | 0 | 0 |

The signature is `(4,0)`. `(4-0) - 2 + (6+0+0+0) = 8 ≡ 0 (mod 8)`: the
identity holds exactly for this matrix, which confirms -- rather than
merely suggests -- that it carries a consistent global genus.

Not attempted: the remaining `is_GlobalGenus` conditions (the per-prime
Hilbert-symbol-style checks `a.kronecker(p) == b`), `is_2_adic_genus`,
and any link back to AC3's own `diag(1,1,7)`. AC3 and AC3b use different
quadratic forms and have not been connected to each other.