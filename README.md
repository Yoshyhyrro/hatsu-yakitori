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
├── tools/
│   ├── fmm_classroom_rpc.scm    # Self-contained educational near/far RPC demo
│   └── run_fmm_classroom_rpc.scm # Runnable entry point for the classroom demo
├── tests/
│   └── fmm_tests.scm            # Smoke tests (near/far branch coverage)
└── dist-proof/lean4/            # Lean 4 formal proofs
    └── HatsuYakitori/
        ├── FMM.lean              # Proof model of FMM semantics
        └── HopfStructure.lean   # Hopf algebra structure on Golay weights
```

## Implementation Highlight: Golay-Controlled Frontier

The kernel of the framework is the **Adaptive Frontier**. Instead of hardcoded heuristics, the simulation strategy is dictated by the properties of the Golay code.

- **Low Weight (τ < 12)**: Implies low entropy/noise → **DFS (Stack)** mode for deep, precise local corrections.
- **High Weight (τ ≥ 12)**: Implies high entropy → **BFS (Queue)** mode for global, multipole-based sweeps.

### Code Excerpt (`modules/fmm/fmm_on_goppa_grid.scm`)

The interaction loop delegates flow control to the frontier policy:

```scheme
;; Inside cartan-fmm-evaluate
(let loop ()
  ;; Pop next task based on the policy-determined strategy (Stack vs Queue)
  (let-values (((level-idx updated-frontier) (adaptive-frontier-pop frontier)))
    (when level-idx
      (set! frontier updated-frontier)
      
      (let ((cell-indices (vector-ref hierarchy level-idx)))
        (unless (null? cell-indices)
          (let* ((level-center (calculate-geometric-center grid cell-indices))
                 (dist (c-abs (c-sub target-pos level-center)))
                 (is-near-field (< dist 0.5))) ; Proximity threshold
            
            (cond
             ;; Near Field: Direct particle-particle interaction
             ;; Corresponds to residue calculation at poles
             (is-near-field
              (for-each 
               (lambda (src-idx)
                 (unless (= src-idx target-idx)
                   (let* ((src-pos (local-parameter grid src-idx))
                          (diff (c-sub target-pos src-pos))
                          (q (list-ref charges src-idx))
                          (contribution (c-div (cons q 0.0) diff)))
                     (set! total-potential (c-add total-potential contribution)))))
               cell-indices))
             
             ;; Far Field: Algebraic multipole expansion
             ;; P2M: Particle → Multipole (Laurent series coefficients)
             ;; M2L: Multipole → Local (basis translation via binomial transform)
             ;; L2P: Local → Potential (series evaluation)
             (else
              (let ((M (p2m-kernel grid cell-indices 
                                   (map (lambda (x) (list-ref charges x)) cell-indices)
                                   level-center order)))
                (let ((L (m2l-translation M level-center target-pos order)))
                  (set! total-potential (c-add total-potential (vector-ref L 0))))))))))
      
      (loop))))
