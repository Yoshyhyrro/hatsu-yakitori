;;; ============================================================
;;; tools/witt-validator/witt-validator-main.scm
;;; Witt Validator Executable Entry Point
;;; ============================================================

(include-relative "../../core/cross_validation.scm")

(import scheme (chicken base) (chicken process-context))
(import cross_validation)

(define (main)
  "Entry point for the witt-validator executable.
   The exit status is 0 only when every validation phase passed."
  (exit (if (run-cross-validation-tests) 0 1)))

;; Run on startup
(main)