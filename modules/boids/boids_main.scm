;;; ---------------------------------------------------------------------------
;;; Boids Simulation Main Application Entry
;;; ---------------------------------------------------------------------------
;; Fix: Import 'chicken process-context' to resolve 'command-line-arguments'
(module boids *
  (import scheme)
  (import (chicken base)
          (chicken process-context)
          (chicken format)
          machine_constants
          cartan_utils
          kak_decomposition)

        
  ;; ---------------------------------------------------------------------------
  ;; CORE LIBRARY INCLUDES
  ;; Because the Makefile uses 'csc -I .', we can use paths relative to the project root.
  ;; ---------------------------------------------------------------------------

  ;; Note: If the main program needs definitions from these files, they must be included here.

  ;; Placeholder for the main Boids application logic
  (define (run-boids args)
    (format #t "Starting Boids simulation...~%")
    (if (null? args)
        (format #t "No arguments provided. Running default Boids simulation.~%")
        (format #t "Running Boids simulation with arguments: ~a~%" args))
    
    ;; Example: Check if the simulation core includes definitions needed here
    (format #t "Using machine epsilon: ~a~%" machine-epsilon)
    
    (format #t "Boids simulation finished successfully.~%"))

  ;; Main entry point
  (define (main)
    (let ((args (command-line-arguments)))
      (run-boids args))))

   ; end module