```

### Key Points

1. **Frontier manages traversal order**: Stack (LIFO) for DFS, Queue (FIFO) for BFS
2. **Geometry-driven cutoff**: `is-near-field` determines direct vs. multipole calculation
3. **Algebraic interpretation**: 
   - Near field = discrete sum (poles on curve)
   - Far field = Laurent expansion (local parameter basis)
4. **Automatic adaptation**: Golay weight τ controls the exploration/exploitation balance


## Installation

### Prerequisites

- [CHICKEN Scheme 5.x](https://www.call-cc.org/)
- Eggs: `srfi-1`, `srfi-69`, `srfi-95`, `srfi-4`, `srfi-133`
- Optional: [GHC + cabal-install](https://www.haskell.org/cabal/) for the Shake-based build pipeline

The main public modules exposed by this egg are:

- `machine_constants` — numeric constants, bit utilities, Galois-height helpers
- `golay_frontier` — Golay[24,12] frontier control with Lean-derived invariants
- `kak_decomposition` — KAK traversal core and Golay-controlled shortest-path wrapper
- `kak_quiver_safety` — quiver classification, Pauli-phase logic, and DirectedBanachQuiver invariants
- `kak_physics_core` — Yee-grid update kernel used by the quiver-safe physics loop

### Build From a Source Checkout

To validate that the egg builds from the current checkout without installing it:

```bash
chicken-install -n
```

To install from the checkout into your configured CHICKEN repository:

```bash
chicken-install
```

### Windows Notes

On Windows, the generated install/build scripts are executed via `cmd.exe`, so the runtime `PATH` must contain actual `gcc.exe` and `cp.exe` binaries. The following setup is known to work with this repository:

```powershell
$env:Path = 'C:\msys64\ucrt64\bin;C:\msys64\usr\bin;C:\tools\chicken\bin;' + $env:Path
$env:CHICKEN_INSTALL_REPOSITORY = "$env:LOCALAPPDATA\chicken-user-repo\11"
$env:CHICKEN_REPOSITORY_PATH = "$env:LOCALAPPDATA\chicken-user-repo\11;C:\tools\chicken\lib\chicken\11"

chicken-install srfi-1 srfi-69 srfi-95 srfi-4 srfi-133 records
chicken-install -n
```

## Quick FMM CLI

For Linux, the standalone FMM CLI is also published as a separate `fmm-v*` release line. You can either install a single `.deb` from GitHub Releases or add the GitHub Pages-backed APT repository. This README keeps the short path; the wiki carries the longer walkthrough.

### APT Repository

```bash
curl -fsSL https://yoshyhyrro.github.io/hatsu-yakitori/public.asc \
  | gpg --dearmor \
  | sudo tee /usr/share/keyrings/hatsu-yakitori-archive-keyring.gpg >/dev/null

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/hatsu-yakitori-archive-keyring.gpg] https://yoshyhyrro.github.io/hatsu-yakitori stable main" \
  | sudo tee /etc/apt/sources.list.d/hatsu-yakitori.list >/dev/null

sudo apt update
sudo apt install hatsu-fmm
```

The repository signing key is published at `gh-pages/public.asc` and mirrored at `https://yoshyhyrro.github.io/hatsu-yakitori/public.asc`.

### Direct .deb Install

```bash
curl -LO https://github.com/Yoshyhyrro/hatsu-yakitori/releases/latest/download/hatsu-fmm_0.0.1_amd64.deb
sudo apt install ./hatsu-fmm_0.0.1_amd64.deb

hatsu-fmm --check-env
hatsu-fmm --check
hatsu-fmm --list-caps
```

This URL intentionally uses `releases/latest/download` so the command follows the latest `fmm-v*` tag without manual edits.

### Common Runs

```bash
hatsu-fmm --help
hatsu-fmm --dry-run --grid-size 1000000 -p 12
hatsu-fmm --input examples/fmm/sample_problem.scm --benchmark --iterations 5
hatsu-fmm --benchmark --grid-size 4096 --iterations 5
```

### Modes

| Mode | What it does | Typical use |
| :--- | :--- | :--- |
| `--help` | Prints CLI usage and examples | Quick reminder of switches |
| `--check-env` | Verifies kernel import and reports machine constants | First command after install |
| `--check` | Runs a lightweight self-check over constants, grid generation, hierarchy generation, and one synthetic evaluation | Smoke test on a fresh machine or CI runner |
| `--list-caps` | Prints the packaged capability surface | Confirm what this release slice includes |
| `--dry-run` | Parses options and reports the planned evaluation without a full workload | Sanity-check a large run before executing it |
| `--benchmark` | Repeats evaluation for timing | Compare grid sizes, orders, or input files |
| `--explain TOPIC` | Prints an explanation for a known runtime topic or limitation | Investigate a reported code or behavior |

### Main Options

