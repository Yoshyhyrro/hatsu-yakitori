## 🍗 Module Highlight: Algebraic FMM on Goppa Grid

**hatsu-yakitori** introduces a novel approach to the Fast Multipole Method (FMM) by reinterpreting potential theory through the lens of **Algebraic Geometry** and **Coding Theory**.

Instead of traditional geometric octrees, we treat the simulation space as a set of divisors on an algebraic curve (Riemann Surface). This allows us to leverage **Goppa Codes** for grid construction and **Golay Codes** for adaptive frontier control.

### Key Concepts

1.  **Goppa Grid Analogy**:
    *   **FMM Particles** $\leftrightarrow$ **Divisors (Points)** on a curve.
    *   **Multipole Expansion** $\leftrightarrow$ **Laurent Series Principal Parts** at poles.
    *   **Translation (M2L)** $\leftrightarrow$ **Change of Basis** for local parameters.
    *   This formulation mathematically separates singularities from expansion centers, naturally handling Periodic Boundary Conditions (PBC) as elliptic functions.

2.  **Entropic Frontier Control (Golay-Driven)**:
    *   We utilize the **Golay [24,12] Code** to manage the traversal frontier.
    *   The Hamming weight ($\tau$) of the codeword acts as an entropy metric for the current computational state.
    *   **Low $\tau$ (Low Entropy)**: Switches to **DFS (Stack)** for deep, localized precision.
    *   **High $\tau$ (High Entropy)**: Switches to **BFS (Queue)** for broad, global approximations.

### Implementation Snippet

The following Scheme snippet demonstrates how the **Golay Frontier** orchestrates the FMM evaluation, dynamically switching between direct summation (Near-field) and multipole expansion (Far-field) based on algebraic distance and code weight.

```scheme
;; module/fmm/fmm_on_goppa_grid.scm

(define (cartan-fmm-evaluate-golay grid hierarchy sources charges target-idx order info-bits)
  ;; Initialize Frontier with Golay code entropy (info-bits)
  (let ((frontier (make-adaptive-frontier info-bits))
        (target-pos (local-parameter grid target-idx)))
    
    ;; Adaptive Traversal Loop
    (let loop ()
      (let-values (((level-idx updated-frontier) (adaptive-frontier-pop frontier)))
        (when level-idx
          (let ((cell-indices (vector-ref hierarchy level-idx)))
             ;; Geometric Center for Divisor expansion
             (let* ((level-center (calculate-geometric-center grid cell-indices))
                    (dist (c-abs (c-sub target-pos level-center))))
               
               (if (< dist THRESHOLD)
                   ;; [Near Field] Direct Interaction (Residue Sum)
                   (compute-direct-sum grid cell-indices target-pos)
                   
                   ;; [Far Field] Algebraic Multipole Method
                   ;; P2M -> M2L (Binomial Convolution) -> L2P
                   (let* ((M (p2m-kernel grid cell-indices charges level-center order))
                          (L (m2l-translation M level-center target-pos order)))
                     (accumulate-potential L)))))
          (loop))))))
```
## Testing with Salmonella ⚗️

This project includes a Salmonella-based test harness. Salmonella is an external test tool for Chicken Scheme and may need to be installed on your system before running the Salmonella tests.

Install Salmonella manually:

```bash
chicken-install -s salmonella
# or with sudo if your environment requires it
sudo chicken-install -s salmonella
```

Run Salmonella tests for the `sssp` module:

```bash
make MODULE=sssp test-salmonella
```

If Salmonella is not available (e.g., in CI), the Makefile will automatically fall back to running plain unit tests with `make test`.
