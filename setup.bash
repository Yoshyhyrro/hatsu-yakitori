#!/usr/bin/env bash

################################################################################
# hatsu-yakitori Setup Script
# High-performance Chicken Scheme egg for bounded computation
# KAK-inspired e-logarithmic decomposition framework
################################################################################

set -euo pipefail

# ============================================================================
# Color codes for output
# ============================================================================
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# ============================================================================
# Configuration
# ============================================================================
PROJECT_NAME="hatsu-yakitori"
PROJECT_VERSION="1.0.0"
AUTHOR="Yoshihiro Hasegawa"
LICENSE="BSD"

# Directories
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$SCRIPT_DIR"
BUILD_DIR="${PROJECT_ROOT}/build"
DIST_DIR="${PROJECT_ROOT}/dist"
CORE_DIR="${PROJECT_ROOT}/core"
MODULES_DIR="${PROJECT_ROOT}/modules"
EGGS_DIR="${PROJECT_ROOT}/eggs"
TESTS_DIR="${PROJECT_ROOT}/tests"
DOCS_DIR="${PROJECT_ROOT}/doc"

# CHICKEN Scheme settings
CHICKEN_VERSION_MIN="5.3.0"
CSC_OPTS="-O3 -emit-inline-optimizations"

# ============================================================================
# Utility functions
# ============================================================================

log_info() {
    echo -e "${BLUE}[INFO]${NC} $*"
}

log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $*"
}

log_warn() {
    echo -e "${YELLOW}[WARN]${NC} $*"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $*" >&2
}

print_banner() {
    cat << 'BANNER_EOF'
╔══════════════════════════════════════════════════════════════════════════════╗
║                          HATSU-YAKITORI SETUP                               ║
║              Heart of the Skewer - Bounded Computation Framework             ║
║          KAK-inspired e-logarithmic decomposition for Chicken Scheme         ║
╚══════════════════════════════════════════════════════════════════════════════╝
BANNER_EOF
}

# ============================================================================
# Prerequisite checks
# ============================================================================

check_command() {
    if ! command -v "$1" &> /dev/null; then
        log_error "Command not found: $1"
        return 1
    fi
    log_info "Found: $1 ($(command -v "$1"))"
}

check_chicken() {
    log_info "Checking CHICKEN Scheme installation..."
    
    if ! check_command "chicken"; then
        log_error "CHICKEN Scheme is not installed"
        log_info "Please install CHICKEN from: https://call-cc.org"
        return 1
    fi
    
    local version=$(chicken -version 2>&1 | head -1 | awk '{print $2}')
    log_success "CHICKEN version: $version"
    
    if [[ "$(printf '%s\n' "$CHICKEN_VERSION_MIN" "$version" | sort -V | head -n1)" != "$CHICKEN_VERSION_MIN" ]]; then
        log_warn "CHICKEN $version is older than minimum required $CHICKEN_VERSION_MIN"
    fi
}

check_csi_csc() {
    log_info "Checking CHICKEN tools..."
    check_command "csi" || return 1
    check_command "csc" || return 1
    check_command "chicken-install" || return 1
}

check_salmonella() {
    log_info "Checking Salmonella test framework..."
    if ! check_command "salmonella"; then
        log_warn "Salmonella not found. Installing..."
        chicken-install -s salmonella 2>/dev/null || log_warn "Could not auto-install salmonella"
    fi
}

check_prerequisites() {
    log_info "======== Checking Prerequisites ========"
    
    local failed=0
    
    check_chicken || ((failed++))
    check_csi_csc || ((failed++))
    check_command "git" || ((failed++))
    check_command "make" || ((failed++))
    
    if [ $failed -gt 0 ]; then
        log_error "$failed prerequisite check(s) failed"
        return 1
    fi
    
    log_success "All prerequisites satisfied"
}

# ============================================================================
# Directory structure setup
# ============================================================================

