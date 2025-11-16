# hatsu-yakitori
HATSU-YAKITORI (Heart of the Skewer) is a high-performance Chicken Scheme egg providing a core framework for **bounded computation**. It utilizes an innovative **KAK-inspired, e-logarithmic decomposition** to manage scale and frontiers efficiently. Designed for SSSP, FMM, particle simulation, ensuring **ε-bounded precision** and high throughput.

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
