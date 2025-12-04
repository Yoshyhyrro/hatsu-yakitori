;; module/fmm/fmm_on_goppa_grid.scm
;;
;; Revised Goppa-FMM Prototype
;; ---------------------------
;; Fixes:
;;  - Separation of Geometric Center vs Particle Position (Singularity fix)
;;  - Correct M2L Basis Translation (Binomial convolution)
;;  - Integration with Golay-code based adaptive frontier
;;
;; Conceptual Mapping:
;;  - Goppa Grid Points  <-> Algebraic Curve Divisors
;;  - FMM Multipoles     <-> Laurent Series Principal Parts
;;  - Golay Weight       <-> Adaptive Tree Traversal Strategy
;;
(module module.fmm.fmm-goppa
  (make-goppa-grid
   local-parameter
   calculate-geometric-center
   cartan-fmm-evaluate-golay ;; Main entry point
   demo-cartan-golay)

  (import (scheme)
          (chicken base)
          (chicken format)
          (chicken math)
          (chicken sort)
          srfi-1
          srfi-69
          srfi-133 ;; Vector lib usually helpful
          core/golay_frontier) ;; Import the Frontier logic

  ;; ------------------------------------------------------------------
  ;; Complex Arithmetic Helpers (Cons pairs)
  ;; ------------------------------------------------------------------
  (define (c-add a b) (cons (+ (car a) (car b)) (+ (cdr a) (cdr b))))
  (define (c-sub a b) (cons (- (car a) (car b)) (- (cdr a) (cdr b))))
  (define (c-mul a b) (cons (- (* (car a) (car b)) (* (cdr a) (cdr b)))
                            (+ (* (car a) (cdr b)) (* (cdr a) (car b)))))
  (define (c-div a b)
    (let ((den (+ (* (car b) (car b)) (* (cdr b) (cdr b)))))
      (if (zero? den)
          (cons 0.0 0.0) ;; Handle singularity gracefully (residue logic elsewhere)
          (cons (/ (+ (* (car a) (car b)) (* (cdr a) (cdr b))) den)
                (/ (- (* (cdr a) (car b)) (* (car a) (cdr b))) den)))))
  
  (define (c-abs a) (sqrt (+ (* (car a) (car a)) (* (cdr a) (cdr a)))))
  
  (define (c-pow z n)
    (let loop ((i 0) (acc (cons 1.0 0.0)))
      (if (= i n) acc (loop (+ i 1) (c-mul acc z)))))
  
  (define (c-inv z)
    (let ((den (+ (* (car z) (car z)) (* (cdr z) (cdr z)))))
      (if (< den 1.0e-12)
          (cons 0.0 0.0) ;; Pseudo-inverse for singularities
          (cons (/ (car z) den) (/ (- (cdr z)) den)))))

  ;; Combinatorics for M2L
  (define (fact n)
    (if (<= n 1) 1 (* n (fact (- n 1)))))
  
  (define (nCk n k)
    (/ (fact n) (* (fact k) (fact (- n k)))))

  ;; ------------------------------------------------------------------
  ;; 1) Goppa Grid & Geometry
  ;; ------------------------------------------------------------------
  (define (make-goppa-grid q m num-points)
    (let* ((N num-points)
           (two-pi (* 2.0 (acos -1.0))))
      (do ((k 0 (+ k 1)) (acc (make-vector N '())))
          ((= k N) acc)
        ;; Create points on unit circle (Analogy: Points on curve)
        (let* ((theta (* two-pi (/ k (exact->inexact N))))
               (t (cons (cos theta) (sin theta))))
          (vector-set! acc k t)))))

  (define (local-parameter grid i)
    (vector-ref grid (modulo i (vector-length grid))))

  (define (calculate-geometric-center grid indices)
    (if (null? indices)
        (cons 0.0 0.0)
        (let ((sum (cons 0.0 0.0))
              (count (length indices)))
          (for-each (lambda (idx)
                      (set! sum (c-add sum (local-parameter grid idx))))
                    indices)
          (cons (/ (car sum) count) (/ (cdr sum) count)))))

  ;; ------------------------------------------------------------------
  ;; 2) FMM Kernels (Algebraic Geometry Corrected)
  ;; ------------------------------------------------------------------
  
  ;; P2M: Particle to Multipole
  ;; Creates Laurent expansion coefficients about 'center'
  (define (p2m-kernel grid sources source-charges center order)
    (let ((M (make-vector order (cons 0.0 0.0))))
      (for-each (lambda (idx q)
                  (let* ((z-s (local-parameter grid idx))
                         (delta (c-sub z-s center)))
                    (do ((k 0 (+ k 1))) ((= k order))
                      ;; M_k += q * (z_s - z_c)^k
                      (let* ((term-pow (c-pow delta k))
                             ;; Charge q is scalar, represented as complex (q, 0)
                             (q-complex (cons q 0.0))
                             (term (c-mul q-complex term-pow)))
                        (vector-set! M k (c-add (vector-ref M k) term))))))
                sources source-charges)
      M))

  ;; M2L: Multipole to Local translation
  ;; Shifts singularity from z_s to z_t using Binomial convolution
  (define (m2l-translation M z-s z-t order)
    (let ((L (make-vector order (cons 0.0 0.0)))
          (z-diff (c-sub z-t z-s))) ;; Vector from Source Center to Target Center
      
      (do ((j 0 (+ j 1))) ((= j order) L)
        (let ((sum (cons 0.0 0.0)))
          (do ((k 0 (+ k 1))) ((= k order))
            ;; Formula for 1/z kernel shift:
            ;; L_j = sum_{k} M_k * (-1)^k * nCk(j+k, k) / (z_t - z_s)^(j+k+1)
            (let* ((binom (exact->inexact (nCk (+ j k) k)))
                   (sign (if (odd? k) -1.0 1.0))
                   (denom-pow (c-pow z-diff (+ j k 1)))
                   (numerator (cons (* sign binom) 0.0))
                   (factor (c-div numerator denom-pow))
                   (term (c-mul (vector-ref M k) factor)))
              (set! sum (c-add sum term))))
          (vector-set! L j sum)))))

  ;; L2P: Local to Particle evaluation
  ;; Evaluates Taylor series at z_target
  (define (l2p-evaluate L z-target z-center order)
    (let ((potential (cons 0.0 0.0))
          (delta (c-sub z-target z-center)))
      (do ((j 0 (+ j 1))) ((= j order) potential)
        ;; Phi(z) += L_j * (z - z_c)^j
        (let ((term (c-mul (vector-ref L j) (c-pow delta j))))
          (set! potential (c-add potential term))))))

  ;; ------------------------------------------------------------------
  ;; 3) Golay-driven Evaluation
  ;; ------------------------------------------------------------------

  (define (cartan-fmm-evaluate-golay grid hierarchy sources charges target-idx order golay-info-bits)
    "Evaluate potential at target-idx using FMM driven by Golay Frontier."
    
    ;; Initialize Frontier with given info-bits (controls BFS vs DFS behavior)
    (let* ((frontier (make-adaptive-frontier golay-info-bits))
           (target-pos (local-parameter grid target-idx))
           (total-potential (cons 0.0 0.0)))
      
      (print-frontier-info frontier)
      
      ;; Initial Task: Process all levels in the hierarchy
      ;; We push levels to the frontier.
      ;; If Mode is Stack (DFS), we process deep (fine) levels first? 
      ;; Or we can interpret Frontier as a worklist of 'Cell Blocks'.
      
      ;; Let's push indices of levels [0 ... max-level] into frontier
      (let ((num-levels (vector-length hierarchy)))
        (do ((i 0 (+ i 1))) ((= i num-levels))
          (set! frontier (adaptive-frontier-push frontier i))))
      
      ;; Worklist Loop
      (let loop ()
        (let-values (((level-idx updated-frontier) (adaptive-frontier-pop frontier)))
          (when level-idx
            (set! frontier updated-frontier)
            
            (let ((cell-indices (vector-ref hierarchy level-idx)))
              (unless (null? cell-indices)
                (let* ((level-center (calculate-geometric-center grid cell-indices))
                       (dist (c-abs (c-sub target-pos level-center)))
                       ;; 簡易判定: 距離が近い or レベルが高い(細かい)場合は Direct
                       ;; 本来はボックスサイズ比で判定
                       (is-near-field (< dist 0.5))) 
                  
                  (cond
                   ;; [Near Field Logic] -> Direct Sum
                   (is-near-field
                    ;; (printf "  [Near] Level ~a Direct Calc~%" level-idx)
                    (for-each 
                     (lambda (src-idx)
                       (unless (= src-idx target-idx)
                         (let* ((src-pos (local-parameter grid src-idx))
                                (diff (c-sub target-pos src-pos))
                                ;; q = 1.0 assumed for simplicity if not looked up
                                ;; In real code, lookup charges[src-idx]
                                (q (list-ref charges src-idx)) ;; Assuming charges is list matching sources
                                (val (c-div (cons q 0.0) diff)))
                           (set! total-potential (c-add total-potential val)))))
                     cell-indices))
                   
                   ;; [Far Field Logic] -> Multipole Expansion
                   (else
                    ;; (printf "  [Far]  Level ~a Multipole~%" level-idx)
                    ;; 1. P2M
                    (let ((M (p2m-kernel grid cell-indices 
                                         (map (lambda (x) (list-ref charges x)) cell-indices) 
                                         level-center order)))
                      ;; 2. M2L (To target position directly for this demo)
                      (let ((L (m2l-translation M level-center target-pos order)))
                        ;; 3. L2P (Eval at center=target)
                        ;; term L[0] corresponds to constant term of local expansion
                        (set! total-potential (c-add total-potential (vector-ref L 0))))))
                   ))))
            (loop))))
      
      total-potential))

  ;; ------------------------------------------------------------------
  ;; Demo
  ;; ------------------------------------------------------------------
  (define (demo-cartan-golay)
    (printf "=== Cartan-FMM with Golay Frontier ===\n")
    
    (let* ((num-points 64)
           (grid (make-goppa-grid 2 5 num-points))
           (sources (iota num-points))
           (charges (make-list num-points 1.0)) ;; All charge +1
           (target-idx 0)
           (order 8)
           ;; Simple fake hierarchy: split points into chunks based on index
           ;; Real implementation uses Cartan decomposition logic
           (hierarchy (vector 
                       (iota 8 1)      ;; Level 0: close points
                       (iota 8 9)      ;; Level 1
                       (iota 16 17)    ;; Level 2
                       (iota 31 33)))) ;; Level 3: far points
      
      ;; Case 1: Low Golay weight -> DFS-like (Stack)
      ;; Use info-bits = 0 -> weight 0.
      (printf "\n--- Run 1: Low Entropy (Stack/DFS) ---\n")
      (let ((res1 (cartan-fmm-evaluate-golay 
                   grid hierarchy sources charges target-idx order 0)))
        (printf "Result Potential: ~a + ~ai\n" (car res1) (cdr res1)))

      ;; Case 2: High Golay weight -> BFS-like (Queue)
      ;; info-bits = 0xFFF (all 1s) -> weight will be high
      (printf "\n--- Run 2: High Entropy (Queue/BFS) ---\n")
      (let ((res2 (cartan-fmm-evaluate-golay 
                   grid hierarchy sources charges target-idx order #xFFF)))
        (printf "Result Potential: ~a + ~ai\n" (car res2) (cdr res2)))
      
      (printf "\n(Note: Results should be identical, but processing order differed)\n")
      ))
)