setup_directory_structure() {
    log_info "======== Setting Up Directory Structure ========"
    
    mkdir -p "$BUILD_DIR"
    mkdir -p "$DIST_DIR"
    mkdir -p "$CORE_DIR"
    mkdir -p "$MODULES_DIR"/boids
    mkdir -p "$MODULES_DIR"/fmm
    mkdir -p "$MODULES_DIR"/sssp
    mkdir -p "$EGGS_DIR"
    mkdir -p "$TESTS_DIR"
    mkdir -p "$DOCS_DIR"
    
    log_success "Directory structure created"
}

# ============================================================================
# Create core library files
# ============================================================================

create_machine_constants() {
    log_info "Creating machine_constants.scm..."
    
    cat > "$CORE_DIR/machine_constants.scm" << 'EOF'
;; machine_constants.scm - Machine epsilon and fundamental constants

(module machine-constants
  (machine-epsilon log-base)
  
  (import chicken scheme)
  
  ;; Machine epsilon for floating-point comparisons
  (define machine-epsilon 1e-10)
  
  ;; Natural logarithm base (e)
  (define log-base (exp 1.0))
  
  ) ;; end module
EOF
    
    log_success "machine_constants.scm created"
}

create_cartan_utils() {
    log_info "Creating cartan_utils.scm..."
    
    cat > "$CORE_DIR/cartan_utils.scm" << 'EOF'
;; cartan_utils.scm - Utility functions for Cartan decomposition

(module cartan-utils
  (pretty-print-decomposition
   validate-decomposition)
  
  (import chicken scheme)
  (use srfi-1)
  
  ;; Validate decomposition parameters
  (define (validate-decomposition B steps)
    (and (> B 0)
         (> steps 0)
         (integer? steps)))
  
  ;; Pretty print decomposition hierarchy
  (define (pretty-print-decomposition B steps)
    (let ((decomp (map (lambda (k)
                         (exp (/ (* k (log B)) steps)))
                       (iota (+ steps 1)))))
      (printf "Cartan decomposition (B=~a, steps=~a):~n" B steps)
      (for-each (lambda (k v)
                  (printf "  Level ~2d: ~10,6f~n" k v))
                (iota (+ steps 1))
                decomp)))
  
  ) ;; end module
EOF
    
    log_success "cartan_utils.scm created"
}

