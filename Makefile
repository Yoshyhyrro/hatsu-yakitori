# hatsu-yakitori Build System
# Delegates all build logic to Shake

SHAKE := stack runhaskell -- -ishake shake/Shake.hs

# Module names
MODULES := boids fmm sssp kak-decomposition golay24-tool

.PHONY: all help clean info
.PHONY: build test test-salmonella test-all-salmonella
.PHONY: $(MODULES)

# Default target
all: help

# Help (defined in Make for quick access)
help:
	@echo "hatsu-yakitori — KAK decomposition framework"
	@echo ""
	@echo "Quick commands:"
	@echo "  make <module>          - Build and test a module"
	@echo "  make build MODULE=name - Build specific module"
	@echo "  make test MODULE=name  - Test specific module"
	@echo ""
	@echo "Available modules:"
	@echo "  $(MODULES)"
	@echo ""
	@echo "Advanced:"
	@echo "  make test-all-salmonella"
	@echo "  make clean"
	@echo "  make info"
	@echo ""
	@echo "Run '$(SHAKE) help' for full Shake documentation"

# Module shortcuts (build + test)
$(MODULES):
	@$(SHAKE) $@

# Generic targets with MODULE parameter
build test test-salmonella:
	@if [ -z "$(MODULE)" ]; then \
		echo "Error: MODULE parameter required"; \
		echo "Usage: make $@ MODULE=<name>"; \
		echo "Available: $(MODULES)"; \
		exit 1; \
	fi
	@$(SHAKE) $@ MODULE=$(MODULE)

# Targets without MODULE parameter
test-all-salmonella clean info:
	@$(SHAKE) $@