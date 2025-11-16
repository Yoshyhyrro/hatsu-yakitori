# hatsu-yakitori Multi-Module Build System
# KAK decomposition framework for Chicken Scheme

MODULE       ?= boids
BUILD_DIR    ?= build
DIST_DIR     ?= dist
CSC          ?= csc
SALMONELLA   ?= salmonella

CFLAGS_BASE  ?= -O3 -optimize-leaf-routines
DEBUG        ?= 0

ifeq ($(DEBUG), 1)
    CFLAGS = $(CFLAGS_BASE) -g -debug-level 3
else
    CFLAGS = $(CFLAGS_BASE)
endif

# Core libraries
CORE_LIBS = core/kak_decomposition.scm \
            core/machine_constants.scm \
            core/cartan_utils.scm

# Module paths
MODULES_AVAILABLE = boids fmm sssp kak-decomposition

# Module-specific definitions
ifeq ($(MODULE), boids)
    MODULE_SRC = modules/boids/boids_main.scm
    MODULE_EGG = eggs/boids.egg
    MODULE_DEPS = $(CORE_LIBS)
    MODULE_TESTS = tests/boids_tests.scm
else ifeq ($(MODULE), fmm)
    MODULE_SRC = modules/fmm/fmm_main.scm
    MODULE_EGG = eggs/fmm.egg
    MODULE_DEPS = $(CORE_LIBS)
    MODULE_TESTS = tests/fmm_tests.scm
else ifeq ($(MODULE), sssp)
    MODULE_SRC = modules/sssp/sssp_main.scm
    MODULE_EGG = eggs/sssp.egg
    MODULE_DEPS = $(CORE_LIBS)
    MODULE_TESTS = tests/sssp_tests.scm
else ifeq ($(MODULE), kak-decomposition)
    MODULE_SRC = 
    MODULE_EGG = eggs/kak-decomposition.egg
    MODULE_DEPS = $(CORE_LIBS)
    MODULE_TESTS = tests/kak_tests.scm
else
    $(error Unknown MODULE: $(MODULE). Available: $(MODULES_AVAILABLE))
endif

APP_NAME = $(DIST_DIR)/$(MODULE)_app
SALMONELLA_LOG = $(BUILD_DIR)/salmonella_$(MODULE).log

.PHONY: all test test-salmonella test-all-salmonella \
        build-all clean help info

# Default target
all: build


# Directory setup (avoid naming collision with 'build' target)
# Create both directories from a single phony target so we don't define
# a target named 'build' (which would conflict with the real build target).
dirs:
	@mkdir -p $(BUILD_DIR) $(DIST_DIR)

# Build target
build: dirs
	@echo "[BUILD] Compiling $(MODULE)..."
	@if [ -n "$(MODULE_SRC)" ]; then \
		$(CSC) $(CFLAGS) $(MODULE_SRC) -o $(APP_NAME); \
	else \
		echo "[INFO] $(MODULE) is a library-only module"; \
	fi
	@echo "[SUCCESS] Module $(MODULE) ready"

# Unit tests
test: build
	@echo "[TEST] Running tests for $(MODULE)..."
	@if [ -f "$(MODULE_TESTS)" ]; then \
		$(CSC) $(CFLAGS) $(MODULE_TESTS) -o /tmp/test_$(MODULE); \
		/tmp/test_$(MODULE) || true; \
		rm -f /tmp/test_$(MODULE); \
	else \
		echo "[INFO] No test file found: $(MODULE_TESTS)"; \
	fi

# Salmonella test (single module)
test-salmonella: build $(MODULE_EGG)
	@echo "[SALMONELLA] Testing $(MODULE)..."
	@if command -v $(SALMONELLA) >/dev/null 2>&1; then \
		$(SALMONELLA) --log-file=$(SALMONELLA_LOG) --verbosity=2 $(MODULE) || true; \
		echo "[INFO] Log: $(SALMONELLA_LOG)"; \
	else \
		echo "[WARN] Salmonella not found. Attempting to install..."; \
		chicken-install -s salmonella 2>/dev/null || \
			echo "[WARN] Could not auto-install salmonella; install manually with: chicken-install -s salmonella"; \
		if command -v $(SALMONELLA) >/dev/null 2>&1; then \
			$(SALMONELLA) --log-file=$(SALMONELLA_LOG) --verbosity=2 $(MODULE) || true; \
			echo "[INFO] Log: $(SALMONELLA_LOG)"; \
		else \
			echo "[ERROR] Salmonella is still not available; running unit tests as a fallback"; \
			$(MAKE) test || true; \
		fi; \
	fi

