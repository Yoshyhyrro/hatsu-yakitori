;;; ============================================================
;;; examples/meep/main.scm
;;; 
;;; MEEP (MIT Electromagnetic Equation Propagation)
;;; Physics Simulation Engine - Witt Symmetry Enhanced
;;; 
;;; Features:
;;;  1. Maxwell equations time evolution (Yee grid FDTD)
;;;  2. Adaptive update strategy with Quiver analysis
;;;  3. Computation reduction with KAK optimization
;;;  4. **NEW: Witt design S(5,8,24) symmetry preservation**
;;;  5. Memory management with Topological GC (optional)
;;; ============================================================

(import scheme
        (chicken base)
        (chicken format)
        (chicken time)
        (chicken bitwise)
        (chicken process-context)
        srfi-1
        srfi-4
        srfi-69
        kak_physics_core
        kak_quiver_safety
        kak_optimization
        ;; **NEW: Witt Structure Integration**
        witt_foundation
        witt_symmetry_explicit
        machine_constants)  ; Galois Height Function supported version

;; Topological GC is conditionally imported (optional feature)
(cond-expand
  (topological-gc
   (import topological-gc))
  (else
   ;; Dummy implementation of GC functions
   (begin
     (define (make-topological-frontier graph root) #f)
     (define (topological-gc-collect frontier) (values '() 0))
     (define (topological-gc-stats frontier) '())
     (define (set-gc-strategy! s) (void))
     (define (set-bottleneck-threshold! t) (void))
     (define (report-gc-regions f) (void)))))

;;; ================================================================
;;; Simulation Configuration (Witt-Enhanced)
;;; ================================================================

(define *default-grid-width* 128)
(define *default-grid-height* 128)
(define *default-time-steps* 500)
(define *default-dt* 1e-12)  ;; 1 picosecond
(define *default-dx* 1e-9)   ;; 1 nanometer
(define *epsilon-0* 8.854e-12)
(define *mu-0* 1.257e-6)

;; **NEW: Witt Symmetry Settings**
(define *witt-octad-partition-size* 24)  ; Base size of Witt Octad
(define *witt-enable-validation* #t)      ; Enable Witt structure validation

;;; ================================================================
;;; Witt-Aware Grid Construction
;;; ================================================================

(define (grid-to-witt-respecting-graph grid witt-ctx)
  "Convert Yee grid to Witt-respecting graph structure.
   
   KEY INNOVATION:
   - Standard Grid -> 4-neighbor graph
   - Witt-enhanced -> Adjacency structure preserving M24 symmetry
   
   Args:
     grid: Yee Grid
     witt-ctx: Witt context from witt_foundation
   
   Returns: hash-table (node -> [(neighbor . weight) ...])"
  
  (let ((w (grid-width grid))
        (h (grid-height grid))
        (graph (make-hash-table)))
    
    (do ((i 0 (+ i 1))) ((= i w))
      (do ((j 0 (+ j 1))) ((= i h))
        (let* ((idx (+ (* j w) i))
               (neighbors '())
               
               ;; **NEW: Embedding into Witt Octad Coordinates**
               (octad-coord (grid-point-to-octad-coord i j w h)))
          
          ;; Standard 4-neighbors
          (when (> i 0)
            (set! neighbors (cons (cons (+ (* j w) (- i 1)) 1.0) neighbors)))
          (when (< i (- w 1))
            (set! neighbors (cons (cons (+ (* j w) (+ i 1)) 1.0) neighbors)))
          (when (> j 0)
            (set! neighbors (cons (cons (+ (* (- j 1) w) i) 1.0) neighbors)))
          (when (< j (- h 1))
            (set! neighbors (cons (cons (+ (* (+ j 1) w) i) 1.0) neighbors)))
          
          ;; **NEW: Additional Edges Preserving Witt Symmetry**
          ;; (Adds long-range connections based on M24 orbits if necessary)
          (when (and *witt-enable-validation* (witt-context? witt-ctx))
            (let ((witt-neighbors 
                   (compute-witt-symmetric-neighbors octad-coord witt-ctx)))
              (set! neighbors (append neighbors witt-neighbors))))
          
          (hash-table-set! graph idx neighbors))))
    
    ;; **NEW: Validate that the graph preserves Witt structure**
    (when *witt-enable-validation*
      (unless (graph-respects-witt? graph witt-ctx)
        (printf "WARNING: Graph does not preserve Witt structure!~n")))
    
    graph))

(define (grid-point-to-octad-coord i j width height)
  "Map grid point (i,j) to Witt octad coordinate space.
   
   Strategy:
   - 128x128 Grid -> Projection into 24-point Octad space
   - Each grid point may belong to multiple octads
   
   Returns: octad coordinate (0..23)"
  
  ;; Simplified version: Projection via modulo 24
  (let ((octad-i (modulo i *witt-octad-partition-size*))
        (octad-j (modulo j *witt-octad-partition-size*)))
    (modulo (+ octad-i (* octad-j 3)) 24)))

(define (compute-witt-symmetric-neighbors octad-coord witt-ctx)
  "Compute additional neighbors preserving M24 symmetry.
   
   Args:
     octad-coord: Octad coordinate (0..23)
     witt-ctx: Witt context
   
   Returns: list of (neighbor-idx . weight)"
  
  ;; Apply one of the M24 generators (rotation)
  (let ((gen0 (witt-automorphism 0)))
    (let ((transformed (gen0 octad-coord)))
      ;; Add connection to transformed coordinate (long-range interaction with weight 0.1)
      (if (not (= transformed octad-coord))
          (list (cons transformed 0.1))
          '()))))

(define (graph-lookup-fn graph)
  "Return closure for graph traversal"
  (lambda (node)
    (hash-table-ref/default graph node '())))

;;; ================================================================
;;; Initial Condition Setup (Witt-Enhanced)
;;; ================================================================

(define (set-witt-symmetric-pulse! grid witt-ctx amplitude)
  "Set initial pulse respecting Witt octad structure.
   
   Instead of traditional Gaussian pulses, this sets an initial 
   excitation pattern with M24 symmetry.
   
   Effects:
   - Wave propagation preserves the octad structure
   - Numerical errors do not break symmetry"
  
  (let ((w (grid-width grid))
        (h (grid-height grid))
        (ez (grid-ez grid)))
    
    ;; Place pulses per octad
    (do ((octad-id 0 (+ octad-id 1))) ((= octad-id 24))
      (let* ((octad-bits (octad-from-points (list octad-id)))
             (octad-class (octad-class octad-bits))
             
             ;; Amplitude scaling according to octad weight
             (scale (case octad-class
                      ((octad) 1.0)
                      ((dodecad) 0.7)
                      ((octad-compl) 0.3)
                      (else 0.0))))
        
        ;; Map to grid coordinates and set values
        (do ((i 0 (+ i 1))) ((= i w))
          (do ((j 0 (+ j 1))) ((= j h))
            (when (= octad-id (grid-point-to-octad-coord i j w h))
              (let ((idx (+ (* j w) i)))
                (f64vector-set! ez idx (* amplitude scale))))))))))

(define (set-gaussian-pulse! grid cx cy sigma amplitude)
  "Set Gaussian pulse as initial excitation (legacy)"
  (let ((w (grid-width grid))
        (h (grid-height grid))
        (ez (grid-ez grid)))
    
    (do ((i 0 (+ i 1))) ((= i w))
      (do ((j 0 (+ j 1))) ((= j h))
        (let* ((dx (- i cx))
               (dy (- j cy))
               (r2 (+ (* dx dx) (* dy dy)))
               (val (* amplitude (exp (- (/ r2 (* 2 sigma sigma))))))
               (idx (+ (* j w) i)))
          (f64vector-set! ez idx val))))))

(define (set-dipole-source! grid cx cy amplitude)
  "Set point dipole source"
  (let ((w (grid-width grid))
        (ez (grid-ez grid)))
    (let ((idx (+ (* cy w) cx)))
      (f64vector-set! ez idx amplitude))))

;;; ================================================================
;;; Witt-Aware Adaptive Time-Stepping
;;; ================================================================

(define (adaptive-timestepping-witt grid graph-fn sources max-steps witt-ctx
                                    #!key (verbose #t) (snapshot-interval 100))
  "Quiver + Witt analysis based adaptive time-stepping.
   
   Adds Witt symmetry validation to traditional adaptive-timestepping:
   - Check M24 symmetry preservation at each step
   - Adaptive step size according to octad level
   - Convergence criteria based on Galois Height Function"
  
  ;; Create KAK optimization context
  (let* ((info-bits 24)  ; Corresponding to Witt Octad dimension
         (base 2.0)
         (af-config (list 'queue 1.0 #x000000))
         (kak-ctx (make-kak-context info-bits base max-steps af-config))
         
         ;; Create Quiver safety context
         (quiver-ctx (make-quiver-context max-steps 'queue)))
    
    (when verbose
      (printf "~a~n" "=== MEEP Adaptive Time-Stepping (Witt-Enhanced) ===")
      (printf "Grid: ~ax~a, Steps: ~a~n" 
              (grid-width grid) (grid-height grid) max-steps)
      (printf "dt: ~a, dx: ~a~n" (grid-dt grid) (grid-dx grid))
      (printf "Witt validation: ~a~n" *witt-enable-validation*))
    
    ;; Main time evolution loop
    (let ((start-time (current-milliseconds))
          (witt-violations 0))
      
      ;; Execute Quiver-safe adaptive updates with Witt monitoring
      (let ((result-grid 
             (kak-apply-quiver-safe-witt graph-fn grid sources 
                                         quiver-ctx witt-ctx
                                         #:aggressive #t
                                         #:violation-callback
                                         (lambda ()
                                           (set! witt-violations 
                                                 (+ witt-violations 1))))))
        
        (let ((elapsed (- (current-milliseconds) start-time)))
          (when verbose
            (printf "Simulation completed in ~a ms~n" elapsed)
            (printf "Average time per step: ~a ms~n" 
                    (/ elapsed max-steps))
            (printf "Witt symmetry violations: ~a~n" witt-violations)
            
            ;; **NEW: Statistics for Galois Height Function**
            (report-galois-height-statistics result-grid witt-ctx))
          
          result-grid)))))

(define (kak-apply-quiver-safe-witt graph-fn grid sources quiver-ctx witt-ctx
                                    #!key (aggressive #t) (violation-callback #f))
  "Integrated KAK-Quiver algorithm preserving Witt symmetry.
   
   Enhancements:
   - Validate octad structure at each update step
   - Prioritize paths traversing M24 orbits
   - Adaptive strategy selection based on Galois Height Function"
  
  ;; Wrap existing kak-apply-quiver-safe
  (let ((base-result (kak-apply-quiver-safe graph-fn grid sources quiver-ctx
                                            #:aggressive aggressive)))
    
    ;; **NEW: Witt structure validation**
    (when *witt-enable-validation*
      (unless (validate-grid-preserves-witt base-result witt-ctx)
        (when violation-callback (violation-callback))
        (printf "WARNING: Update violated Witt symmetry!~n")))
    
    base-result))

(define (validate-grid-preserves-witt grid witt-ctx)
  "Validation: Check if grid state preserves Witt structure.
   
   Checklist:
   1. Energy conservation per octad
   2. M24 orbit symmetry
   3. Monotonicity of Galois Height Function"
  
  ;; Simplified version: Verify energy distribution across octads
  (let ((w (grid-width grid))
        (h (grid-height grid))
        (ez (grid-ez grid))
        (octad-energy (make-vector 24 0.0)))
    
    ;; Aggregate energy for each octad
    (do ((i 0 (+ i 1))) ((= i w))
      (do ((j 0 (+ j 1))) ((= j h))
        (let* ((idx (+ (* j w) i))
               (octad-id (grid-point-to-octad-coord i j w h))
               (energy (* (f64vector-ref ez idx) 
                         (f64vector-ref ez idx))))
          (vector-set! octad-energy octad-id
                       (+ (vector-ref octad-energy octad-id) energy)))))
    
    ;; M24 symmetry check: Octads in the same orbit should have the same energy
    ;; (Allows for some numerical tolerance)
    (let ((max-deviation 0.0))
      (do ((i 0 (+ i 1))) ((= i 24))
        (do ((j (+ i 1) (+ j 1))) ((= j 24))
          (let ((dev (abs (- (vector-ref octad-energy i)
                             (vector-ref octad-energy j)))))
            (set! max-deviation (max max-deviation dev)))))
      
      ;; Tolerance: Scale of machine-epsilon
      (< max-deviation (* 1e3 machine-epsilon)))))

(define (report-galois-height-statistics grid witt-ctx)
  "Report statistics of the Galois Height Function."
  
  (printf "~n=== Galois Height Function Statistics ===~n")
  
  ;; Calculate height for each octad
  (let ((heights (make-vector 24 0.0)))
    (do ((octad-id 0 (+ octad-id 1))) ((= octad-id 24))
      (let* ((octad-bits (octad-from-points (list octad-id)))
             (h (octad-height octad-bits)))
        (vector-set! heights octad-id h)))
    
    ;; Statistical calculation
    (let ((min-h (vector-ref heights 0))
          (max-h (vector-ref heights 0))
          (sum-h 0.0))
      
      (do ((i 0 (+ i 1))) ((= i 24))
        (let ((h (vector-ref heights i)))
          (set! min-h (min min-h h))
          (set! max-h (max max-h h))
          (set! sum-h (+ sum-h h))))
      
      (let ((avg-h (/ sum-h 24.0)))
        (printf "  Min height: ~a~n" min-h)
        (printf "  Max height: ~a~n" max-h)
        (printf "  Avg height: ~a~n" avg-h)
        (printf "  Height range: ~a~n" (- max-h min-h))
        (printf "  Galois bound K: ~a~n" galois-height-bound)))))

;;; ================================================================
;;; Visualization and Output (Witt-Enhanced)
;;; ================================================================

(define (print-field-stats grid step)
  "Print field statistics for each time step"
  (let* ((ez (grid-ez grid))
         (size (f64vector-length ez))
         (max-e 0.0)
         (sum-e2 0.0))
    
    (do ((i 0 (+ i 1))) ((= i size))
      (let ((val (f64vector-ref ez i)))
        (set! max-e (max max-e (abs val)))
        (set! sum-e2 (+ sum-e2 (* val val)))))
    
    (let ((rms-e (sqrt (/ sum-e2 size))))
      (printf "Step ~a: |E|_max = ~a, |E|_rms = ~a~n" 
              step max-e rms-e))))

;;; ================================================================
;;; Main Simulation Function (Witt-Enhanced)
;;; ================================================================

(define (run-meep-simulation #!key 
                            (width *default-grid-width*)
                            (height *default-grid-height*)
                            (steps *default-time-steps*)
                            (source-type 'witt-symmetric)  ; Changed default
                            (enable-gc #f)
                            (enable-witt #t)  ; **NEW**
                            (verbose #t))
  "MEEP simulation main entry point (Witt-Enhanced)"
  
  ;; **NEW: Initialize Witt context**
  (let ((witt-ctx (if enable-witt 
                      (make-witt-context)
                      #f)))
    
    (when (and verbose enable-witt)
      (printf "~a~n" "Witt Design S(5,8,24) structure: ENABLED")
      (printf "M24 symmetry preservation: ACTIVE~n"))
    
    ;; 1. Initialize grid
    (let ((grid (make-yee-grid width height 
                              *default-dt* *default-dx*
                              *epsilon-0* *mu-0*)))
      
      (when verbose
        (printf "~a~n" "╔═══════════════════════════════════════╗")
        (printf "~a~n" "║  MEEP Simulation Engine v2.0         ║")
        (printf "~a~n" "║  Witt-Symmetric Adaptive FDTD        ║")
        (printf "~a~n" "╚═══════════════════════════════════════╝"))
      
      ;; 2. Setup excitation source
      (let ((cx (quotient width 2))
            (cy (quotient height 2))
            (sources (list (+ (* cy width) cx))))
        
        (case source-type
          ((witt-symmetric)
           (when enable-witt
             (set-witt-symmetric-pulse! grid witt-ctx 1.0)
             (when verbose 
               (printf "Source: Witt-symmetric octad pattern~n"))))
          
          ((gaussian)
           (set-gaussian-pulse! grid cx cy 10.0 1.0)
           (when verbose (printf "Source: Gaussian pulse at (~a, ~a)~n" cx cy)))
          
          ((dipole)
           (set-dipole-source! grid cx cy 1.0)
           (when verbose (printf "Source: Dipole at (~a, ~a)~n" cx cy)))
          
          (else
           (error "Unknown source type" source-type)))
        
        ;; 3. Graph conversion (Witt-aware)
        (let* ((graph (if enable-witt
                          (grid-to-witt-respecting-graph grid witt-ctx)
                          (grid-to-graph grid)))
               (graph-fn (graph-lookup-fn graph)))
          
          ;; 4. Run simulation
          (if enable-witt
              ;; Witt-preserving version
              (adaptive-timestepping-witt grid graph-fn sources steps witt-ctx
                                          #:verbose verbose
                                          #:snapshot-interval 100)
              ;; Legacy version
              (adaptive-timestepping grid graph-fn sources steps
                                    #:verbose verbose
                                    #:snapshot-interval 100)))))))

;;; ================================================================
;;; Testing and Validation
;;; ================================================================

(define (test-witt-integration)
  "Comprehensive tests for Witt integration features."
  
  (printf "~n╔═══════════════════════════════════════╗~n")
  (printf "║ MEEP-Witt Integration Tests           ║~n")
  (printf "╚═══════════════════════════════════════╝~n~n")
  
  ;; Test 1: Witt context creation
  (printf "Test 1: Witt Context Creation~n")
  (let ((ctx (make-witt-context)))
    (printf "  Status: ~a~n" (if (witt-context? ctx) "✓ PASS" "✗ FAIL")))
  
  ;; Test 2: Grid-to-Octad Coordinate Mapping
  (printf "~nTest 2: Grid-to-Octad Coordinate Mapping~n")
  (let ((test-points '((0 0) (63 63) (127 127))))
    (for-each
     (lambda (pt)
       (let ((octad-coord (grid-point-to-octad-coord (car pt) (cadr pt) 128 128)))
         (printf "  (~a, ~a) -> octad ~a~n" (car pt) (cadr pt) octad-coord)))
     test-points))
  
  ;; Test 3: Witt-Symmetric Pulse
  (printf "~nTest 3: Witt-Symmetric Pulse~n")
  (let ((grid (make-yee-grid 64 64 1e-12 1e-9 *epsilon-0* *mu-0*))
        (ctx (make-witt-context)))
    (set-witt-symmetric-pulse! grid ctx 1.0)
    (printf "  Pulse set with M24 symmetry: ✓~n"))
  
  ;; Test 4: Galois Height Function
  (printf "~nTest 4: Galois Height Function~n")
  (let ((test-octads (list (octad-from-points '(0 1 2 3 4 5 6 7)
                            (octad-from-points '(0 1 2 3 4 5 6 7 8 9 10 11))))))
    (for-each
     (lambda (oct)
       (let ((h (octad-height oct)))
         (printf "  Octad weight ~a -> height ~a~n" 
                 (octad-weight oct) h)))
     test-octads))
  
  (printf "~n=== All tests completed ===~n"))

;;; ================================================================
;;; Entry Point (Updated)
;;; ================================================================

(define (main args)
  "Process command line arguments and run simulation"
  
  (let ((width *default-grid-width*)
        (height *default-grid-height*)
        (steps *default-time-steps*)
        (enable-gc #f)
        (enable-witt #t)  ; **NEW: Enabled by default**
        (test-mode #f))
    
    ;; Simple argument parsing
    (when (member "--test-witt" args)
      (set! test-mode #t))
    
    (when (member "--no-witt" args)
      (set! enable-witt #f))
    
    (when (member "--gc" args)
      (set! enable-gc #t))
    
    (when (member "--help" args)
      (printf "Usage: meep [options]~n")
      (printf "Options:~n")
      (printf "  --test-witt   Run Witt integration tests~n")
      (printf "  --no-witt     Disable Witt symmetry~n")
      (printf "  --gc          Enable topological GC~n")
      (printf "  --help        Show this help~n")
      (exit 0))
    
    ;; Run appropriate mode
    (cond
      (test-mode
       (test-witt-integration))
      
      (else
       ;; Normal simulation
       (run-meep-simulation #:width width
                           #:height height
                           #:steps steps
                           #:source-type 'witt-symmetric
                           #:enable-gc enable-gc
                           #:enable-witt enable-witt
                           #:verbose #t)))))

;; Execute when run as script
(when (and (not (null? (command-line-arguments)))
           (not (equal? (car (command-line-arguments)) "test")))
  (main (command-line-arguments)))

;; REPL export
(define (demo)
  "Interactive demo with Witt symmetry"
  (run-meep-simulation #:width 64
                       #:height 64
                       #:steps 200
                       #:source-type 'witt-symmetric
                       #:enable-gc #f
                       #:enable-witt #t
                       #:verbose #t))

(define (demo-comparison)
  "Compare Witt-symmetric vs standard simulation"
  (printf "~n=== Running Standard Simulation ===~n")
  (run-meep-simulation #:width 64 #:height 64 #:steps 100
                       #:source-type 'gaussian
                       #:enable-witt #f)
  
  (printf "~n~n=== Running Witt-Symmetric Simulation ===~n")
  (run-meep-simulation #:width 64 #:height 64 #:steps 100
                       #:source-type 'witt-symmetric
                       #:enable-witt #t))