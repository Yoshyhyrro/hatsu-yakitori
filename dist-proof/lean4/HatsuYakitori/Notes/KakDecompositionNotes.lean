/-!
# KakDecomposition Notes

This note collects research-level material and long-term formalization goals
for `HatsuYakitori.KakDecomposition`.

The implementation file `HatsuYakitori/KakDecomposition.lean` is intentionally
kept **thin** (data containers + stable interfaces) so that the Lean build
remains robust. Anything that is large, analytic, or depends on operational
semantics/complexity models should live here first.

## 1. Mathematical Framework (KAK)
A KAK decomposition factors (in an appropriate setting) an element $g \in G$ as

$$
  g = k_1 \cdot a \cdot k_2
$$

where $k_1, k_2 \in K$ (maximal compact subgroup) and $a \in A$ (Cartan torus / 
"hyperbolic" component).

## 2. Physical Interpretation
- $K$: local symmetries (rotations / gauge)
- $A$: global evolution (Cartan flow)
- $K$: final local symmetry

## 3. Computational Connection
The idea is to use the Cartan component `a` as a control signal for search
complexity:
- small "eigenvalues" / small Cartan parameters → low branching → DFS/stack
- large Cartan parameters → high branching → BFS/queue

This is intended to connect:
- Golay info-bit weight (coding)
- height/energy proxy (representation/physics)
- adaptive strategy selection (algorithm theory)

## 4. Suggested Lean Layering
A workable layering (to avoid blocking on heavy proofs):

1. **Core container**: a `KakDecomposition` record, independent of group theory.
2. **Interfaces**: typeclasses for a "complexity" measure on Cartan elements.
3. **Algorithm skeleton**: a graph search state machine controlled by strategy.
4. **Proof skeletons**: termination and correctness, initially as statements.
5. **Bridge theorems**: connect complexity threshold ↔ strategy choice.

Steps 2–5 are large and should be prototyped here (Notes) before being moved
into executable Lean code.

## 5. Roadmap for the Big Skeleton
The large sketch (graph search, hash maps, shortest paths, optimality claims,
connections to `Complexity.lean`, etc.) is a legitimate target, but it should be
split into smaller submodules once stabilized:

- `KakDecomposition/Core` (containers + basic defs)
- `KakDecomposition/Search` (frontier + relax + loop)
- `KakDecomposition/Correctness` (termination + shortest-path properties)
- `KakDecomposition/Bridges` (Golay/Galois/height control)

-/