| Option | Meaning | Default / note |
| :--- | :--- | :--- |
| `-p`, `--precision INT` | Accuracy target mapped to an effective multipole order | `8` |
| `--order INT` | Explicit multipole order override | `8` |
| `-t`, `--threads INT` | Requested worker count | Parsed, but the current runtime still falls back to `1` |
| `--theta FLOAT` | Admissibility hint for near/far separation | Accepted for interface stability; the current kernel still uses the fixed cutoff `0.5` |
| `--input PATH` | Reads one Scheme problem form from a file | If omitted, the CLI generates a synthetic problem |
| `--grid-size INT` | Particle count for generated input | `64` |
| `--target-index INT` | Target particle index inside the generated grid | `0` |
| `--frontier-bits INT` | Golay-controlled frontier bits used to choose traversal behavior | `0` |
| `--iterations INT` | Number of repetitions in benchmark mode | `3` |

The `--input` file must contain exactly one top-level Scheme form with `(grid ...)` and optional `(charges ...)`, `(sources ...)`, and `(hierarchy ...)`. A working sample is included at [examples/fmm/sample_problem.scm](examples/fmm/sample_problem.scm).

## REPL Usage

### 1. Golay Frontier and Lean Invariants

The `golay_frontier` module is the main entry point for Golay-controlled traversal. It now enforces the Lean-derived weight classes `{0, 8, 12, 16, 24}` and the Non-Happus antitone profile `(20 10 0)`.

```scheme
(import golay_frontier)

(define cfg (make-adaptive-frontier #x123))

(print-golay-info cfg)
(print-galois-interpretation cfg)

(list (adaptive-frontier-mode cfg)
      (adaptive-frontier-tau cfg)
      (frontier-respects-witt-symmetry? cfg)
      (golay-valid-weight? (adaptive-frontier-tau cfg))
      (profile-strictly-antitone? non-happus-dim-profile))
```

Typical use:

- `make-adaptive-frontier` chooses `stack` or `queue` from the encoded Golay word
- `frontier-respects-witt-symmetry?` checks the Lean-derived invariants used in the current implementation
- `print-galois-interpretation` prints the corresponding M24 orbit class and height interpretation

### 2. KAK Shortest Path With Golay Control

`KAK-apply` accepts either a hash table or an association list as a graph. `KAK-apply-golay` wraps it with a Golay-driven strategy selection.

```scheme
(import kak_decomposition srfi-69)

(define city-graph
  '((downtown (station . 2.5) (park . 1.8))
    (station  (airport . 15.0) (harbor . 8.5))
    (park     (harbor . 4.0))
    (harbor   (airport . 3.0))
    (airport)))

(define-values (distances frontier-config tau)
  (KAK-apply-golay city-graph '(downtown) 100.0 8 #b101010101010))

(printf "mode=~a tau=~a airport=~a~%"
        (adaptive-frontier-mode frontier-config)
        tau
        (hash-table-ref distances 'airport))
```

Use `KAK-apply` when the traversal mode is known up front, and `KAK-apply-golay` when you want the codeword to decide between DFS-like and BFS-like behavior.

### 3. Quiver Safety and DirectedBanachQuiver Invariants

The `kak_quiver_safety` module now mirrors the core constructions from `DirectedBanachQuiver.lean`.

```scheme
(import kak_quiver_safety)

(list (bsd-vertex-height-bound 'padic)
      (height->bsd-vertex 4.0)
      (quiver-banach-adjunction? 'affine-dual)
      (bsd-arrow-pauli-phase 'recover)
      (arrow-fv-role 'project-selmer)
      (discrete-picard-condition? '(recover project-selmer tensor-bang)))

(call-with-values
  (lambda () (pauli-conj-weight 3.0 1.0 3))
  list)
```

This gives you:

- `bsd-vertex-height-bound` — canonical heights for `leech`, `padic`, `affine-dual`, `selmer`
- `height->bsd-vertex` — the discretization back to the nearest BSD vertex
- `quiver-banach-adjunction?` — the round-trip identity from the Lean adjunction theorem
- `discrete-picard-condition?` — the phase-level check corresponding to `recover + project_selmer ≡ tensor_bang (mod 4)`

### 4. Quiver-Safe Physics Loop

