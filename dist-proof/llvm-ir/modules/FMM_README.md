# Cartan-FMM Solver: Adaptive Traversal on Goppa-Algebraic Grids

## Overview
This implementation is a specialized Fast Multipole Method (FMM) designed for evaluating interactions over points mapped onto **Goppa-derived manifolds**. Unlike standard FMMs that partition Euclidean space into uniform octrees, this solver operates on graphs defined by algebraic-geometric codes and Lie-algebraic symmetries (Cartan root systems).

## Optimized Graph Topologies

This solver is engineered to explore and process graphs with the following structural characteristics:

### 1. Lie-Algebraic Lattices (Cartan Structures)
The "Cartan" kernel is optimized for graphs where node connectivity and interaction strengths are governed by **Cartan matrices**. 
- **Topology:** Root systems and Weyl group symmetries.
- **Use Case:** High-dimensional beam dynamics where the Hamiltonian flow follows specific Lie-algebraic constraints.

### 2. Code-Theoretic Point Sets (Goppa Grids)
The grid is not a simple mesh but a collection of points derived from **Goppa Codes** (Algebraic-Geometric codes).
- **Topology:** Points residing on an algebraic curve over a finite field, mapped into complex space.
- **Graph Feature:** High "Algebraic Density" with strict distance properties (Minimum Hamming Distance constraints), ensuring that the tree structure is optimally pruned for error-correcting properties.

### 3. Non-Gaussian Distribution Graphs (Landau-type Clusters)
The engine is specifically designed to handle graphs with **High-Entropy Heavy Tails** (e.g., Landau distributions in particle energy loss).
- **Topology:** Small-world clusters connected by a few extremely "influential" long-range edges (High Golay-weight nodes).
- **Search Strategy:** 
    - **Low-Entropy Clusters:** Explored via **Stack-based DFS** to maximize cache locality for dense, near-field interactions.
    - **High-Entropy Outliers:** Explored via **Queue-based BFS** (the "Golay Frontier") to handle sparse but critical far-field transitions without stalling the pipeline.

## The "Golay Frontier" Traversal Logic

The core innovation is the adaptive switching between traversal modes based on the **Golay Weight** of the frontier:

| Metric | Graph State | Traversal Mode | Strategy |
| :--- | :--- | :--- | :--- |
| **Low Weight** | Uniform / Stable | **Stack (DFS)** | Depth-first refinement for precision in localized clusters. |
| **High Weight** | Turbulent / Heavy-Tailed | **Queue (BFS)** | Breadth-first aggregation to capture long-range "Landau" outliers. |

## Technical Implementation Details

- **Kernel:** Complex-valued Multipole-to-Local (M2L) translations using binomial coefficients (`nCk`) and factorial weighting.
- **Grid Generation:** `make-goppa-grid` generates coordinates using trigonometric mapping of finite field elements.
- **Adaptive Control:** The `demo-cartan-golay` function showcases the engine's ability to switch search strategies dynamically based on the entropy of the particle distribution.

## Applications
- **Accelerator Physics:** Space-charge effect simulations with non-Maxwellian distributions.
- **Algebraic Cryptography:** Analyzing the lattice structure of code-based cryptosystems.
- **Complex Plasma Dynamics:** Simulating long-range interactions in magnetically confined systems with high symmetry.

## Build & Verification Stack

This project utilizes a high-assurance compilation pipeline to ensure the mathematical integrity of the FMM kernels.

*   **Build System:** [Haskell Shake](https://shakebuild.com/) is used for robust, parallelized build orchestration, managing the complex dependencies between Scheme source, generated C, and LLVM bitcode.
*   **Formal Verification:** [SBV (SMT Based Verification)](https://leventerkok.github.io/sbv/) is integrated into the build process to formally verify the correctness of the **Cartan kernels** and **Goppa grid generation**. This ensures that the algebraic transformations are free from overflow, underflow, and logical inconsistencies before they reach the LLVM stage.
*   **Compiler:** [CHICKEN Scheme](http://call-cc.org/) acts as the high-level logic layer, which is transpiled to C and then lowered to LLVM IR for target-specific optimizations.

### Core Artifact
The resulting highly-optimized and verified LLVM IR can be found here:
- [**fmm-fmm_on_goppa_grid.raw.ll**](./fmm-fmm_on_goppa_grid.raw.ll) — *The verified bitcode containing the Cartan-FMM logic.*
