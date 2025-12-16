# hatsu-yakitori

**HATSU-YAKITORI** (Heart of the Skewer) is a high-performance Chicken Scheme framework exploring the intersection of **Numerical Physics** and **Algebraic Coding Theory**. 

It provides a core foundation for bounded computation by reinterpreting the Fast Multipole Method (FMM) through the lens of **Goppa Codes** on algebraic curves. By mapping physical potentials to divisors and utilizing **Golay[24,12]** codes for entropy-based control flow, the framework offers a novel approach to adaptive hierarchical computation.

## Core Philosophy: The Goppa-FMM Analogy

This project implements a rigorous mathematical isomorphism between classical N-body algorithms and algebraic geometry codes:

| Physical Concept (FMM) | Algebraic Concept (Goppa/Curve) |
| :--- | :--- |
| **Grid / Space** | Points on an Algebraic Curve (Divisors) |
| **Potential Field** | Rational Function / Differential Form |
| **Multipole Expansion** | Laurent Series (Principal Parts) at a point |
| **Expansion Center** | Local Parameter $t$ / Change of Basis |
| **Singularity** | Pole of a function |
| **Adaptive Hierarchy** | Divisor Degree / Genus constraints |

## Features

- 🧬 **Algebraic FMM**: Re-derivation of multipole expansions using local parameters on Goppa grids.
- 🎛️ **Golay-Driven Frontiers**: Uses the **Hamming weight ($\tau$)** of Golay codewords to dynamically switch traversal strategies (DFS vs. BFS) based on "computational entropy."
- 🧮 **KAK Decomposition**: Logarithmic-scale decomposition for handling interaction matrices.
- 📐 **Finite Geometry**: Morton encoding and hypercube graphs for SSSP validation.
- 🎯 **ε-Bounded Precision**: Algorithms designed with explicit error-correction bounds.

## Architecture

```
hatsu-yakitori/
├── core/
│   ├── golay_frontier.scm       # Golay[24,12] adaptive frontier logic
│   ├── kak_decomposition.scm    # KAK decomposition strategy
│   └── machine_constants.scm    # Fundamental constants & GF(2) arithmetic
├── modules/
│   ├── fmm/
│   │   └── fmm_on_goppa_grid.scm # The Goppa-FMM implementation
│   ├── sssp/                    # Single-Source Shortest Path
│   └── boids/                   # Particle simulation
└── tools/                       # CLI utilities
```

## Implementation Highlight: Golay-Controlled Frontier

The kernel of the framework is the **Adaptive Frontier**. Instead of hardcoded heuristics, the simulation strategy is dictated by the properties of the Golay code.

- **Low Weight ($\tau$)**: Implies low entropy/noise → **DFS (Stack)** mode for deep, precise local corrections.
- **High Weight ($\tau$)**: Implies high entropy → **BFS (Queue)** mode for global, multipole-based sweeps.

### Code Excerpt (`modules/fmm/fmm_on_goppa_grid.scm`)

The interaction loop delegates flow control to the Golay frontier:

```scheme
;; Inside cartan-fmm-evaluate-golay
(let loop ()
  ;; Pop the next task based on Golay-determined strategy (Stack vs Queue)
  (let-values (((level-idx updated-frontier) (adaptive-frontier-pop frontier)))
    (when level-idx
      (set! frontier updated-frontier)
      
      (let ((cell-indices (vector-ref hierarchy level-idx)))
        (unless (null? cell-indices)
          (let* ((level-center (calculate-geometric-center grid cell-indices))
                 (dist (c-abs (c-sub target-pos level-center)))
                 ;; Determine if we need direct calculation (Near) or expansion (Far)
                 (is-near-field (< dist 0.5))) 
            
            (cond
             ;; [Near Field] Direct discrete summation (Residue evaluation)
             (is-near-field
              (calculate-direct-interaction ...))
             
             ;; [Far Field] Algebraic Multipole Expansion (Laurent Series)
             (else
              ;; 1. P2M: Particle to Multipole
              ;; 2. M2L: Basis translation via Binomial convolution
              ;; 3. L2P: Local evaluation
              (perform-algebraic-multipole ...))))))
      (loop))))
```

## Quick Start

### Prerequisites

- [Chicken Scheme 5.x](https://www.call-cc.org/)
- [Stack](https://docs.haskellstack.org/) (for Shake build system)

### Building and Running

```bash
# Build and run the FMM module
stack runhaskell shake/Shake.hs fmm

# Run extended tests
stack runhaskell shake/Shake.hs --module=fmm test

# Clean build artifacts
stack runhaskell shake/Shake.hs clean
```

### Using KAK Decomposition for Large Graph Search

The core `KAK-apply` function provides an adaptive shortest-path algorithm suitable for large-scale graphs:

```scheme
(import kak_decomposition)
(import srfi-69) ; hash-tables

;; Example: City road network with 1000+ nodes
(define city-graph (make-hash-table))

;; Add edges: node -> list of (neighbor . weight)
(hash-table-set! city-graph 'downtown 
  '((station . 2.5) (park . 1.8) (mall . 3.2)))
(hash-table-set! city-graph 'station 
  '((airport . 15.0) (harbor . 8.5)))
;; ... (add more nodes)

;; Run adaptive search
(define distances 
  (KAK-apply 
    city-graph          ; graph structure
    '(downtown)         ; starting point(s)
    100.0               ; upper bound B
    'queue              ; frontier mode: 'stack or 'queue
    8))                 ; decomposition steps

;; Query results
(hash-table-ref distances 'airport)  ; => 17.5
```

### Golay-Controlled Adaptive Strategy

For automatic strategy selection based on problem entropy:

```scheme
;; Let Golay code decide: Stack (DFS) or Queue (BFS)
(define-values (distances tau frontier-config)
  (KAK-apply-golay 
    city-graph 
    '(downtown)
    100.0
    8                   ; decomposition steps
    #b101010101010))    ; 12-bit info: encodes strategy

;; Check which strategy was used
(printf "Strategy: ~a (Hamming weight τ=~a/24)~%"
        (adaptive-frontier-mode frontier-config)
        tau)

;; Low entropy (τ < 12) → Stack/DFS → Deep local search
;; High entropy (τ ≥ 12) → Queue/BFS → Broad global sweep
```

### Why Use This?

- **Automatic decomposition**: Logarithmic scaling handles long-range interactions efficiently
- **Adaptive control**: Golay codes choose optimal traversal strategy
- **Bounded precision**: Explicit ε-convergence guarantees from Cartan levels
- **Flexible**: Works with hash-tables or association lists

### Performance Notes

- Best for graphs with **varying edge weights** and **hierarchical structure**
- `B` parameter controls the range: set to `max_edge_weight × 10` as a rule of thumb
- More `steps` = finer granularity but slower (typically 5-10 is sufficient)
## Future Direction

The roadmap includes extending the `make-goppa-grid` generator from the unit circle (genus $g=0$) to **Elliptic Curves** (genus $g=1$). This will allow the framework to handle **Periodic Boundary Conditions (PBC)** naturally via Weierstrass $\wp$-functions, providing a unified algebraic alternative to Ewald summation.
