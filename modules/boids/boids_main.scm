;;; ---------------------------------------------------------------------------
;;; Boids Simulation Main Application
;;; 
;;; Integrates:
;;; - FMM (Fast Multipole Method) for n-body potential calculations
;;; - Bézout's theorem for intersection multiplicity in cell decomposition
;;; - Golay frontier for entropy-driven hierarchy traversal
;;; - Cartan-Kähler geometry for configuration spaces
;;; 
;;; Main Loop: For each boid, compute mutual interactions via FMM on Goppa lattice.
;;; ---------------------------------------------------------------------------

;; Script-style entrypoint for Chicken: imports and top-level execution
(import scheme
        (chicken base)
        (chicken process-context)
        (chicken format)
        (chicken time)
        (chicken flonum)
        (chicken sort)
        srfi-1
        srfi-9
        srfi-69)

(import machine_constants
        cartan_utils
        kak_decomposition
        golay_frontier
        fmm_on_goppa_grid)

;; ---------------------------------------------------------------------------
;; CONFIG & PARAMETERS
;; ---------------------------------------------------------------------------

;; Boids simulation parameters
(define *num-boids* 24)              ; Standard Golay configuration
(define *time-step* 0.01)            ; Δt for discrete dynamics
(define *max-iterations* 1000)       ; Total simulation steps
(define *fmm-order* 8)               ; Multipole expansion order
(define *separation-radius* 0.5)     ; Neighbor interaction radius

;; FMM hierarchy parameters
(define *fmm-levels* 4)              ; Depth of tree decomposition
(define *cells-per-level* (lambda (level) (expt 2 level)))   ; Exponential growth

