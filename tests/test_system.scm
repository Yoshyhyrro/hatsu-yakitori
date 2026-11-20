;;; ============================================================
;;; tests/test_system.scm
;;; Witt Validation System - Test Suite
;;; ============================================================

(module test_system ()
  (import scheme)
  (import (chicken base))
  (import (chicken format))
  ;; ADD THESE to ensure the linker pulls in the required libraries:
  (import srfi-1)
  (import srfi-4)
  (import srfi-69)
  (import (chicken sort))
  (import (chicken condition))
  (import (chicken bitwise))
  (import machine_constants)
  (import golay_frontier)
  (import witt_foundation)
  (import witt_symmetry_explicit)
  (import kak_decomposition)
  (import cross_validation)

  ;;; ============================================================
  ;;; Test Suite: Witt Foundation System
  ;;; ============================================================
  ;;; Every [OK] line below is the result of an actual check. The suite exits
  ;;; with status 1 when at least one check fails.
  ;;; ============================================================

  (define failures 0)

  (define (check! description passed?)
    "Print an OK/FAIL line for DESCRIPTION, count failures and return PASSED?."
    (printf "  [~a] ~a~%" (if passed? "OK" "FAIL") description)
    (unless passed?
      (set! failures (+ failures 1)))
    passed?)

  (define (guarded description thunk)
    "Run THUNK; an exception is reported as one failed check named DESCRIPTION."
    (handle-exceptions exn
        (check! (string-append description " raised an exception: "
                               (let ((message (get-condition-property exn 'exn 'message #f)))
                                 (if (string? message) message "unknown error")))
                #f)
      (thunk)))

  (define (pop-value frontier)
    "Pop FRONTIER and return the popped value, or #f when it was empty."
    (call-with-values
        (lambda () (K-pop frontier))
      (lambda (ok? value rest) (and ok? value))))

  (printf "╔════════════════════════════════════════════════╗~%")
  (printf "║ WITT FOUNDATION - System Test Suite           ║~%")
  (printf "╚════════════════════════════════════════════════╝~%~%")

  ;; Test 1: Machine Constants Module
  (printf "Test 1: Machine Constants~%")
  (printf "  Machine Epsilon: ~a~%" machine-epsilon)
  (printf "  Default Tolerance: ~a~%" default-tolerance)
  (printf "  Galois Height Bound: ~a~%" galois-height-bound)
  (check! "machine epsilon is positive" (> machine-epsilon 0))
  (check! "default tolerance is positive" (> default-tolerance 0))
  (check! "Galois height bound is positive" (> galois-height-bound 0))
  (printf "~%")

  ;; Test 2: Golay Frontier Module
  (printf "Test 2: Golay Frontier~%")
  (guarded "Golay frontier"
   (lambda ()
     (let* ((info #x123)
            (config (make-adaptive-frontier info))
            (codeword (adaptive-frontier-codeword config))
            (tau (adaptive-frontier-tau config)))
       (printf "  Created config with info-bits=0x123~%")
       (printf "  Codeword: 0x~X~%" codeword)
       (printf "  Hamming Weight: ~a~%" tau)
       (printf "  Mode: ~a~%" (adaptive-frontier-mode config))
       (check! "codeword equals encode-golay24 of the info bits"
               (= codeword (encode-golay24 info)))
       (check! "Hamming weight is a weight of the extended Golay code"
               (and (memv tau '(0 8 12 16 24)) #t))
       (check! "mode follows the threshold (tau < 12 gives stack, otherwise queue)"
               (eq? (adaptive-frontier-mode config) (if (< tau 12) 'stack 'queue))))))
  (printf "~%")

  ;; Test 3: Witt Foundation Module
  (printf "Test 3: Witt Foundation~%")
  (guarded "Witt foundation"
   (lambda ()
     (let ((ctx (make-witt-context)))
       (check! "make-witt-context returns a witt-context" (witt-context? ctx))
       (check! "the octads form the Steiner system S(5,8,24)" (validate-witt-structure ctx)))))
  (printf "~%")

  ;; Test 4: Witt Symmetry Explicit
  (printf "Test 4: Witt Symmetry Consistency~%")
  (guarded "Witt symmetry consistency"
   (lambda ()
     (check! "Golay-to-Witt mapping consistency checks" (verify-frontier-preserves-witt))))
  (printf "~%")

  ;; Test 5: KAK Decomposition (frontier primitives)
  (printf "Test 5: KAK Decomposition (frontier primitives)~%")
  (guarded "KAK frontier primitives"
   (lambda ()
     (check! "stack frontier pops the most recent element (LIFO)"
             (eqv? 2 (pop-value (K-push (K-push (K-frontier 'stack) 1) 2))))
     (check! "queue frontier pops the oldest element (FIFO)"
             (eqv? 1 (pop-value (K-push (K-push (K-frontier 'queue) 1) 2))))))
  (printf "~%")

  ;; Test 6: Cross-Module Validation
  (printf "Test 6: Cross-Module Consistency~%")
  (printf "  Running full system validation...~%~%")
  (guarded "full system validation"
   (lambda ()
     (check! "full system validation passes all phases" (full-system-validation))))

  (printf "~%╔════════════════════════════════════════════════╗~%")
  (printf "║ TEST SUITE COMPLETE                          ║~%")
  (printf "╚════════════════════════════════════════════════╝~%")
  (printf "~a check(s) failed.~%" failures)
  (exit (if (zero? failures) 0 1)))

 ;; end module test_system