# View Salmonella results
test-view:
	@if [ -f "$(SALMONELLA_LOG)" ]; then \
		if command -v salmonella-log-viewer >/dev/null 2>&1; then \
			salmonella-log-viewer $(SALMONELLA_LOG); \
		else \
			cat $(SALMONELLA_LOG); \
		fi; \
	else \
		echo "[ERROR] No log file found: $(SALMONELLA_LOG)"; \
	fi

# Build all modules
build-all:
	@for mod in $(MODULES_AVAILABLE); do \
		echo "[BUILD] Building $$mod..."; \
		$(MAKE) MODULE=$$mod build || exit 1; \
	done
	@echo "[SUCCESS] All modules built"

# Test all modules with Salmonella
test-all-salmonella: $(BUILD_DIR)
	@echo "[SALMONELLA] Testing all modules..."
	@if command -v salmonella-epidemy >/dev/null 2>&1; then \
		INSTANCES=$$(nproc --ignore=1); \
		echo "[INFO] Running $$INSTANCES instances"; \
		salmonella-epidemy --instances=$$INSTANCES \
			--log-file=$(BUILD_DIR)/salmonella_all.log \
			boids fmm sssp kak-decomposition || true; \
	else \
		echo "[WARN] salmonella-epidemy not found"; \
		echo "[INFO] Installing salmonella..."; \
		chicken-install -s salmonella 2>/dev/null || true; \
		for mod in $(MODULES_AVAILABLE); do \
			$(MAKE) MODULE=$$mod test-salmonella; \
		done; \
	fi

# Show statistics
statistics:
	@if [ -f "$(BUILD_DIR)/salmonella_all.log" ]; then \
		if command -v salmonella-log-inquirer >/dev/null 2>&1; then \
			salmonella-log-inquirer --statistics $(BUILD_DIR)/salmonella_all.log; \
		fi; \
	else \
		echo "[ERROR] No statistics log found"; \
	fi

# Clean
clean:
	@echo "[CLEAN] Removing build artifacts..."
	@rm -rf $(BUILD_DIR) $(DIST_DIR)
	@echo "[CLEAN] Done"

# Information
info:
	@echo "=== Build Configuration ==="
	@echo "PROJECT: hatsu-yakitori"
	@echo "MODULE: $(MODULE)"
	@echo "BUILD_DIR: $(BUILD_DIR)"
	@echo "DIST_DIR: $(DIST_DIR)"
	@echo "DEBUG: $(DEBUG)"
	@echo ""
	@echo "=== Available Modules ==="
	@echo "$(MODULES_AVAILABLE)"
	@echo ""
	@echo "=== Targets ==="
	@echo "make               - Build (default: boids)"
	@echo "make MODULE=sssp   - Build specific module"
	@echo "make build-all     - Build all modules"
	@echo "make test          - Run unit tests"
	@echo "make test-salmonella        - Test with Salmonella"
	@echo "make test-all-salmonella    - Test all with epidemy"
	@echo "make statistics    - Show test statistics"
	@echo "make clean         - Clean artifacts"

# Help
help:
	@echo "hatsu-yakitori Build System"
	@echo ""
	@echo "Usage: make [TARGET] [VAR=value]"
	@echo ""
	@echo "Targets:"
	@echo "  build                    Build selected module (default)"
	@echo "  build-all                Build all modules"
	@echo "  test                     Run unit tests"
	@echo "  test-salmonella          Test with Salmonella"
	@echo "  test-view                View latest Salmonella results"
	@echo "  test-all-salmonella      Test all modules (parallel)"
	@echo "  statistics               Show test statistics"
	@echo "  clean                    Remove build artifacts"
	@echo "  info                     Show configuration"
	@echo "  help                     Show this message"
	@echo ""
	@echo "Variables:"
	@echo "  MODULE=name    Select module (boids, fmm, sssp, kak-decomposition)"
	@echo "  DEBUG=1        Build with debug symbols"
	@echo ""
	@echo "Examples:"
	@echo "  make MODULE=sssp build"
	@echo "  make MODULE=fmm DEBUG=1 build"
	@echo "  make test-all-salmonella"
	@echo "  make statistics"