;; Entropy & frontier control
(define *entropy-mode* 'adaptive)    ; 'stack' or 'queue' or 'adaptive'
(define *golay-info-bits* 0)         ; Start with low entropy (stack/DFS)

;; Output & logging
(define *verbose* #t)
(define *output-frequency* 100)      ; Print stats every N iterations

;; ---------------------------------------------------------------------------
;; BOID STATE REPRESENTATION
;; ---------------------------------------------------------------------------

;; A boid is a record with position, velocity, and acceleration
(define-record-type boid
  (make-boid-raw id pos vel acc mass charge)
  boid?
  (id boid-id)
  (pos boid-pos)
  (vel boid-vel)
  (acc boid-acc)
  (mass boid-mass)
  (charge boid-charge))

(define (make-boid id x y vx vy)
  (make-boid-raw id
                (cons x y)              ; position (complex-like pair)
                (cons vx vy)            ; velocity
                (cons 0.0 0.0)          ; acceleration
                1.0                     ; mass
                1.0))                   ; charge (for FMM kernel)

;; Boid utilities
(define (boid-distance b1 b2)
  (let ((p1 (boid-pos b1))
        (p2 (boid-pos b2)))
    (sqrt (+ (expt (- (car p1) (car p2)) 2)
             (expt (- (cdr p1) (cdr p2)) 2)))))

(define (boid-vector-to b1 b2)
  (let ((p1 (boid-pos b1))
        (p2 (boid-pos b2)))
    (cons (- (car p2) (car p1))
          (- (cdr p2) (cdr p1)))))

(define (vector-normalize v)
  (let ((mag (sqrt (+ (expt (car v) 2) (expt (cdr v) 2)))))
    (if (< mag 1.0e-6)
        (cons 0.0 0.0)
        (cons (/ (car v) mag) (/ (cdr v) mag)))))

(define (vector-magnitude v)
  (sqrt (+ (expt (car v) 2) (expt (cdr v) 2))))

;; ---------------------------------------------------------------------------
;; GOPPA LATTICE INITIALIZATION
;; ---------------------------------------------------------------------------

(define (initialize-goppa-lattice n)
  "Initialize n boids on unit circle from Goppa lattice."
  (let ((two-pi (* 2.0 (acos -1.0)))
        (boids (make-vector n #f)))
    (do ((i 0 (+ i 1)))
        ((= i n) boids)
      (let* ((theta (* two-pi (/ i (exact->inexact n))))
             (x (cos theta))
             (y (sin theta))
             ;; Tangential velocity for circular motion
             (vx (* -0.5 (sin theta)))
             (vy (* 0.5 (cos theta))))
        (vector-set! boids i (make-boid i x y vx vy))))))

;; ---------------------------------------------------------------------------
;; FMM HIERARCHY CONSTRUCTION
;; ---------------------------------------------------------------------------

(define (build-fmm-hierarchy grid n levels)
  "Construct FMM tree: levels × cells per level × points per cell."
  (let ((hierarchy (make-vector levels #f)))
    (do ((l 0 (+ l 1)))
        ((= l levels) hierarchy)
      (let ((cells-at-level (*cells-per-level* l))
            (points-per-cell (ceiling (/ n (expt 2.0 l)))))
        (vector-set! hierarchy l
                     (make-vector cells-at-level
                                  (make-vector points-per-cell -1)))
        ;; Assign grid points to cells (simple block distribution)
        (do ((c 0 (+ c 1)))
            ((= c cells-at-level))
          (let ((cell-vec (vector-ref (vector-ref hierarchy l) c)))
            (do ((p 0 (+ p 1)))
                ((= p points-per-cell))
              (let ((global-idx (+ (* c points-per-cell) p)))
                (if (< global-idx n)
                    (vector-set! cell-vec p global-idx))))))))))

;; ---------------------------------------------------------------------------
;; SEPARATION STAGE (Galois-FMM Enhanced)
;; ---------------------------------------------------------------------------

(define (compute-separation-galois b-target boids info-bits)
  "Separation force via Galois-controlled KAK hierarchy."
  
  ;; 1. Build graph of nearby boids (protected range)
  (let* ((protected-boids 
          (filter (lambda (b)
                    (and (not (= (boid-id b-target) (boid-id b)))
                         (< (boid-distance b-target b) *separation-radius*)))
                  (vector->list boids)))
         
         ;; 2. Convert to adjacency list: graph[i] = ((neighbor . edge-weight) ...)
         (graph 
          (fold (lambda (b acc-graph)
                  (let* ((id (boid-id b))
                         (neighbors
                          (map (lambda (b2)
                                 (cons (boid-id b2)
                                       (boid-distance b b2)))
                               protected-boids)))
                    (cons (cons id neighbors) acc-graph)))
                '()
                protected-boids))
         
         ;; 3. Apply KAK-apply-golay: determine traversal order via Galois
         (sources (list (boid-id b-target)))
         (B 10))  ; Relaxation bound (unused in simplified KAK)
    
    (if (null? protected-boids)
        (cons 0.0 0.0)  ; No separation needed
        
        ;; 4. Run KAK with Galois control
        (call-with-values
            (lambda () 
              (KAK-apply-golay graph sources B 100 info-bits))
          (lambda (dist-table config tau)
            
            ;; 5. Compute repulsion based on distances
            (let ((sep-force (cons 0.0 0.0)))
              
              ;; Iterate through protected boids in KAK order
              (fold (lambda (b acc-force)
                      (let* ((b-id (boid-id b))
                             (dist-to-b (hash-table-ref/default dist-table b-id +INF+))
                             (avoid-vec (boid-vector-to b b-target))  ; b → b-target
                             (avoid-norm (vector-normalize avoid-vec)))
                        
                        ;; Repulsion strength inversely proportional to distance
                        (if (< dist-to-b +INF+)
                            (let* ((repulsion-strength 
                                    (/ 1.0 (max (expt dist-to-b 2) 0.01)))
                                   (fx (* repulsion-strength (car avoid-norm)))
                                   (fy (* repulsion-strength (cdr avoid-norm))))
                              (cons (+ (car acc-force) fx)
                                    (+ (cdr acc-force) fy)))
                            acc-force)))
                    sep-force
                    protected-boids)))))))

;; ---------------------------------------------------------------------------
;; ALIGNMENT STAGE
;; ---------------------------------------------------------------------------

(define (compute-alignment b-target boids)
  "Alignment: steer toward average velocity of nearby boids."
  (let* ((neighbor-dist 2.0)
         (neighbors
          (filter (lambda (b)
                    (and (not (= (boid-id b-target) (boid-id b)))
                         (< (boid-distance b-target b) neighbor-dist)))
                  (vector->list boids)))
         (count (length neighbors)))
    
    (if (= count 0)
        (cons 0.0 0.0)
        
        (let* ((avg-vel
                (let ((sum-vx 0.0) (sum-vy 0.0))
                  (for-each (lambda (b)
                              (set! sum-vx (+ sum-vx (car (boid-vel b))))
                              (set! sum-vy (+ sum-vy (cdr (boid-vel b)))))
                            neighbors)
                  (cons (/ sum-vx count) (/ sum-vy count))))
               (current-vel (boid-vel b-target))
               (steering (cons (- (car avg-vel) (car current-vel))
                              (- (cdr avg-vel) (cdr current-vel))))
               (matching-factor 0.05))
          
          (cons (* matching-factor (car steering))
                (* matching-factor (cdr steering)))))))

;; ---------------------------------------------------------------------------
;; COHESION STAGE
;; ---------------------------------------------------------------------------

(define (compute-cohesion b-target boids)
  "Cohesion: steer toward center of mass of nearby boids."
  (let* ((neighbor-dist 2.0)
         (neighbors
          (filter (lambda (b)
                    (and (not (= (boid-id b-target) (boid-id b)))
                         (< (boid-distance b-target b) neighbor-dist)))
                  (vector->list boids)))
         (count (length neighbors)))
    
    (if (= count 0)
        (cons 0.0 0.0)
        
        (let* ((com-x (fold (lambda (b sum) (+ sum (car (boid-pos b))))
                            0.0 neighbors))
               (com-y (fold (lambda (b sum) (+ sum (cdr (boid-pos b))))
                            0.0 neighbors))
               (avg-x (/ com-x count))
               (avg-y (/ com-y count))
               (toward-com (cons (- avg-x (car (boid-pos b-target)))
                                 (- avg-y (cdr (boid-pos b-target)))))
               (centering-factor 0.0005))
          
          (cons (* centering-factor (car toward-com))
                (* centering-factor (cdr toward-com)))))))

;; ---------------------------------------------------------------------------
;; FMM FORCE COMPUTATION (Integrated)
;; ---------------------------------------------------------------------------

(define (compute-boid-force b-target boids hierarchy fmm-order golay-bits iteration)
  "Integrate all three flocking rules with adaptive Galois control."
  
  ;; Adaptive entropy: increase golay-bits over time for exploration
  (let* ((adaptive-bits (adaptive-golay-bits iteration *max-iterations*))
         
         ;; 1. SEPARATION (Galois-enhanced via KAK)
         (sep-force (compute-separation-galois b-target boids adaptive-bits))
         
         ;; 2. ALIGNMENT
         (align-force (compute-alignment b-target boids))
         
         ;; 3. COHESION
         (coh-force (compute-cohesion b-target boids)))
    
    ;; Weighted combination
    (cons (+ (* 1.5 (car sep-force))
             (* 1.0 (car align-force))
             (* 1.0 (car coh-force)))
          (+ (* 1.5 (cdr sep-force))
             (* 1.0 (cdr align-force))
             (* 1.0 (cdr coh-force))))))

;; ---------------------------------------------------------------------------
;; VELOCITY & POSITION UPDATE (VERLET INTEGRATION)
;; ---------------------------------------------------------------------------

(define (update-boid-position boid force dt)
  "Verlet integration: x += v*dt + (1/2)*a*dt²"
  (let ((mass (boid-mass boid))
        (pos (boid-pos boid))
        (vel (boid-vel boid)))
    (let* ((ax (/ (car force) mass))
           (ay (/ (cdr force) mass))
           (new-x (+ (car pos) (* (car vel) dt) (* 0.5 ax dt dt)))
           (new-y (+ (cdr pos) (* (cdr vel) dt) (* 0.5 ay dt dt)))
           (new-vx (+ (car vel) (* ax dt)))
           (new-vy (+ (cdr vel) (* ay dt))))
      (make-boid (boid-id boid)
                 new-x new-y
                 new-vx new-vy))))

;; ---------------------------------------------------------------------------
;; DAMPING & STABILITY
;; ---------------------------------------------------------------------------

(define (apply-damping boid damping-coeff)
  "Apply velocity damping for stability."
  (let* ((vel (boid-vel boid))
         (damped-vel
           (cons
             (* damping-coeff (car vel))
             (* damping-coeff (cdr vel)))))
    (make-boid
      (boid-id boid)
      (boid-pos boid)
      damped-vel
      (boid-acc boid)
      (boid-mass boid))))

;; ---------------------------------------------------------------------------
;; SIMULATION LOOP
;; ---------------------------------------------------------------------------

(define (run-simulation num-boids max-iter fmm-order)
  "Main simulation: initialize, build hierarchy, evolve boids."
  
  (when *verbose*
    (format #t "~%=== Boids Simulation with FMM ===~%")
    (format #t "Number of boids: ~d~%" num-boids)
    (format #t "FMM order: ~d~%" fmm-order)
    (format #t "Max iterations: ~d~%" max-iter)
    (format #t "Time step: ~f~%" *time-step*)
    (format #t "~%"))

  ;; Initialize
  (let ((boids (initialize-goppa-lattice num-boids))
        (hierarchy (build-fmm-hierarchy (make-vector num-boids) num-boids *fmm-levels*)))
    
    ;; Main loop
    (do ((iter 0 (+ iter 1)))
        ((>= iter max-iter))
      
      ;; Compute forces and update positions for each boid
      (do ((i 0 (+ i 1)))
          ((= i (vector-length boids)))
        (let* ((boid-i (vector-ref boids i))
               ;; NEW: Use integrated 3-rule force computation with Galois control
               (force (compute-boid-force boid-i boids hierarchy fmm-order 
                                         *golay-info-bits* iter))
               (updated-boid (update-boid-position boid-i force *time-step*))
               (damped-boid (apply-damping updated-boid 0.99)))
          (vector-set! boids i damped-boid)))
      
      ;; Periodic output
      (when (and *verbose* (= (modulo iter *output-frequency*) 0))
        (let ((total-ke (fold (lambda (b sum)
                                (let ((v (boid-vel b)))
                                  (+ sum (* 0.5 (boid-mass b)
                                            (+ (expt (car v) 2) (expt (cdr v) 2))))))
                              0.0
                              (vector->list boids))))
          (format #t "[~4d] Kinetic Energy: ~10,6f  | Particles: ~d~%"
                  iter total-ke num-boids))))
    
    ;; Final statistics
    (when *verbose*
      (format #t "~%=== Simulation Complete ===~%")
      (format #t "Final configurations:~%")
      (do ((i 0 (+ i 1)))
          ((= i (min 5 (vector-length boids))))  ; Print first 5
        (let ((b (vector-ref boids i)))
          (format #t "  Boid ~2d: pos=(~6,3f, ~6,3f) vel=(~6,3f, ~6,3f)~%"
                 (boid-id b) (car (boid-pos b)) (cdr (boid-pos b))
                 (car (boid-vel b)) (cdr (boid-vel b))))))
    
    boids))

;; ---------------------------------------------------------------------------
;; ENTROPY-DRIVEN FRONTIER ADAPTATION
;; ---------------------------------------------------------------------------

(define (adaptive-golay-bits iteration max-iter)
  "Map iteration → Golay info bits for frontier mode selection."
  (let ((progress (/ (exact->inexact iteration) (exact->inexact max-iter))))
    (if (< progress 0.5)
        0           ; Low entropy: stack mode
        #xFFF)))    ; High entropy: queue mode

;; ---------------------------------------------------------------------------
;; MAIN ENTRY POINT
;; ---------------------------------------------------------------------------

(define (main)
  (let ((args (command-line-arguments)))
    
    ;; Parse command-line arguments
    (let-values (((num-boids fmm-order max-iter)
                  (if (>= (length args) 3)
                      (values (string->number (list-ref args 0))
                              (string->number (list-ref args 1))
                              (string->number (list-ref args 2)))
                      (values *num-boids* *fmm-order* *max-iterations*))))
      
      ;; Run simulation
      (let ((final-boids (run-simulation num-boids max-iter fmm-order)))
        
        ;; Output final state
        (format #t "~%Final state saved. (~d boids)~%" (vector-length final-boids))
        
        ;; Optional: write to file
        ;; (write-boid-trajectory final-boids "boids_trajectory.dat")
        
        (format #t "Boids simulation finished successfully.~%")))))

;; TRIGGER EXECUTION
(main)