create_kak_decomposition() {
    log_info "Creating kak_decomposition.scm..."
    
    cat > "$CORE_DIR/kak_decomposition.scm" << 'EOF'
;; kak_decomposition.scm - KAK decomposition core library

(module kak-decomposition
  (bmssp-cartan
   cartan-log-decompose
   K-frontier
   K-push
   K-pop
   KAK-apply
   relax-bound)
  
  (import chicken scheme)
  (use srfi-1 srfi-69 data-structures)
  
  ;; Machine constants
  (define machine-epsilon 1e-10)
  (define log-base (exp 1.0))
  
  ;; K-frontier management
  (define (K-frontier mode size)
    (case mode
      ((stack) '())
      (else '())))
  
  ;; K-push
  (define (K-push frontier val mode)
    (case mode
      ((stack) (cons val frontier))
      ((queue) (append frontier (list val)))
      (else frontier)))
  
  ;; K-pop
  (define (K-pop frontier mode)
    (if (null? frontier)
        (values #f frontier)
        (case mode
          ((stack) (values (car frontier) (cdr frontier)))
          ((queue) (values (car frontier) (cdr frontier)))
          (else (values #f frontier)))))
  
  ;; Cartan log decompose
  (define (cartan-log-decompose B steps)
    (let ((logB (if (> B 0) (log B) 0)))
      (map (lambda (k)
             (exp (/ (* k logB) (max 1 steps))))
           (iota (+ steps 1)))))
  
  ;; Relax bound
  (define (relax-bound dist-hash v a-param d-curr)
    (let ((current-d (hash-table-ref dist-hash v 1e99)))
      (if (< (+ d-curr a-param) current-d)
          (hash-table-set! dist-hash v (+ d-curr a-param)))
      dist-hash))
  
  ;; KAK apply (dummy implementation)
  (define (KAK-apply graph-data init-sources decomp-param frontier-mode max-steps relax-fn neighbor-fn)
    (let ((dist-table (make-hash-table)))
      (for-each (lambda (s)
                  (hash-table-set! dist-table s 0.0))
                init-sources)
      dist-table))
  
  ;; BMSSP-Cartan macro
  (define-syntax bmssp-cartan
    (syntax-rules (graph sources B mode steps neighbors relax)
      ((_ graph sources B mode steps neighbors relax)
       (KAK-apply graph sources B mode steps relax neighbors))))
  
  ) ;; end module
EOF
    
    log_success "kak_decomposition.scm created"
}

# ============================================================================
# Create egg definition files
# ============================================================================

create_egg_files() {
    log_info "======== Creating Egg Definition Files ========"
    
    # kak-decomposition.egg
    cat > "$EGGS_DIR/kak-decomposition.egg" << 'EOF'
((name kak-decomposition)
 (version "1.0.0")
 (author "Yoshihiro Hasegawa")
 (license "BSD")
 (category algorithm math)
 (description "KAK decomposition library for bounded computation")
 (documentation "doc/kak-decomposition.html")
 (depends srfi-1 srfi-69 data-structures)
 (test-depends)
 (components
  (extension kak-decomposition
    (source "core/kak_decomposition.scm"
            "core/machine_constants.scm"
            "core/cartan_utils.scm"))))
EOF
    log_success "kak-decomposition.egg created"
    
    # sssp.egg
    cat > "$EGGS_DIR/sssp.egg" << 'EOF'
((name sssp)
 (version "1.0.0")
 (author "Yoshihiro Hasegawa")
 (license "BSD")
 (category algorithm graph)
 (description "Single-source shortest path using KAK decomposition")
 (documentation "doc/sssp.html")
 (depends kak-decomposition srfi-1 srfi-69)
 (test-depends)
 (components
  (extension sssp
    (source "modules/sssp/sssp_main.scm"
            "core/kak_decomposition.scm"
            "core/machine_constants.scm"))))
EOF
    log_success "sssp.egg created"
    
    # boids.egg
    cat > "$EGGS_DIR/boids.egg" << 'EOF'
((name boids)
 (version "1.0.0")
 (author "Yoshihiro Hasegawa")
 (license "BSD")
 (category algorithm simulation)
 (description "Boids flocking using KAK decomposition")
 (documentation "doc/boids.html")
 (depends kak-decomposition srfi-1 srfi-69)
 (test-depends)
 (components
  (extension boids
    (source "modules/boids/boids_main.scm"
            "core/kak_decomposition.scm"
            "core/machine_constants.scm"))))
EOF
    log_success "boids.egg created"
    
    # fmm.egg
    cat > "$EGGS_DIR/fmm.egg" << 'EOF'
((name fmm)
 (version "1.0.0")
 (author "Yoshihiro Hasegawa")
 (license "BSD")
 (category algorithm physics)
 (description "Fast Multipole Method using KAK decomposition")
 (documentation "doc/fmm.html")
 (depends kak-decomposition srfi-1 srfi-69)
 (test-depends)
 (components
  (extension fmm
    (source "modules/fmm/fmm_main.scm"
            "core/kak_decomposition.scm"
            "core/machine_constants.scm"))))
EOF
    log_success "fmm.egg created"
}

# ============================================================================
# Create stub source files
# ============================================================================

create_stub_sources() {
    log_info "======== Creating Stub Source Files ========"
    
    # sssp_main.scm
    cat > "$MODULES_DIR/sssp/sssp_main.scm" << 'EOF'
(import chicken scheme)
(use kak-decomposition)

(define (main args)
  (display "SSSP module\n"))

(main (command-line-arguments))
EOF
    log_success "sssp_main.scm created"
    
    # boids_main.scm
    cat > "$MODULES_DIR/boids/boids_main.scm" << 'EOF'
(import chicken scheme)
(use kak-decomposition)

(define (main args)
  (display "Boids module\n"))

(main (command-line-arguments))
EOF
    log_success "boids_main.scm created"
    
    # fmm_main.scm
    cat > "$MODULES_DIR/fmm/fmm_main.scm" << 'EOF'
(import chicken scheme)
(use kak-decomposition)

(define (main args)
  (display "FMM module\n"))

(main (command-line-arguments))
EOF
    log_success "fmm_main.scm created"
}

# ============================================================================
# Create documentation files
# ============================================================================

create_documentation() {
    log_info "======== Creating Documentation ========"
    
    cat > "$DOCS_DIR/README.md" << 'EOF'
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
EOF
    log_success "docs/README.md created"
    
    cat > "$TESTS_DIR/README.md" << 'EOF'
# Test Suites

Place test files here:
- `{module}_tests.scm`: Unit tests
- `{module}_benchmark.scm`: Performance tests

Tests are run with Salmonella.
EOF
    log_success "tests/README.md created"
}

# ============================================================================
# Git setup
# ============================================================================

setup_git() {
    log_info "======== Setting Up Git ========"
    
    if [ -d "$PROJECT_ROOT/.git" ]; then
        log_warn "Git repository already exists"
        return 0
    fi
    
    cd "$PROJECT_ROOT"
    
    git init
    
    # .gitignore
    cat > .gitignore << 'EOF'
build/
dist/
*.o
*.so
*.a
*.compiled
*.import.scm
*.import.so
.vscode/
.emacs.d/
*.swp
*~
.DS_Store
tmp/
temp/
*.tmp
EOF
    
    # .gitattributes
    cat > .gitattributes << 'EOF'
* text=auto
*.scm text eol=lf
*.bash text eol=lf
*.sh text eol=lf
*.md text eol=lf
EOF
    
    git add -A
    git commit -m "Initial commit: hatsu-yakitori project" 2>/dev/null || true
    
    log_success "Git repository initialized"
}

# ============================================================================
# Print summary
# ============================================================================

print_summary() {
    cat << 'EOF'

╔══════════════════════════════════════════════════════════════════════════════╗
║                    SETUP COMPLETED SUCCESSFULLY                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

✓ Prerequisites verified
✓ Directory structure created
✓ Core libraries created
✓ Egg definitions created
✓ Stub sources created
✓ Documentation created
✓ Git repository initialized

Next Steps:
  1. Build a module:
     make MODULE=sssp build

  2. Test with Salmonella:
     make MODULE=sssp test-salmonella

  3. Test all modules:
     make test-all-salmonella

  4. View test results:
     salmonella-log-viewer build/salmonella_*.log

Quick Start:
  make build                    # Build boids (default)
  make test-salmonella          # Test boids with Salmonella
  make test-all-salmonella      # Test all modules in parallel
  make clean                    # Clean artifacts

Files Created:
  - core/kak_decomposition.scm (KAK library)
  - core/machine_constants.scm (Constants)
  - core/cartan_utils.scm (Utilities)
  - modules/{boids,fmm,sssp}/
  - eggs/{kak-decomposition,sssp,boids,fmm}.egg
  - .gitignore, .gitattributes

EOF
}

# ============================================================================
# Main
# ============================================================================

main() {
    print_banner
    echo ""
    
    check_prerequisites || exit 1
    setup_directory_structure
    create_machine_constants
    create_cartan_utils
    create_kak_decomposition
    create_egg_files
    create_stub_sources
    create_documentation
    setup_git
    check_salmonella
    
    echo ""
    print_summary
}

if [ "${BASH_SOURCE[0]}" == "${0}" ]; then
    main "$@"
fi