/-!
# Stack/Queue Switching via Arakelov Heights
## The ℤ vs ℚₚ Perspective

Abstract:
This document formalizes the correspondence between algorithmic traversal strategies (Stack/DFS vs Queue/BFS) and number theoretic structures (Global/Archimedean vs Local/p-adic fields).
Specifically, it interprets the switching threshold in frontier search algorithms as the equilibrium point in Arakelov height theory, akin to the Product Formula.

-/

namespace ArakelovHeightPerspectiveNotes

/-!
## 1. Algorithmic Context and Mathematical Interpretation

### The Algorithm

The frontier search mode is determined by the Galois height $h$ of a permutation cycle relative to a bound $K$.

```lean
-- Conceptual definition
def frontierMode (h : ℝ) (K : ℝ) : FrontierMode :=
  if h < K / 2 then
    FrontierMode.stack  -- Depth-First Search (DFS)
  else
    FrontierMode.queue  -- Breadth-First Search (BFS)
```

### Mathematical Mapping

This algorithmic decision maps to the dichotomy between "small" and "large" heights:

* $h < K/2 \iff$ "Small Height" $\iff$ Stack (DFS)
* $h \ge K/2 \iff$ "Large Height" $\iff$ Queue (BFS)

The central question is the arithmetic meaning of this threshold.
-/

/-!
## 2. Arakelov Height Theory

### Definition

For a point $P$ on an arithmetic variety $X$ over $\mathbb{Q}$, the Arakelov height $h(P)$ is the sum of contributions from all places (Archimedean and non-Archimedean):

$$ h(P) = h_\infty(P) + \sum_{p} h_p(P) $$

where:
* $h_\infty(P) = \log |P|_\infty$ (Archimedean contribution from $\mathbb{R}/\mathbb{C}$)
* $h_p(P) = \log |P|_p$ (p-adic contribution from $\mathbb{Q}_p$)

### Application to Octads

In the context of the Golay code and $M_{24}$:
The "Galois height" corresponds to the Archimedean component:
$$ h_\infty(o) = \frac{\log(\text{cycle\_length})}{\log(24)} = \log |o|_\infty $$

The switching logic at $h = K/2$ implicitly invokes the p-adic structure to balance the total height.
-/

/-!
## 3. The Correspondence: Stack vs Queue $\iff$ ℚₚ vs ℤ

The choice of data structure reflects the dominant metric space topology.

### Stack (DFS) $\iff$ p-adic Topology ($\mathbb{Q}_p$)
* **Behavior:** Local exploration. Goes "deep" into a specific branch.
* **Topology:** Corresponds to the ultrametric inequality of p-adic fields.
* **Condition:** $h < K/2$. The p-adic valuation dominates.
* **Interpretation:** Staying within a "p-adic neighborhood" or ball.

### Queue (BFS) $\iff$ Archimedean Topology ($\mathbb{R}$)
* **Behavior:** Global exploration. Spreads "wide" across levels.
* **Topology:** Corresponds to the standard Euclidean metric.
* **Condition:** $h \ge K/2$. The Archimedean valuation dominates.
* **Interpretation:** Spreading out in the global space.

-/

/-!
## 4. Quadratic Extensions and Ramification ("Twisting by Square Roots")

The transition between these two modes parallels the behavior of quadratic extensions $L = \mathbb{Q}(\sqrt{n})$.

### Global vs Local Ramification
* **$\mathbb{Z}$ (Global):** $\sqrt{n}$ implies global structural changes (ramification at primes dividing $n$).
* **$\mathbb{Q}_p$ (Local):** $\mathbb{Q}_p(\sqrt{n}) / \mathbb{Q}_p$ ramifies if and only if $n$ is a non-square modulo $p$ (specifically involving odd valuations).

### The Threshold at $\sqrt{24}$
The height function is normalized such that:
$$ h(n) = \frac{\log(n)}{\log(24)} $$

At the critical value $n = \sqrt{24} = 24^{1/2}$:
$$ h(\sqrt{24}) = \frac{\log(24^{1/2})}{\log(24)} = \frac{1}{2} = \frac{K}{2K} \cdot K $$

This $1/2$ point marks the transition where the arithmetic structure "twists":
* Below $\sqrt{24}$: Local (p-adic) structure is finer/dominant.
* Above $\sqrt{24}$: Global (Archimedean) structure takes over.

This mirrors Kummer theory where the adjunction of a square root changes the splitting behavior of primes.
-/

/-!
## 5. The Product Formula Formulation

The Stack/Queue threshold represents a discrete analogue of the Product Formula.

### Theorem (Analogue)
The threshold $h = K/2$ corresponds to the equilibrium state where:

$$ h_\infty(x) \approx \sum_p h_p(x) $$

This is derived from the Product Formula $\prod_v |x|_v = 1$, which implies $\sum_v \log |x|_v = 0$.
The algorithm switches strategies exactly when the "weight" shifts from one set of places (local) to the other (global).

-/

/-!
## 6. Connection to Riemann Hypothesis Analogy

### Classical RH (Weil)
For a curve $C$ over $\mathbb{F}_q$, the Zeta function zeros lie on $Re(s) = 1/2$. This relies on:
1.  Frobenius eigenvalues.
2.  Riemann-Roch theorem.
3.  Product formula.

### $M_{24}$ Analogy
In this framework:
* **Functional Equation:** Relates $h \leftrightarrow K - h$ (Stack $\leftrightarrow$ Queue).
* **Critical Line:** The point $h = K/2$.
* **Square Root:** $\sqrt{24}$ appears naturally as the fixed point of the height involution, analogous to $s = 1/2$ in the complex plane.

The "Stack/Queue switching" is an algorithmic realization of the symmetry required by the functional equation of the underlying L-function.
-/

/-!
## 7. Proposed Formalization

To rigorousy prove the connection, the following structure is proposed:

```lean
structure ArakelovStructure (α : Type) where
  height_inf : α → ℝ
  height_p   : (p : ℕ) → [Fact p.Prime] → α → ℝ

  -- The fundamental conservation law
  product_formula : ∀ x, height_inf x + (∑ p, height_p p x) = 0

/--
  The Mode Switching Theorem:
  The algorithmic choice of FrontierMode is determined by the
  dominance of the Archimedean height over the p-adic sum.
-/
theorem stack_queue_threshold (S : ArakelovStructure Octad) (o : Octad) :
  (frontierMode o = FrontierMode.stack) ↔
  (S.height_inf o < ∑ p, S.height_p p o)
```
-/

end ArakelovHeightPerspectiveNotes
