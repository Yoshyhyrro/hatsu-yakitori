;; Improved variant of core/kak_decomposition.scm — frontier and KAK-apply tweaks
;; Now integrated with Golay-controlled adaptive frontier

(import chicken scheme)
(use srfi-1 srfi-69 data-structures machine-constants cartan-utils golay-frontier)

(define +INF+ 1e99)

;;; ============================================================
;;; Frontier Implementation (Stack/Queue abstraction)
;;; ============================================================
;;; For 'stack: queue-data is a simple list (top at car)
;;; For 'queue: queue-data is a pair (front . back) where each is a list.
;;;   real-queue-list = append(front (reverse back))
;;; This gives O(1) amortized push/pop for queue.

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
                    (cons 'queue (cons (cdr front) (cons back '())))))
           ((null? front)        ; front empty -> if back empty -> empty queue
            (if (null? back)
                (values #f #f frontier)
                ;; move reversed back into front in O(n) but amortized
                (let ((new-front (reverse back)))
                  (values #t (car new-front)
                          (cons 'queue (cons (cdr new-front) (cons '() '()))))))))
           (else (values #f #f frontier)))))
      (else (error "Unknown frontier mode" mode)))))

(define (K-empty? frontier)
  (let ((mode (car frontier)))
    (case mode
      ((stack) (null? (cdr frontier)))
      ((queue) (let ((fb (cdr frontier)))
                 (and (null? (car fb)) (null? (cdr (cdr frontier))))))
      (else (error "Unknown frontier mode" mode)))))

(define (K-size frontier)
  (let ((mode (car frontier)))
    (case mode
      ((stack) (length (cdr frontier)))
      ((queue)
       (let ((fb (cdr frontier)))
         (+ (length (car fb)) (length (cdr (cdr frontier))))))
      (else (error "Unknown frontier mode" mode)))))

;;; ============================================================
;;; Adaptive Frontier from Golay Control
;;; ============================================================
;;; Optionally wrap adaptive-frontier (from golay-frontier) into
;;; the K-frontier abstraction for seamless mode switching.

(define (K-frontier-adaptive info-bits)
  ;; Create an adaptive frontier from Golay encoding
  ;; Returns a structure compatible with K-push/K-pop
  (let ((af (make-adaptive-frontier info-bits)))
    ;; Extract mode and convert to K-frontier
    (let ((mode (adaptive-frontier-mode af)))
      (K-frontier mode))))

;; relax-bound unchanged except use +INF+
(define (relax-bound dist-table v new-dist)
  (let ((current-dist (hash-table-ref dist-table v +INF+)))
    (if (< new-dist current-dist)
        (begin
          (hash-table-set! dist-table v new-dist)
          #t)
        #f)))

(define (graph-neighbors graph node)
  (cond
    ((hash-table? graph) (hash-table-ref graph node '()))
    ((list? graph) (let ((entry (assoc node graph)))
                     (if entry (cdr entry) '())))
    (else '())))

;;; ============================================================
;;; KAK-apply: Level-by-level processing (BFS-style)
;;; ============================================================

(define (KAK-apply graph sources B frontier-mode max-steps)
  (define dist-table (make-hash-table))
  (define visited (make-hash-table))

  ;; initialize sources distances
  (for-each (lambda (s) (hash-table-set! dist-table s 0.0)) sources)

  (define decomp-levels (cartan-log-decompose B max-steps))

  ;; initialize frontier with sources
  (define init-front (K-frontier frontier-mode))
  (define init-front (fold (lambda (s acc) (K-push acc s)) init-front sources))

  ;; process level-by-level
  (let loop ((frontier init-front)
             (step 0))
    (if (or (>= step max-steps) (K-empty? frontier))
        dist-table
        ;; process all nodes currently in frontier (current-level)
        (let loop-level ((f frontier) (next-f (K-frontier frontier-mode)))
          (let-values ((success node new-f) (K-pop f))
            (if (not success)
                ;; finished current level: move to next level and increment step
                (loop next-f (+ step 1))
                ;; process node
                (let* ((current-dist (hash-table-ref dist-table node))
                       ;; the decomposition piece for current level
                       (a-k (list-ref decomp-levels (min step (1- (length decomp-levels)))))
                       (neighbors (graph-neighbors graph node)))
                  ;; relax neighbors and push into next frontier if updated
                  (for-each
                   (lambda (edge)
                     (let ((nb (car edge)) (weight (cdr edge)) (new-dist (+ current-dist weight)))
                       (when (relax-bound dist-table nb new-dist)
                         (set! next-f (K-push next-f nb)))))
                   neighbors)
                  ;; continue processing current level
                  (loop-level new-f next-f))))))))

;; Add wrapper: use Golay-controlled adaptive frontier to select mode and return tau + frontier
(define (KAK-apply-golay graph sources B max-steps info-bits)
  "Wrapper: build adaptive frontier from info-bits, call KAK-apply with chosen mode.
   Returns three values: dist-table, tau (weight), adaptive-frontier-vector"
  (let ((af (make-adaptive-frontier info-bits)))
    (let ((tau (adaptive-frontier-tau af))
          (mode (adaptive-frontier-mode af)))
      (let ((dist (KAK-apply graph sources B mode max-steps)))
        (values dist tau af)))))

