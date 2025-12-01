;;; ---------------------------------------------------------------------------
;;; core/kak_decomposition.scm
;;; KAK Decomposition & Frontier Logic
;;; ---------------------------------------------------------------------------

;; ✅ FIX: スラッシュをドットに統一
(module core.kak_decomposition
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
          srfi-1
          srfi-69)

  ;; ✅ FIX: すべてドット記法で統一
  (import core.machine_constants)
  (import core.golay_frontier)
  (import core.cartan_utils)

  (define +INF+ 1e99)

  ;;; ============================================================
  ;;; Frontier Implementation (Stack/Queue abstraction)
  ;;; ============================================================

  (define (K-frontier mode)
    (cond ((eq? mode 'stack) (cons 'stack '()))
          ((eq? mode 'queue) (cons 'queue (cons '() '())))
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
           (cons 'queue (cons front (cons val back)))))
        (else (error "Unknown frontier mode" mode)))))

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
             ((not (null? front))
              (values #t (car front)
                      (cons 'queue (cons (cdr front) back))))
             ((null? back)
              (values #f #f frontier))
             (else
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
    (let ((af (make-adaptive-frontier info-bits)))
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
  ;;; KAK-apply: Level-by-level processing
  ;;; ============================================================

  (define (KAK-apply graph sources B frontier-mode max-steps)
    (define dist-table (make-hash-table))
    
    (for-each (lambda (s) (hash-table-set! dist-table s 0.0)) sources)

    (define decomp-levels (cartan-log-decompose B max-steps))

    (define init-front 
      (fold (lambda (s acc) (K-push acc s)) 
            (K-frontier frontier-mode) 
            sources))

    (let loop ((frontier init-front)
               (step 0))
      (if (or (>= step max-steps) (K-empty? frontier))
          dist-table
          (let loop-level ((f frontier) (next-f (K-frontier frontier-mode)))
            (call-with-values
                (lambda () (K-pop f))
              (lambda (success node new-f)
                (if (not success)
                    (loop next-f (+ step 1))
                    (let* ((current-dist (hash-table-ref dist-table node))
                           (a-k (list-ref decomp-levels 
                                         (min step (- (length decomp-levels) 1))))
                           (neighbors (graph-neighbors graph node)))
                      (for-each
                       (lambda (edge)
                         (let* ((nb (car edge)) 
                                (edge-weight (cdr edge)) 
                                (new-dist (+ current-dist edge-weight)))
                           (when (relax-bound dist-table nb new-dist)
                             (set! next-f (K-push next-f nb)))))
                       neighbors)
                      (loop-level new-f next-f)))))))))

  (define (KAK-apply-golay graph sources B max-steps info-bits)
    (let ((af (make-adaptive-frontier info-bits)))
      (let ((tau (adaptive-frontier-tau af))
            (mode (adaptive-frontier-mode af)))
        (let ((dist (KAK-apply graph sources B mode max-steps)))
          (values dist tau af))))))