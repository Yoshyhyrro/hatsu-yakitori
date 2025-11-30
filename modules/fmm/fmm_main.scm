;;; ---------------------------------------------------------------------------
;;; Fast Multipole Method (FMM) Main Application Entry
;;; ---------------------------------------------------------------------------

;; Fix: Import necessary Chicken 5 modules.
(import scheme)
(import (chicken base)
        (chicken process-context) ;; Required for (command-line-arguments)
        (chicken format))

;; ---------------------------------------------------------------------------
;; CORE LIBRARY INCLUDES
;; The Makefile uses 'csc -I .', allowing us to use the root-relative path 'core/'.
;; Changed 'load' to 'include' to embed the code into the compiled binary.
;; ---------------------------------------------------------------------------
(include "core/kak_decomposition.scm")
(include "core/machine_constants.scm")
(include "core/cartan_utils.scm")

(define (main args)
  (format #t "Fast Multipole Method (FMM) module started.~%")
  (if (pair? args)
      (format #t "FMM initialized with arguments: ~a~%" args)
      (format #t "FMM initialized with default settings.~%"))
  
  ;; Placeholder for FMM logic
  (format #t "Simulating N-body interaction using FMM...~%")
  
  ;; Example: Accessing included constant
  (format #t "Using machine epsilon: ~a~%" machine-epsilon)
  
  (format #t "FMM execution finished successfully.~%"))

;; Execute the main function with command-line arguments
(main (command-line-arguments))