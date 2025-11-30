# hatsu-yakitori

**HATSU-YAKITORI** (Heart of the Skewer) is a high-performance Chicken Scheme framework providing a core foundation for **bounded computation** with **ε-bounded precision**. It features an innovative **KAK-inspired, e-logarithmic decomposition** combined with **Golay[24,12] error-correcting codes** to manage computational scale and adaptive frontiers efficiently.

## Features

- 🧮 **KAK Decomposition**: Logarithmic-scale decomposition for bounded computation
- 🔄 **Adaptive Frontiers**: Golay code-controlled DFS/BFS selection
- 📐 **Finite Geometry**: Morton encoding and hypercube graphs for SSSP validation
- ⚡ **High Performance**: Optimized for SSSP, FMM, and particle simulations
- 🎯 **Precision Control**: ε-bounded algorithms with configurable tolerance

## Architecture

```
hatsu-yakitori/
├── core/
│   ├── machine_constants.scm    # Fundamental constants & GF(2) arithmetic
│   ├── golay_frontier.scm       # Golay[24,12] adaptive frontier control
│   ├── cartan_utils.scm         # Cartan decomposition utilities
│   └── kak_decomposition.scm    # KAK decomposition & frontier logic
├── modules/
│   ├── sssp/                    # Single-Source Shortest Path
│   ├── fmm/                     # Fast Multipole Method
│   ├── boids/                   # Particle simulation (Boids)
│   └── sssp_geometry/           # Finite geometry SSSP testing
├── tools/
│   └── golay24-tool/            # Golay code CLI utility
└── tests/                       # Module test suites
```

## Quick Start

### Prerequisites

- [Chicken Scheme 5.x](https://www.call-cc.org/)
- [Stack](https://docs.haskellstack.org/) (for Shake build system)
- [Salmonella](http://wiki.call-cc.org/eggref/5/salmonella) (optional, for extended testing)

### Building

The project uses a Shake-based build system:

```bash
# Build and test a specific module
stack runhaskell shake/Shake.hs sssp

# Build only (requires --module flag)
stack runhaskell shake/Shake.hs --module=sssp build

# Run tests
stack runhaskell shake/Shake.hs --module=sssp test

# Build with debug symbols
stack runhaskell shake/Shake.hs --debug sssp

# Clean build artifacts
stack runhaskell shake/Shake.hs clean

# Show available modules and options
stack runhaskell shake/Shake.hs help
```
