;;; ============================================================
;;; example/Berkovich_Flow_Codes/quadcopter_airflow_viscosity.scm
;;; ============================================================
;;; Quadcopter Airflow Collision & Viscosity Computation
;;; Using Ultrametric Cone Geometry (Berkovich-like)
;;;
;;; Physical Model:
;;;   - 4 rotors create airflows that collide at center
;;;   - Collision region forms an ultrametric cone (樅木/fir tree structure)
;;;   - Viscosity varies hierarchically based on Morton-encoded position
;;;   - Galois height τ controls turbulence intensity
;;;
;;; Mathematical Connection:
;;;   Morton Z-order → Ultrametric distance → Berkovich disk
;;;   Rotor positions → Branch points in non-archimedean geometry
;;;   Viscosity field → Valuation on function space
;;; ============================================================

(import scheme)
(import (chicken base)
        (chicken format)
        (chicken bitwise)
        (chicken math))

;; Import core geometry and KAK modules
(import kak_decomposition)
(import golay_frontier)

;; ============================================================
;; Morton Code (from sssp_geo_main.scm pattern)
;; ============================================================

(define (part1by1 n)
  (let loop ((n (bitwise-and n #xFFFF)) (i 0) (res 0))
    (if (= i 16) res
        (let ((bit (bitwise-and (arithmetic-shift n (- i)) 1)))
          (loop n (+ i 1) 
                (bitwise-ior res (arithmetic-shift bit (* 2 i))))))))

(define (morton2-encode x y)
  (bitwise-ior (part1by1 x)
               (arithmetic-shift (part1by1 y) 1)))

(define (compact1by1 n)
  (let loop ((n n) (i 0) (res 0))
    (if (= i 16) res
        (let ((bit (bitwise-and (arithmetic-shift n (* -2 i)) 1)))
          (loop n (+ i 1) 
                (bitwise-ior res (arithmetic-shift bit i)))))))

(define (morton2-decode z)
  (list (compact1by1 z)
        (compact1by1 (arithmetic-shift z -1))))

;; ============================================================
;; Ultrametric Distance (Non-Archimedean!)
;; ============================================================

(define (ultrametric-distance z1 z2)
  "Ultrametric distance based on Morton codes
   
   Key property: d(x,z) ≤ max(d(x,y), d(y,z))  (strong triangle inequality)
   
   This is the p-adic distance! The distance is 2^(-k) where k is the
   number of matching leading bits in the Morton codes."
  
  (let ((xor-val (bitwise-xor z1 z2)))
    (if (zero? xor-val)
        0.0  ;; Same point
        (let loop ((shift 30) (k 0))
          (if (< shift 0)
              (expt 2.0 (- k))  ;; Distance = 2^(-k)
              (if (zero? (bitwise-and xor-val (arithmetic-shift #b11 shift)))
                  (loop (- shift 2) (+ k 1))  ;; Matching bits
                  (expt 2.0 (- k))))))))  ;; First mismatch

;; ============================================================
;; Quadcopter Rotor Configuration
;; ============================================================

(define-record quadcopter
  center-x      ;; Center position X (grid units)
  center-y      ;; Center position Y
  rotor-offset  ;; Distance from center to each rotor
  rpm           ;; Rotor speed
  info-bits)    ;; Galois control parameter

(define (make-standard-quadcopter center-x center-y rpm info-bits)
  "Standard X-configuration quadcopter"
  (make-quadcopter center-x center-y 4 rpm info-bits))

(define (get-rotor-positions quad)
  "Return Morton codes of 4 rotor positions (X configuration)"
  (let ((cx (quadcopter-center-x quad))
        (cy (quadcopter-center-y quad))
        (d (quadcopter-rotor-offset quad)))
    (list
     (morton2-encode (+ cx d) (+ cy d))   ;; Front-Right
     (morton2-encode (- cx d) (+ cy d))   ;; Front-Left
     (morton2-encode (- cx d) (- cy d))   ;; Back-Left
     (morton2-encode (+ cx d) (- cy d)))));; Back-Right

;; ============================================================
;; Viscosity Field Computation (The Core Physics!)
;; ============================================================

(define (compute-viscosity-at-point quad point-morton tau)
  "Compute viscosity at a point based on ultrametric distances to rotors
   
   Physical Model:
   - Each rotor creates an airflow with velocity ∝ RPM
   - Airflows collide → turbulence → increased viscosity
   - Viscosity increases near collision region (center)
   - Ultrametric structure: viscosity jumps at hierarchy levels
   
   Mathematical Model:
   - Base viscosity: μ₀ (laminar flow)
   - Turbulent correction: Δμ ∝ Σ 1/d_ultra(point, rotor_i)
   - Galois modulation: τ controls turbulence intensity"
  
  (let* ((mu-0 1.0e-5)  ;; Base air viscosity (Pa·s)
         (rpm (quadcopter-rpm quad))
         (rotors (get-rotor-positions quad))
         
         ;; Compute ultrametric distances to all rotors
         (distances (map (lambda (r) (ultrametric-distance point-morton r))
                        rotors))
         
         ;; Turbulence factor: sum of 1/distance (collision intensity)
         (turbulence (fold + 0.0
                          (map (lambda (d) 
                                 (if (< d 0.1) 10.0 (/ 1.0 d)))
                               distances)))
         
         ;; Galois height modulates turbulence
         ;; High τ → more chaotic → higher viscosity
         (galois-factor (+ 1.0 (* 0.1 tau)))
         
         ;; RPM effect: higher speed → more turbulence
         (rpm-factor (/ rpm 1000.0))
         
         ;; Final viscosity
         (mu-total (* mu-0 
                     (+ 1.0 
                        (* turbulence galois-factor rpm-factor)))))
    
    mu-total))

;; ============================================================
;; Viscosity Field Mapping (Full Grid)
;; ============================================================

(define (compute-viscosity-field quad grid-size)
  "Compute viscosity at all points in grid
   Returns hash table: morton-code → viscosity"
  
  (printf "Computing viscosity field for ~ax~a grid...~%" grid-size grid-size)
  
  ;; Get Galois configuration
  (let* ((info-bits (quadcopter-info-bits quad))
         (config (make-adaptive-frontier info-bits))
         (tau (adaptive-frontier-tau config))
         (viscosity-table (make-hash-table)))
    
    (printf "  Galois height τ = ~a~%" tau)
    (printf "  Quadcopter at (~a, ~a), RPM = ~a~%"
            (quadcopter-center-x quad)
            (quadcopter-center-y quad)
            (quadcopter-rpm quad))
    
    ;; Compute viscosity at each grid point
    (do ((y 0 (+ y 1)))
        ((= y grid-size))
      (do ((x 0 (+ x 1)))
          ((= x grid-size))
        (let* ((morton (morton2-encode x y))
               (mu (compute-viscosity-at-point quad morton tau)))
          (hash-table-set! viscosity-table morton mu))))
    
    (printf "  Field computed: ~a points~%~%" (hash-table-size viscosity-table))
    viscosity-table))

;; ============================================================
;; Ultrametric Cone Visualization (樅木 structure)
;; ============================================================

(define (visualize-ultrametric-cone quad grid-size)
  "Visualize the hierarchical 'fir tree' structure of viscosity field"
  
  (let* ((viscosity-field (compute-viscosity-field quad grid-size))
         (cx (quadcopter-center-x quad))
         (cy (quadcopter-center-y quad)))
    
    (printf "Ultrametric Cone Structure (center at ~a,~a):~%~%" cx cy)
    
    ;; Print viscosity as ASCII heatmap
    (do ((y 0 (+ y 1)))
        ((= y grid-size))
      (do ((x 0 (+ x 1)))
          ((= x grid-size))
        (let* ((morton (morton2-encode x y))
               (mu (hash-table-ref viscosity-field morton))
               ;; Map viscosity to character
               (char (cond
                      ((< mu 2.0e-5) ".")
                      ((< mu 5.0e-5) "o")
                      ((< mu 1.0e-4) "O")
                      ((< mu 2.0e-4) "@")
                      (else "#"))))
          (printf "~a" char)))
      (printf "~%"))
    
    (printf "~%Legend: . = low viscosity, # = high viscosity (collision zone)~%")
    viscosity-field))

;; ============================================================
;; Airflow Graph Construction (for KAK-apply)
;; ============================================================

(define (build-airflow-graph viscosity-field grid-size)
  "Build graph where edge weights = resistance ∝ viscosity
   
   This allows us to compute airflow paths using KAK-apply!
   Low viscosity → low resistance → preferred flow path"
  
  (define graph (make-hash-table))
  
  (do ((y 0 (+ y 1)))
      ((= y grid-size))
    (do ((x 0 (+ x 1)))
        ((= x grid-size))
      (let ((node (morton2-encode x y))
            (neighbors '()))
        
        ;; Add edges to 4-connected neighbors
        (for-each
         (lambda (offset)
           (let ((nx (+ x (car offset)))
                 (ny (+ y (cadr offset))))
             (when (and (>= nx 0) (< nx grid-size)
                       (>= ny 0) (< ny grid-size))
               (let* ((neighbor (morton2-encode nx ny))
                      ;; Edge weight = average viscosity
                      (mu-1 (hash-table-ref viscosity-field node))
                      (mu-2 (hash-table-ref viscosity-field neighbor))
                      (weight (/ (+ mu-1 mu-2) 2.0)))
                 (set! neighbors (cons (cons neighbor weight) neighbors))))))
         '((-1 0) (1 0) (0 -1) (0 1)))
        
        (hash-table-set! graph node neighbors))))
  
  graph)

;; ============================================================
;; Complete Analysis Pipeline
;; ============================================================

(define (analyze-quadcopter-airflow quad grid-size)
  "Complete analysis: viscosity field → graph → optimal paths"
  
  (printf "~%╔════════════════════════════════════════════╗~%")
  (printf "║  Quadcopter Airflow Analysis               ║~%")
  (printf "╚════════════════════════════════════════════╝~%~%")
  
  ;; Step 1: Compute viscosity field
  (printf "Step 1: Viscosity Field Computation~%")
  (let ((viscosity-field (compute-viscosity-field quad grid-size)))
    
    ;; Step 2: Visualize ultrametric cone
    (printf "~%Step 2: Ultrametric Cone Visualization~%")
    (visualize-ultrametric-cone quad grid-size)
    
    ;; Step 3: Build airflow graph
    (printf "~%Step 3: Airflow Graph Construction~%")
    (let ((graph (build-airflow-graph viscosity-field grid-size)))
      (printf "  Graph built: ~a nodes~%" (hash-table-size graph))
      
      ;; Step 4: Find optimal airflow paths using KAK-apply-golay
      (printf "~%Step 4: Optimal Airflow Path Computation~%")
      (let* ((center (morton2-encode (quadcopter-center-x quad)
                                    (quadcopter-center-y quad)))
             (corner (morton2-encode 0 0)))
        
        (call-with-values
            (lambda ()
              (KAK-apply-golay graph 
                              (list center)  ;; Start at center
                              10.0
                              1000
                              (quadcopter-info-bits quad)))
          
          (lambda (dist-table config tau)
            (printf "  Paths computed from center~%")
            (printf "  Strategy: ~a (τ=~a)~%"
                    (adaptive-frontier-mode config) tau)
            
            ;; Analyze specific paths
            (printf "~%  Sample path resistances:~%")
            (for-each
             (lambda (target-coords)
               (let* ((target (morton2-encode (car target-coords) 
                                             (cadr target-coords)))
                      (resistance (hash-table-ref/default dist-table 
                                                         target 
                                                         +INF+)))
                 (printf "    Center → (~a,~a): ~a~%"
                         (car target-coords) (cadr target-coords)
                         (if (< resistance +INF+)
                             (format #f "~,6f" resistance)
                             "unreachable"))))
             '((0 0) (15 0) (0 15) (15 15)))
            
            ;; Final summary
            (printf "~%╔════════════════════════════════════════════╗~%")
            (printf "║  Analysis Summary                          ║~%")
            (printf "╠════════════════════════════════════════════╣~%")
            (printf "║  Galois Height τ:       ~2a                 ║~%" tau)
            (printf "║  Collision Zone:        Center ±~a units    ║~%" 
                    (quotient grid-size 4))
            (printf "║  Max Viscosity Ratio:   ~a×              ║~%" 
                    (inexact->exact (ceiling (/ (find-max-viscosity viscosity-field)
                                              1.0e-5))))
            (printf "║  Ultrametric Levels:    ~a                  ║~%" 
                    (inexact->exact (ceiling (log grid-size 2))))
            (printf "╚════════════════════════════════════════════╝~%~%")
            
            (values viscosity-field dist-table)))))))

;; ============================================================
;; Utilities
;; ============================================================

(define (find-max-viscosity viscosity-table)
  (let ((max-mu 0.0))
    (hash-table-walk viscosity-table
                     (lambda (k v) (set! max-mu (max max-mu v))))
    max-mu))

;; ============================================================
;; Main Demonstrations
;; ============================================================

(define (demo-low-rpm)
  "Low RPM → laminar flow → low Galois height"
  (printf "~%═══ Demo 1: Low RPM (Laminar Flow) ═══~%")
  (let ((quad (make-standard-quadcopter 8 8 500 #b000000000111)))
    (analyze-quadcopter-airflow quad 16)))

(define (demo-high-rpm)
  "High RPM → turbulent flow → high Galois height"
  (printf "~%═══ Demo 2: High RPM (Turbulent Flow) ═══~%")
  (let ((quad (make-standard-quadcopter 8 8 3000 #b111111110000)))
    (analyze-quadcopter-airflow quad 16)))

(define (demo-comparison)
  "Compare different turbulence regimes"
  (printf "~%╔════════════════════════════════════════════╗~%")
  (printf "║  Turbulence Regime Comparison              ║~%")
  (printf "╚════════════════════════════════════════════╝~%")
  
  (demo-low-rpm)
  (demo-high-rpm)
  
  (printf "╔════════════════════════════════════════════╗~%")
  (printf "║  Physical Interpretation                   ║~%")
  (printf "╠════════════════════════════════════════════╣~%")
  (printf "║  The ultrametric cone structure captures   ║~%")
  (printf "║  the hierarchical nature of airflow        ║~%")
  (printf "║  collision. High τ (Galois height)         ║~%")
  (printf "║  corresponds to chaotic turbulence with    ║~%")
  (printf "║  many interacting scales.                  ║~%")
  (printf "║                                            ║~%")
  (printf "║  Morton encoding naturally creates the     ║~%")
  (printf "║  樅木 (fir tree) structure seen in          ║~%")
  (printf "║  Berkovich disks - each level represents   ║~%")
  (printf "║  a different turbulence scale.             ║~%")
  (printf "╚════════════════════════════════════════════╝~%~%"))

(define (main)
  (demo-comparison))

(main)
