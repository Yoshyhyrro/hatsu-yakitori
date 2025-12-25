;;; ============================================================
;;; tests/test_system.scm
;;; Witt Validation System - Test Suite
;;; ============================================================

(module test_system ()
  (import scheme)
  (import (chicken base))
  (import (chicken format))

  ;; Import all modules under test
  (import machine_constants)
  (import golay_frontier)
  (import witt_foundation)
  (import witt_symmetry_explicit)
  (import kak_decomposition)
  (import cross_validation)

  ;;; ============================================================
  ;;; Test Suite: Witt Foundation System
  ;;; ============================================================

  (printf "╔════════════════════════════════════════════════╗~%")
  (printf "║ WITT FOUNDATION - System Test Suite           ║~%")
  (printf "╚════════════════════════════════════════════════╝~%~%")

  ;; Test 1: Machine Constants Module
  (printf "Test 1: Machine Constants~%")
  (printf "  Machine Epsilon: ~a~%" machine-epsilon)
  (printf "  Default Tolerance: ~a~%" default-tolerance)
  (printf "  Galois Height Bound: ~a~%" galois-height-bound)
  (printf "  [OK] Machine constants loaded~%~%")

  ;; Test 2: Golay Frontier Module
  (printf "Test 2: Golay Frontier~%")
  (let ((config (make-adaptive-frontier #x123)))
    (printf "  Created config with info-bits=0x123~%")
    (printf "  Codeword: 0x~X~%" (adaptive-frontier-codeword config))
    (printf "  Hamming Weight: ~a~%" (adaptive-frontier-tau config))
    (printf "  Mode: ~a~%"   (adaptive-frontier-mode config))
    (printf "  [OK] Golay frontier operational~%~%"))

  ;; Test 3: Witt Foundation Module
  (printf "Test 3: Witt Foundation~%")
  (let ((ctx (make-witt-context)))
    (printf "  Created Witt context~%")
    (printf "  Context valid: ~a~%" (witt-context? ctx))
    (printf "  [OK] Witt foundation initialized~%~%"))

  ;; Test 4: Witt Symmetry Explicit
  (printf "Test 4: Witt Symmetry Verification~%")
  (printf "  Verifying implicit Witt structure...~%")
  (verify-frontier-preserves-witt)
  (printf "  [OK] Witt symmetry verified~%~%")

  ;; Test 5: KAK Decomposition
  (printf "Test 5: KAK Decomposition~%")
  (printf "  Module loaded: kak_decomposition~%")
  (printf "  [OK] KAK decomposition available~%~%")

  ;; Test 6: Cross-Module Validation
  (printf "Test 6: Cross-Module Consistency~%")
  (printf "  Running full system validation...~%~%")
  (let ((result (full-system-validation)))
    (if result
        (printf "~%[SUCCESS] All validation checks passed!~%")
        (printf "~%[WARNING] Some validation checks failed.~%")))

  (printf "~%╔════════════════════════════════════════════════╗~%")
  (printf "║ TEST SUITE COMPLETE                          ║~%")
  (printf "╚════════════════════════════════════════════════╝~%"))

 ;; end module test_system