For Yee-grid stepping, combine `kak_physics_core` with `kak_quiver_safety`:

```scheme
(import kak_physics_core kak_quiver_safety)

(define grid (make-yee-grid 8 8 0.01 1.0 1.0 1.0))
(define ctx  (make-quiver-context 4 'queue))

(define (graph-fn node)
  (case node
    ((0) '((1 . 1.0) (2 . 1.0)))
    ((1) '((3 . 1.0)))
    ((2) '((3 . 1.0)))
    (else '())))

(kak-apply-quiver-safe graph-fn grid '(0) ctx)
```

The current implementation is conservative: non-Dynkin-A regions fall back to the global field update path for safety.

## Shake / Cabal Workflow

If you are using the Haskell build pipeline rather than the egg directly:

```bash
cabal build
cabal run shake -- fmm
cabal run shake -- --module=fmm test
cabal run shake -- clean
```

You can also populate the local build outputs used by the historical workflow:

```bash
cabal run shake -- witt
```

## Classroom Demo: One Request, One Response

The `tools/fmm_classroom_rpc.scm` module provides a minimal, dependency-free educational demonstration of the near-vs-far decision that drives the FMM.

```scheme
;; Run the interactive demo:
csi -s tools/run_fmm_classroom_rpc.scm
```

Output:
```
=== Tiny FMM Classroom RPC Demo ===

Case 1: near field
Server response: ((status . ok) (mode . near) (potential . 12.0) ...)
Explanation: near: target is close, so we add each source one by one.

Case 2: far field
Server response: ((status . ok) (mode . far) (potential . 1.09...) ...)
Explanation: far: target is far away, so we replace the group by one cluster.
```

The module is self-contained (no compiled eggs required) and is designed to be readable by beginners. It exposes a simple `handle-request` function that mirrors the structure of a gRPC-style service: send a request map, receive a response map.

## CI / Formal Verification

The repository uses GitHub Actions for two complementary checks:

| Workflow | What it checks |
| :--- | :--- |
| **Lean FMM Gate** (`lean-fmm-gate.yml`) | Builds `HatsuYakitori.FMM` and `HatsuYakitori.HopfStructure` in Lean 4 |
| **FMM Scheme smoke test** (same workflow) | Runs `csi -s tests/fmm_tests.scm` on Ubuntu with CHICKEN |

The Lean gate proves, at the type level, that both the far-field (multipole) and near-field (direct-sum) branches of FMM update the potential correctly. These proofs live in `dist-proof/lean4/HatsuYakitori/FMM.lean`.

## Why Use This?

- **Adaptive control**: Golay codewords determine DFS/stack vs BFS/queue behavior
- **Lean-backed invariants**: current frontier and quiver modules enforce Non-Happus, Golay/Witt, and DirectedBanachQuiver constraints
- **Bounded traversal**: the KAK layer exposes explicit iteration bounds and frontier shape
- **Flexible graph input**: shortest-path routines accept either hash tables or association lists
- **Physics integration**: the same frontier logic can drive Yee-grid stepping and quiver-safe local updates

## Performance Notes

- Best suited for graphs or grids with hierarchical locality
- `B` in `KAK-apply` and `KAK-apply-golay` is currently a bound parameter, but the simplified implementation uses frontier control more heavily than metric pruning
- `max-steps` usually lands in the `5` to `10` range for exploratory runs
- `kak-apply-quiver-safe` currently prioritizes correctness over aggressive local specialization when the quiver type is not clearly Dynkin-A
## Future Direction

- Extend the classroom RPC demo to accept JSON over stdin, making the near/far logic callable from any language as a learning exercise.
- Extend `make-goppa-grid` from the unit circle (genus $g=0$) to **Elliptic Curves** (genus $g=1$) to handle **Periodic Boundary Conditions (PBC)** via Weierstrass $\wp$-functions, providing a unified algebraic alternative to Ewald summation.
- Repair unrelated Lean modules (`WittFoundation`, `HidaArikiKoikeNotes`) to enable full-library proof CI.
