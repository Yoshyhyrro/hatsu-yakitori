# hatsu-yakitori Build System
# Wrapper for Shake build system
# 
# Usage:
#   make                - Default build (runs 'all' rule in Shake)
#   make <target>       - build specific target (e.g., 'make golay24-tool')
#   make clean          - Clean artifacts
#   make verify         - Run formal verification
#   make test MODULE=x  - Run tests (passed args to Shake)

# Shake script location and invocation
# -ishake adds the 'shake' directory to search path so modules like 'Chicken' can be imported
SHAKE_SRC := shake/rules/Shake.hs
SHAKE_CMD := stack runhaskell --package shake --package sbv --package process -- -ishake $(SHAKE_SRC)

# Make arguments handling
# Allows passing arguments like 'make test -- -m golay24-tool' if your Shake handles flags,
# or simply maps 'make target' to 'Shake target'.
ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))

# .PHONY helps Make understand these aren't files, but we mainly rely on the wildcard match
.PHONY: all clean help force

# Default target
all:
	@$(SHAKE_CMD) all

# Catch-all rule: Delegates EVERYTHING to Shake
# This handles 'clean', 'test', 'verify', 'golay24-tool', etc.
%: force
	@$(SHAKE_CMD) "$@" $(ARGS)

# Dummy target to force execution of the catch-all rule
force: ;

# Explicit help to show this is a wrapper
help:
	@echo "hatsu-yakitori Build Wrapper"
	@echo "============================"
	@echo "This Makefile delegates all logic to Shake."
	@echo ""
	@echo "Common commands:"
	@echo "  make build           : Build all modules"
	@echo "  make test            : Run tests"
	@echo "  make verify          : Run formal verification (Z3/SBV)"
	@echo "  make clean           : Clean build artifacts"
	@echo "  make golay24-tool    : Build specific tool"
	@echo ""
	@echo "For detailed Shake options, run:"
	@echo "  $(SHAKE_CMD) --help"

# Avoid error "No rule to make target..." for arguments passed to Shake
$(ARGS): force
	@: