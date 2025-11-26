;;; ---------------------------------------------------------------------------
;;; Single Source Shortest Path (SSSP) Main Application Entry
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
  (format #t "Single Source Shortest Path (SSSP) module started.~%")
  (if (pair? args)
      (format #t "SSSP initialized with arguments: ~a~%" args)
      (format #t "SSSP initialized with default settings.~%"))
  
  ;; Placeholder for SSSP algorithm logic (e.g., Dijkstra, Bellman-Ford)
  (format #t "Calculating shortest paths...~%")
  
  ;; Example: Accessing included constant
  (format #t "Using machine epsilon: ~a~%" machine-epsilon)
  
  (format #t "SSSP execution finished successfully.~%"))

;; Execute the main function with command-line arguments
(main (command-line-arguments))