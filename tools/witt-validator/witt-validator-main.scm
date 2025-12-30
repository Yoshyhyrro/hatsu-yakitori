;;; ============================================================
;;; tools/witt-validator/witt-validator-main.scm
;;; Witt Validator Executable Entry Point
;;; ============================================================

(include-relative "../../core/cross_validation.scm")

(import scheme (chicken base) (chicken process-context))
(import cross_validation)

(define (main)
  "Entry point for witt-validator executable."
  (run-cross-validation-tests)
  (exit 0))

;; Run on startup
(main)
