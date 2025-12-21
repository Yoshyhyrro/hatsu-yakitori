;;; ============================================================
;;; modules/kak_optimization.scm
;;; 
;;; KAK Decomposition 最適化モジュール
;;; 
;;; 計算量爆発対策:
;;;  1. Golay再計算の排除
;;;  2. Cartan分解の遅延評価
;;;  3. Popcount最適化
;;;  4. Hash-table アクセス削減
;;; ============================================================

(declare (unit kak_optimization))
(declare (uses srfi-1 srfi-69 chicken.bitwise))

(module kak_optimization
  (;; Main API
   make-kak-context
   kak-apply-cached
   kak-apply-optimized
   
   ;; Utilities
   popcount-fast
   cartan-lazy-vector
   kak-optimize-config
   
   ;; Frontier abstraction
   frontier-create
   frontier-push
   frontier-pop
   frontier-empty?

   ;; Context accessors
   kak-context?
   kak-context-mode
   kak-context-tau
   kak-context-decomp
   kak-context-info-bits
   kak-context-steps     ;; Added: 外部モジュールで必要
   kak-context-base      ;; Added
   kak-context-codeword)  ;; Added
   

  (import scheme chicken.base srfi-1 srfi-69 chicken.bitwise)

  ;;; ================================================================
  ;;; 1. KAK Context: 一度の計算で全情報を保有
  ;;; ================================================================
  
  ;; Context record
  (define (make-kak-context info-bits B max-steps af-config)
    "Create a computation context to avoid recomputation."
    (let-values (((mode tau codeword) (af-config)))
      ;; Precompute Cartan decomposition once
      (let ((decomp-vec (cartan-lazy-vector B max-steps)))
        (vector
         'kak-context      ;; tag [0]
         info-bits         ;; [1]
         B                 ;; [2]
         max-steps         ;; [3]
         mode              ;; [4] - frontier mode ('stack or 'queue)
         tau               ;; [5] - normalized threshold
         codeword          ;; [6] - Golay codeword
         decomp-vec))))    ;; [7] - Cartan levels as vector

  (define (kak-context? obj)
    (and (vector? obj)
         (> (vector-length obj) 0)
         (eq? (vector-ref obj 0) 'kak-context)))

  (define (kak-context-info-bits ctx) (vector-ref ctx 1))
  (define (kak-context-base ctx)      (vector-ref ctx 2))
  (define (kak-context-steps ctx)     (vector-ref ctx 3))
  (define (kak-context-mode ctx)      (vector-ref ctx 4))
  (define (kak-context-tau ctx)       (vector-ref ctx 5))
  (define (kak-context-codeword ctx)  (vector-ref ctx 6))
  (define (kak-context-decomp ctx)    (vector-ref ctx 7))

  ;;; ================================================================
  ;;; 2. 高速 Popcount（Brian Kernighan + Lookup table）
  ;;; ================================================================

  (define *popcount-lut* (let ((lut (make-vector 256 0)))
                          (let loop ((i 0))
                            (if (< i 256)
                              (begin
                                (vector-set! lut i
                                  (let loop-count ((n i) (cnt 0))
                                    (if (= n 0)
                                      cnt
                                      (loop-count (bitwise-and n (- n 1)) (+ cnt 1)))))
                                (loop (+ i 1)))))
                          lut))

  (define (popcount-fast n)
    "Fast popcount for 24-bit integers using LUT."
    (+ (vector-ref *popcount-lut* (bitwise-and n #xFF))
       (vector-ref *popcount-lut* (bitwise-and (arithmetic-shift n -8) #xFF))
       (vector-ref *popcount-lut* (bitwise-and (arithmetic-shift n -16) #xFF))))

  ;;; ================================================================
  ;;; 3. Cartan 遅延評価ベクトル
  ;;; ================================================================

  (define (cartan-lazy-vector B max-steps)
    (let ((log-B (log B))
          (result (make-vector max-steps)))
      (let loop ((k 0))
        (if (< k max-steps)
          (let ((a-k (/ (exp (* k log-B)) max-steps)))
            (vector-set! result k a-k)
            (loop (+ k 1)))))
      result))

  ;;; ================================================================
  ;;; 4. Frontier abstraction (Placed before usage)
  ;;; ================================================================
  
  (define +INF+ 1e99)

  (define (frontier-create mode)
    (cond
      ((eq? mode 'stack) (cons 'stack '()))
      ((eq? mode 'queue) (cons 'queue (cons '() '())))
      (else (error "Unknown frontier mode" mode))))

  (define (frontier-push frontier val)
    (let ((mode (car frontier)))
      (case mode
        ((stack)
         (cons 'stack (cons val (cdr frontier))))
        ((queue)
         (let* ((fb (cdr frontier))
                (front (car fb))
                (back (cdr fb)))
           (cons 'queue (cons front (cons val back))))))))

  (define (frontier-pop frontier)
    (let ((mode (car frontier)))
      (cond
        ((eq? mode 'stack)
         (let ((data (cdr frontier)))
           (if (null? data)
             (values #f #f frontier)
             (values #t (car data) (cons 'stack (cdr data))))))
        ((eq? mode 'queue)
         (let* ((fb (cdr frontier))
                (front (car fb))
                (back (cdr fb)))
           (cond
             ((not (null? front))
              (values #t (car front) 
                      (cons 'queue (cons (cdr front) back))))
             ((null? back)
              (values #f #f frontier))
             (else
              (let ((new-front (reverse back)))
                (values #t (car new-front)
                        (cons 'queue (cons (cdr new-front) '()))))))))
        (else
         (error "Unknown frontier mode" mode)))))

  (define (frontier-empty? frontier)
    (let ((mode (car frontier)))
      (cond
        ((eq? mode 'stack) (null? (cdr frontier)))
        ((eq? mode 'queue) 
         (let ((fb (cdr frontier)))
           (and (null? (car fb)) (null? (cdr fb)))))
        (else (error "Unknown frontier mode" mode)))))

  ;;; ================================================================
  ;;; 5. Configuration helper
  ;;; ================================================================

  (define (relax-bound-default dist-table v new-dist)
    (let ((current (hash-table-ref/default dist-table v +INF+)))
      (< new-dist current)))

  (define (kak-optimize-config graph-size avg-degree max-steps)
    (let ((density (/ avg-degree (sqrt graph-size))))
      (cond
        ((> density 0.1)  (values 'queue 1.2 #f))
        ((< density 0.01) (values 'stack 1.5 #f))
        (else             (values 'queue 1.0 #f)))))

  ;;; ================================================================
  ;;; 6. メイン最適化版: KAK-apply-cached
  ;;; ================================================================

  ;; 修正: #!key を使用し、内部defineをletにリファクタリング
  (define (kak-apply-cached graph sources context 
                            #!key (relax-bound relax-bound-default))
    "Optimized KAK application using precomputed context."
    
    (unless (kak-context? context)
      (error "kak-apply-cached: context must be kak-context object" context))
    
    (let* ((mode (kak-context-mode context))
           (decomp-vec (kak-context-decomp context))
           (max-steps (kak-context-steps context))
           (dist-table (make-hash-table))
           
           (graph-neighbors
            (lambda (node)
              (cond
                ((hash-table? graph)
                 (hash-table-ref/default graph node '()))
                ((list? graph)
                 (let ((entry (assoc node graph)))
                   (if entry (cdr entry) '())))
                (else '())))))
      
      ;; Initialize source distances
      (for-each (lambda (s) (hash-table-set! dist-table s 0.0)) sources)
      
      ;; 修正: 内部 define を廃止し、let で初期フロンティアを構築
      ;; 初期フロンティアにソースを追加していく
      (let ((init-frontier 
             (fold (lambda (s f) (frontier-push f s))
                   (frontier-create mode)
                   sources)))
      
        ;; Main loop: process level by level
        (let loop ((frontier init-frontier) (step 0))
          (if (or (>= step max-steps) (frontier-empty? frontier))
              dist-table
              
              ;; Get Cartan coefficient for this step
              (let ((a-k (vector-ref decomp-vec step))
                    (next-frontier (frontier-create mode)))
                
                ;; Process all nodes in current frontier
                (let loop-level ((f frontier))
                  (let-values (((success node new-f) (frontier-pop f)))
                    (if (not success)
                        ;; Move to next level
                        (loop next-frontier (+ step 1))
                        
                        ;; Process current node
                        (let ((current-dist (hash-table-ref/default dist-table node +inf.0)))
                          
                          ;; Update all neighbors
                          (for-each
                           (lambda (edge)
                             (let* ((neighbor (car edge))
                                    (weight (cdr edge))
                                    (new-dist (+ current-dist (* weight a-k))))
                               ;; Relaxation using the passed function
                               (when (relax-bound dist-table neighbor new-dist)
                                 (hash-table-set! dist-table neighbor new-dist)
                                 (set! next-frontier (frontier-push next-frontier neighbor)))))
                           (graph-neighbors node))
                          
                          ;; Continue with next node in frontier
                          (loop-level new-f)))))))))))

  ;;; ================================================================
  ;;; 7. Full optimized wrapper
  ;;; ================================================================

  (define (kak-apply-optimized graph sources B frontier-mode max-steps 
                               info-bits af-config)
    (let ((context (make-kak-context info-bits B max-steps af-config)))
      (let ((dist (kak-apply-cached graph sources context)))
        (values dist
                (kak-context-tau context)
                (kak-context-codeword context))))))

 ;; end module kak_optimization