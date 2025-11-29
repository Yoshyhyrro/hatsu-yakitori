;; ============================================================
;; tests/kak_tests.scm
;; Unit tests for kak_decomposition module
;; ============================================================

(module kak-decomposition-tests
  (import scheme)
  (import (chicken base)
          (chicken format)
          srfi-1
          core/kak_decomposition
          core/machine_constants
          core/cartan_utils)

  ;; Test pretty-printing of Cartan decomposition
  (define (test-pretty-print-decomposition)
    (let ((B 1000)
          (steps 5))
      (pretty-print-decomposition B steps)))

  ;; Run all tests
  (define (run-tests)
    (format #t "Running kak-decomposition tests...~%")
    (test-pretty-print-decomposition)
    (format #t "All kak-decomposition tests completed.~%"))

  ;; Execute tests when module is run
  (run-tests))
   ;; end module