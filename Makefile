# hatsu-yakitori Build System
# Delegates all build logic to Shake

# Detect WSL environment
IS_WSL := $(shell grep -qi microsoft /proc/version 2>/dev/null && echo 1 || echo 0)

# Stack command (WSL-aware)
ifeq ($(IS_WSL),1)
    SHAKE := stack runhaskell -- -ishake shake/Shake.hs
    SALMONELLA := salmonella
    CHICKEN_INSTALL := chicken-install
else
    SHAKE := stack runhaskell -- -ishake shake/Shake.hs
    SALMONELLA := salmonella
    CHICKEN_INSTALL := chicken-install
endif

# Module names
MODULES := boids fmm sssp kak-decomposition golay24-tool sssp_geometry

.PHONY: all help clean info
.PHONY: build test test-salmonella test-all-salmonella
.PHONY: $(MODULES)
.PHONY: setup-salmonella check-salmonella

# Default target
all: help

# Help (defined in Make for quick access)
help:
	@echo "hatsu-yakitori — KAK decomposition framework"
	@echo ""
ifeq ($(IS_WSL),1)
	@echo "Environment: WSL detected"
	@echo ""
endif
	@echo "Quick commands:"
	@echo "  make <module>          - Build and test a module"
	@echo "  make build MODULE=name - Build specific module"
	@echo "  make test MODULE=name  - Test specific module"
	@echo ""
	@echo "Available modules:"
	@echo "  $(MODULES)"
	@echo ""
	@echo "Testing:"
	@echo "  make test-salmonella MODULE=name  - Run salmonella tests for module"
	@echo "  make test-all-salmonella          - Run salmonella tests for all modules"
	@echo "  make check-salmonella             - Check if salmonella is installed"
	@echo "  make setup-salmonella             - Install salmonella (if needed)"
	@echo ""
	@echo "Advanced:"
	@echo "  make clean             - Clean all build artifacts"
	@echo "  make info              - Show build configuration"
	@echo ""
	@echo "Run '$(SHAKE) help' for full Shake documentation"

# Module shortcuts (build + test)
$(MODULES):
	@$(SHAKE) $@

# Generic targets with MODULE parameter
build test:
	@if [ -z "$(MODULE)" ]; then \
		echo "Error: MODULE parameter required"; \
		echo "Usage: make $@ MODULE=<name>"; \
		echo "Available: $(MODULES)"; \
		exit 1; \
	fi
	@$(SHAKE) $@ -m $(MODULE)

# Check Chicken Scheme version
check-chicken:
	@echo "Checking Chicken Scheme version..."
	@CSC_VERSION=$(csc -version 2>&1 | head -n1) && \
	 echo "Found: $CSC_VERSION" && \
	 if echo "$CSC_VERSION" | grep -q "Version 5"; then \
	     echo "⚠️  Warning: Chicken 5.x detected"; \
	     echo "salmonella may have compatibility issues with Chicken 5.4+"; \
	     echo "Consider using Chicken 5.3.0 or the built-in test system"; \
	 fi

# Check if salmonella is installed
check-salmonella: check-chicken
	@echo "Checking for salmonella..."
	@which $(SALMONELLA) > /dev/null 2>&1 || \
		(echo "❌ salmonella not found"; \
		 echo "Run 'make setup-salmonella' to install"; \
		 exit 1)
	@echo "✓ salmonella is installed"
	@$(SALMONELLA) --version

# Setup salmonella (WSL-aware with error handling)
setup-salmonella: check-chicken
	@echo "Installing salmonella..."
	@echo "Note: salmonella may not work with Chicken 5.4+"
	@echo "Attempting installation..."
