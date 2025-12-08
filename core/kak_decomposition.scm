;;; ---------------------------------------------------------------------------
;;; KAK Decomposition & Frontier Logic
;;; ---------------------------------------------------------------------------

;; Module declaration for Chicken 5
;; Module name matches the file path (core/kak_decomposition.scm)
(module core/kak_decomposition
  ;; Exports
  (K-frontier
   K-push
   K-pop
   K-empty?
   K-size
   K-frontier-adaptive
   relax-bound
   graph-neighbors
   KAK-apply
   KAK-apply-golay
   +INF+)

  (import scheme)
  (import (chicken base)
          (chicken format)
          srfi-1    ;; Lists (fold, etc.)
          srfi-69)  ;; Hash tables

  ;; Import local dependencies
  ;; Ensure these modules are built and available via -J in Shake
  (import core/machine_constants)
  (import core/golay_frontier)
  (import core/cartan_utils)

  (define +INF+ 1e99)

  ;;; ============================================================
  ;;; Frontier Implementation (Stack/Queue abstraction)
  ;;; ============================================================

  (define (K-frontier mode)
    (cond ((eq? mode 'stack) (cons 'stack '()))
          ((eq? mode 'queue) (cons 'queue (cons '() '()))) ; (queue . (front . back))
          (else (error "Unknown frontier mode" mode))))

  (define (K-push frontier val)
    (let ((mode (car frontier)))
      (case mode
        ((stack)
         (cons 'stack (cons val (cdr frontier))))
        ((queue)
         (let* ((fb (cdr frontier))
                (front (car fb))
                (back (cdr fb)))
           ;; push onto back (amortized O(1))
           (cons 'queue (cons front (cons val back)))))
        (else (error "Unknown frontier mode" mode)))))

  ;; K-pop returns three values: (success? node frontier')
  (define (K-pop frontier)
    (let ((mode (car frontier)))
      (case mode
        ((stack)
         (let ((data (cdr frontier)))
           (if (null? data)
               (values #f #f frontier)
               (values #t (car data) (cons 'stack (cdr data))))))
        
        ((queue)
         (let* ((fb (cdr frontier))
                (front (car fb))
                (back (cdr fb)))
           (cond
             ((not (null? front))  ; normal case: front has elements
              (values #t (car front)
                      (cons 'queue (cons (cdr front) back))))
             
             ((null? back)         ; both front and back empty -> empty queue
              (values #f #f frontier))
             
             (else                 ; front empty but back has elements
              (let ((new-front (reverse back)))
                (values #t (car new-front)
                        (cons 'queue (cons (cdr new-front) '()))))))))
        
        (else (error "Unknown frontier mode" mode)))))

  (define (K-empty? frontier)
    (let ((mode (car frontier)))
      (case mode
        ((stack) (null? (cdr frontier)))
        ((queue) 
         (let ((fb (cdr frontier)))
           (and (null? (car fb)) (null? (cdr fb)))))
        (else (error "Unknown frontier mode" mode)))))

  (define (K-size frontier)
    (let ((mode (car frontier)))
      (case mode
        ((stack) (length (cdr frontier)))
        ((queue)
         (let ((fb (cdr frontier)))
           (+ (length (car fb)) (length (cdr fb)))))
        (else (error "Unknown frontier mode" mode)))))

  ;;; ============================================================
  ;;; Adaptive Frontier from Golay Control
  ;;; ============================================================

  (define (K-frontier-adaptive info-bits)
    ;; Create an adaptive frontier from Golay encoding
    (let ((af (make-adaptive-frontier info-bits)))
      ;; Extract mode and convert to K-frontier
      (let ((mode (adaptive-frontier-mode af)))
        (K-frontier mode))))

  (define (relax-bound dist-table v new-dist)
    (let ((current-dist (hash-table-ref/default dist-table v +INF+)))
      (if (< new-dist current-dist)
          (begin
            (hash-table-set! dist-table v new-dist)
            #t)
          #f)))

  (define (graph-neighbors graph node)
    (cond
      ((hash-table? graph) 
       (hash-table-ref/default graph node '()))
      ((list? graph) 
       (let ((entry (assoc node graph)))
         (if entry (cdr entry) '())))
      (else '())))

  ;;; ============================================================
  ;;; KAK-apply: Level-by-level processing (BFS-style)
  ;;; ============================================================

  (define (KAK-apply graph sources B frontier-mode max-steps)
    "Apply KAK decomposition algorithm with Cartan log-space levels.
     Args:
       graph: adjacency structure (hash-table or alist)
       sources: list of source nodes
       B: upper bound for decomposition (must be > 1)
       frontier-mode: 'stack or 'queue
       max-steps: number of decomposition steps
     Returns: hash-table of shortest distances from sources"
    
    (define dist-table (make-hash-table))
    
    ;; Initialize source distances to 0
    (for-each (lambda (s) (hash-table-set! dist-table s 0.0)) sources)

    ;; Compute Cartan decomposition levels: [B^(1/steps), ..., B^(steps/steps)]
    ;; This now returns exactly max-steps elements (fixed bug)
    (define decomp-levels (cartan-log-decompose B max-steps))

    ;; Validate decomposition length matches max-steps
    (unless (= (length decomp-levels) max-steps)
      (error "KAK-apply: decomposition length mismatch"
             (length decomp-levels) max-steps))

    ;; Initialize frontier with all source nodes
    (define init-front 
      (fold (lambda (s acc) (K-push acc s)) 
            (K-frontier frontier-mode) 
            sources))

    ;; Process level-by-level (breadth-first style)
    (let loop ((frontier init-front)
               (step 0))
      (if (or (>= step max-steps) (K-empty? frontier))
          dist-table
          
          ;; Process all nodes at current level
          (let loop-level ((f frontier) (next-f (K-frontier frontier-mode)))
            (call-with-values
                (lambda () (K-pop f))
              (lambda (success node new-f)
                (if (not success)
                    ;; Finished current level: move to next level
                    (loop next-f (+ step 1))
                    
                    ;; Process current node
                    (let* ((current-dist (hash-table-ref dist-table node))
                           ;; Get decomposition coefficient for current step
                           ;; step ∈ {0, 1, ..., max-steps-1}
                           ;; decomp-levels has exactly max-steps elements
                           (a-k (list-ref decomp-levels step))
                           (neighbors (graph-neighbors graph node)))
                      
                      ;; Relax all neighbors with scaled edge weights
                      (for-each
                       (lambda (edge)
                         (let* ((nb (car edge)) 
                                (edge-weight (cdr edge))
                                ;; Scale edge weight by Cartan coefficient
                                (new-dist (+ current-dist (* edge-weight a-k))))
                           (when (relax-bound dist-table nb new-dist)
                             ;; Distance improved: add neighbor to next frontier
                             (set! next-f (K-push next-f nb)))))
                       neighbors)
                      
                      ;; Continue processing current level
                      (loop-level new-f next-f)))))))))

  ;;; ============================================================
  ;;; Golay-Controlled Wrapper
  ;;; ============================================================

  (define (KAK-apply-golay graph sources B max-steps info-bits)
    "Wrapper: build adaptive frontier from Golay-encoded info-bits.
     Args:
       graph: adjacency structure
       sources: list of source nodes
       B: upper bound for decomposition
       max-steps: number of decomposition steps
       info-bits: 12-bit info word for Golay encoding
     Returns: three values
       1. dist-table: hash-table of distances
       2. tau: Golay codeword weight (error correction capability)
       3. af: adaptive-frontier structure"
    
    ;; Create adaptive frontier from Golay encoding
    (let ((af (make-adaptive-frontier info-bits)))
      (let ((tau (adaptive-frontier-tau af))
            (mode (adaptive-frontier-mode af)))
        
        ;; Run KAK algorithm with chosen frontier mode
        (let ((dist (KAK-apply graph sources B mode max-steps)))
          
          ;; Return all three components
          (values dist tau af))))))

 ;; end module