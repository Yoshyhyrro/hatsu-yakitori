# HATSU-YAKITORI Documentation

## Overview

HATSU-YAKITORI (Heart of the Skewer) is a bounded computation framework using
KAK-inspired e-logarithmic decomposition for Chicken Scheme.

## Modules

- **kak-decomposition**: Core KAK decomposition library
- **sssp**: Single-source shortest path solver
- **boids**: Flocking simulation
- **fmm**: Fast Multipole Method

## Building

```bash
make MODULE=sssp build
make MODULE=boids build
make MODULE=fmm build
```

## Testing

```bash
make MODULE=sssp test-salmonella
make test-all-salmonella
```

## References

- CHICKEN Scheme: https://call-cc.org
- Eggs: https://eggs.call-cc.org
