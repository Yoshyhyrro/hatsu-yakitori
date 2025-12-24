;; tests/test_system.scm
(import scheme (chicken base))

(printf "Loading System Modules...~%")
(load "core/machine_constants.scm")
(load "core/golay_frontier.scm")
(load "core/witt_symmetry_explicit.scm")
(load "core/witt_foundation.scm")
(load "core/cross_validation.scm")

(import cross_validation)

(printf "Running System-Wide Cross-Validation Tests...~%~%")

(let ((result (run-cross-validation-tests)))
  (if result
      (begin (printf "~%[PASS] System Consistency Verified.~%") (exit 0))
      (begin (printf "~%[FAIL] System Inconsistency Detected!~%") (exit 1))))