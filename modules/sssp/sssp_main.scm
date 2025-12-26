;;; ---------------------------------------------------------------------------
;;; Single Source Shortest Path (SSSP) Main Application Entry
;;; ---------------------------------------------------------------------------

;; Fix: Import necessary Chicken 5 modules.
(module sssp_geo_main *
  (import scheme)
  (import (chicken base)
          
          (chicken bitwise)
          (chicken random)
          (chicken process-context)
          srfi-1
          srfi-69
          kak_decomposition)

  ;; ---------------------------------------------------------------------------
  ;; SSSP Module Implementation
  ;; ---------------------------------------------------------------------------

  (define (main args)
    (format #t "Single Source Shortest Path (SSSP) module started.~%")
    (if (pair? args)
        (format #t "SSSP initialized with arguments: ~a~%" args)
        (format #t "SSSP initialized with default settings.~%"))
    
    ;; Placeholder for SSSP algorithm logic
    (format #t "Calculating shortest paths...~%")
    
    ;; Example: Accessing included constant
    (format #t "Using machine epsilon: ~a~%" machine-epsilon)
    
    (format #t "SSSP execution finished successfully.~%"))

  ;; Execute the main function with command-line arguments
  (main (command-line-arguments)))