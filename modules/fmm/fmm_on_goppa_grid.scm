;; module/fmm/fmm_on_goppa_grid.scm

(module module.fmm.fmm-goppa
  (make-goppa-grid
   local-parameter
   calculate-geometric-center
   cartan-fmm-evaluate-golay
   demo-cartan-golay)

  (import (scheme)
          (chicken base)
          (chicken format)
          (chicken sort)
          (chicken flonum) ;; For optimized float math if needed
          srfi-1
          srfi-69
          srfi-133
          golay_frontier)

  ;; ------------------------------------------------------------------
  ;; Math Helpers
  ;; ------------------------------------------------------------------
  (define pi (* 4 (atan 1)))
  
  ;; NOTE: Removed incorrect redefinitions of sin, cos, etc.
  ;; Standard Scheme functions handle types correctly and are optimized.

  ;; ------------------------------------------------------------------
  ;; Complex Arithmetic Helpers
  ;; ------------------------------------------------------------------
  (define (c-add a b) (cons (+ (car a) (car b)) (+ (cdr a) (cdr b))))
  (define (c-sub a b) (cons (- (car a) (car b)) (- (cdr a) (cdr b))))
  (define (c-mul a b) (cons (- (* (car a) (car b)) (* (cdr a) (cdr b)))
                            (+ (* (car a) (cdr b)) (* (cdr a) (car b)))))
  (define (c-div a b)
    (let ((den (+ (* (car b) (car b)) (* (cdr b) (cdr b)))))
      (if (zero? den)
          (cons 0.0 0.0)
          (cons (/ (+ (* (car a) (car b)) (* (cdr a) (cdr b))) den)
                (/ (- (* (cdr a) (car b)) (* (car a) (cdr b))) den)))))
  
  (define (c-abs a) (sqrt (+ (* (car a) (car a)) (* (cdr a) (cdr a)))))
  
  (define (c-pow z n)
    (let loop ((i 0) (acc (cons 1.0 0.0)))
      (if (= i n) acc (loop (+ i 1) (c-mul acc z)))))
  
  (define (c-inv z)
    (let ((den (+ (* (car z) (car z)) (* (cdr z) (cdr z)))))
      (if (< den 1.0e-12)
          (cons 0.0 0.0)
          (cons (/ (car z) den) (/ (- (cdr z)) den)))))

  ;; Combinatorics for M2L
  (define (fact n)
    (if (<= n 1) 1 (* n (fact (- n 1)))))
  
  (define (nCk n k)
    (/ (fact n) (* (fact k) (fact (- n k)))))

  ;; ------------------------------------------------------------------
  ;; Frontier Operations
  ;; ------------------------------------------------------------------
  (define (make-stack) '())
  (define (stack-push stack item) (cons item stack))
  (define (stack-pop stack)
    (if (null? stack)
        (values #f '())
        (values (car stack) (cdr stack))))

  (define (make-queue) (cons '() '()))
  (define (queue-push queue item)
    (let ((new-pair (list item)))
      (if (null? (car queue))
          (begin
            (set-car! queue new-pair)
            (set-cdr! queue new-pair))
          (begin
            (set-cdr! (cdr queue) new-pair)
            (set-cdr! queue new-pair)))
      queue))
  (define (queue-pop queue)
    (if (null? (car queue))
        (values #f queue)
        (let ((item (caar queue)))
          (set-car! queue (cdar queue))
          (when (null? (car queue))
            (set-cdr! queue '()))
          (values item queue))))

  ;; フロンティア操作ラッパー (golay configに基づく)
  (define (adaptive-frontier-push frontier item)
    (let ((mode (adaptive-frontier-mode frontier))
          (data (vector-ref frontier 4))) ; 5番目の要素にデータを保存
      (vector-set! frontier 4
                   (if (eq? mode 'stack)
                       (stack-push data item)
                       (queue-push data item)))
      frontier))

  (define (adaptive-frontier-pop frontier)
    (let ((mode (adaptive-frontier-mode frontier))
          (data (vector-ref frontier 4)))
      (if (eq? mode 'stack)
          (let-values (((item new-data) (stack-pop data)))
            (vector-set! frontier 4 new-data)
            (values item frontier))
          (let-values (((item new-data) (queue-pop data)))
            (vector-set! frontier 4 new-data)
            (values item frontier)))))

  (define print-frontier-info print-golay-info)

  ;; ------------------------------------------------------------------
  ;; Goppa Grid & Geometry
  ;; ------------------------------------------------------------------
  (define (make-goppa-grid q m num-points)
    (let* ((N num-points)
           (two-pi (* 2.0 (acos -1.0))))
      (do ((k 0 (+ k 1)) (acc (make-vector N '())))
          ((= k N) acc)
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
  ;; FMM Kernels
  ;; ------------------------------------------------------------------
  (define (p2m-kernel grid sources source-charges center order)
    (let ((M (make-vector order (cons 0.0 0.0))))
      (for-each (lambda (idx q)
                  (let* ((z-s (local-parameter grid idx))
                         (delta (c-sub z-s center)))
                    (do ((k 0 (+ k 1))) ((= k order))
                      (let* ((term-pow (c-pow delta k))
                             (q-complex (cons q 0.0))
                             (term (c-mul q-complex term-pow)))
                        (vector-set! M k (c-add (vector-ref M k) term))))))
                sources source-charges)
      M))

  (define (m2l-translation M z-s z-t order)
    (let ((L (make-vector order (cons 0.0 0.0)))
          (z-diff (c-sub z-t z-s)))
      
      (do ((j 0 (+ j 1))) ((= j order) L)
        (let ((sum (cons 0.0 0.0)))
          (do ((k 0 (+ k 1))) ((= k order))
            (let* ((binom (exact->inexact (nCk (+ j k) k)))
                   (sign (if (odd? k) -1.0 1.0))
                   (denom-pow (c-pow z-diff (+ j k 1)))
                   (numerator (cons (* sign binom) 0.0))
                   (factor (c-div numerator denom-pow))
                   (term (c-mul (vector-ref M k) factor)))
              (set! sum (c-add sum term))))
          (vector-set! L j sum)))))

  ;; ------------------------------------------------------------------
  ;; Golay-driven FMM Evaluation
  ;; ------------------------------------------------------------------
  (define (cartan-fmm-evaluate-golay grid hierarchy sources charges target-idx order golay-info-bits)
    "Evaluate potential at target-idx using FMM driven by Golay Frontier."
    
    (let* ((base-frontier (make-adaptive-frontier golay-info-bits))
           (frontier (vector-append base-frontier (vector (make-stack))))
           (target-pos (local-parameter grid target-idx))
           (total-potential (cons 0.0 0.0)))
      
      (print-frontier-info base-frontier)
      
      ;; レベルをフロンティアに追加
      (let ((num-levels (vector-length hierarchy)))
        (do ((i 0 (+ i 1))) ((= i num-levels))
          (set! frontier (adaptive-frontier-push frontier i))))
      
      ;; フロンティア処理ループ
      (let loop ()
        (let-values (((level-idx updated-frontier) (adaptive-frontier-pop frontier)))
          (when level-idx
            (set! frontier updated-frontier)
            
            (let ((cell-indices (vector-ref hierarchy level-idx)))
              (unless (null? cell-indices)
                (let* ((level-center (calculate-geometric-center grid cell-indices))
                       (dist (c-abs (c-sub target-pos level-center)))
                       (is-near-field (< dist 0.5))) 
                  
                  (cond
                   ;; Near Field: Direct Sum
                   (is-near-field
                    (for-each 
                     (lambda (src-idx)
                       (unless (= src-idx target-idx)
                         (let* ((src-pos (local-parameter grid src-idx))
                                (diff (c-sub target-pos src-pos))
                                (q (list-ref charges src-idx))
                                (val (c-div (cons q 0.0) diff)))
                           (set! total-potential (c-add total-potential val)))))
                     cell-indices))
                   
                   ;; Far Field: Multipole Expansion
                   (else
                    (let ((M (p2m-kernel grid cell-indices 
                                         (map (lambda (x) (list-ref charges x)) cell-indices) 
                                         level-center order)))
                      (let ((L (m2l-translation M level-center target-pos order)))
                        (set! total-potential (c-add total-potential (vector-ref L 0))))))))))
                   
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
           (charges (make-list num-points 1.0))
           (target-idx 0)
           (order 8)
           (hierarchy (vector 
                       (iota 8 1)
                       (iota 8 9)
                       (iota 16 17)
                       (iota 31 33))))
      
      (printf "\n--- Run 1: Low Entropy (Stack/DFS) ---\n")
      (let ((res1 (cartan-fmm-evaluate-golay 
                   grid hierarchy sources charges target-idx order 0)))
        (printf "Result Potential: ~a + ~ai\n" (car res1) (cdr res1)))

      (printf "\n--- Run 2: High Entropy (Queue/BFS) ---\n")
      (let ((res2 (cartan-fmm-evaluate-golay 
                   grid hierarchy sources charges target-idx order #xFFF)))
        (printf "Result Potential: ~a + ~ai\n" (car res2) (cdr res2)))
      
      (printf "\n(Processing order differs based on Golay weight)\n"))))