ifeq ($(IS_WSL),1)
	@echo "WSL detected - setting up environment variables..."
	@export CHICKEN_INSTALL_REPOSITORY=$HOME/.chicken-local && \
	 export CHICKEN_REPOSITORY_PATH=$HOME/.chicken-local:$HOME/.chicken && \
	 $(CHICKEN_INSTALL) salmonella || \
	 (echo ""; \
	  echo "❌ salmonella installation failed"; \
	  echo ""; \
	  echo "This is likely due to Chicken 5.4+ compatibility issues."; \
	  echo ""; \
	  echo "Alternatives:"; \
	  echo "  1. Use built-in tests: make test MODULE=<name>"; \
	  echo "  2. Downgrade to Chicken 5.3.0"; \
	  echo "  3. Use chicken-test instead of salmonella"; \
	  echo ""; \
	  exit 1)
	@echo ""
	@echo "✓ salmonella installed"
	@echo "Note: Add the following to your ~/.bashrc or ~/.zshrc:"
	@echo "  export CHICKEN_INSTALL_REPOSITORY=\$HOME/.chicken-local"
	@echo "  export CHICKEN_REPOSITORY_PATH=\$HOME/.chicken-local:\$HOME/.chicken"
	@echo "  export PATH=\$HOME/.chicken-local/bin:\$PATH"
else
	@$(CHICKEN_INSTALL) salmonella || \
	 (echo ""; \
	  echo "❌ salmonella installation failed"; \
	  echo "Use built-in tests instead: make test MODULE=<name>"; \
	  exit 1)
	@echo "✓ salmonella installed"
endif

# Run salmonella tests for a specific module
test-salmonella: check-salmonella
	@if [ -z "$(MODULE)" ]; then \
		echo "Error: MODULE parameter required"; \
		echo "Usage: make test-salmonella MODULE=<name>"; \
		echo "Available: $(MODULES)"; \
		exit 1; \
	fi
	@echo "Running salmonella tests for $(MODULE)..."
	@$(SHAKE) build -m $(MODULE)
	@echo "Setting up salmonella environment..."
ifeq ($(IS_WSL),1)
	@export CHICKEN_INCLUDE_PATH=".:core:dist:_build" && \
	 export CHICKEN_REPOSITORY_PATH="dist:$$HOME/.chicken-local:$$HOME/.chicken:/usr/local/lib/chicken" && \
	 export CHICKEN_INSTALL_REPOSITORY="dist" && \
	 export LD_LIBRARY_PATH="dist:/usr/local/lib:$$LD_LIBRARY_PATH" && \
	 export C_INCLUDE_PATH="/usr/include:core:$$C_INCLUDE_PATH" && \
	 $(SALMONELLA) --log-file=salmonella-$(MODULE).log \
	               --repo-dir=dist \
	               --chicken-install-args="-I core -I dist -L dist" \
	               $(MODULE)
else
	@export CHICKEN_INCLUDE_PATH=".:core:dist:_build" && \
	 export CHICKEN_REPOSITORY_PATH="dist:~/.chicken:/usr/local/lib/chicken" && \
	 export CHICKEN_INSTALL_REPOSITORY="dist" && \
	 $(SALMONELLA) --log-file=salmonella-$(MODULE).log \
	               --repo-dir=dist \
	               --chicken-install-args="-I core -I dist -L dist" \
	               $(MODULE)
endif
	@echo "✓ Salmonella tests passed for $(MODULE)"
	@echo "Log: salmonella-$(MODULE).log"

# Run salmonella tests for all modules
test-all-salmonella: check-salmonella
	@echo "Running salmonella tests for all modules..."
	@for module in $(MODULES); do \
		echo ""; \
		echo "=== Testing $$module ==="; \
		$(MAKE) test-salmonella MODULE=$$module || exit 1; \
	done
	@echo ""
	@echo "✓ All salmonella tests passed"
	@echo "Logs: salmonella-*.log"

# Targets without MODULE parameter
clean info:
	@$(SHAKE) $@

# Clean salmonella logs
clean-salmonella-logs:
	@echo "Cleaning salmonella logs..."
	@rm -f salmonella-*.log
	@echo "✓ Logs cleaned"

# Extended clean (includes salmonella logs)
clean-all: clean clean-salmonella-logs
	@echo "✓ All artifacts cleaned"