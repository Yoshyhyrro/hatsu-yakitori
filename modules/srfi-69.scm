;; Minimal SRFI-69-like shim: provides a tiny mutable hash-table API used by project
;; Exports: make-hash-table hash-table-ref/default hash-table-set! hash-table-walk

(module srfi-69
  (make-hash-table hash-table-ref/default hash-table-set! hash-table-walk)
  (import scheme)

  (define (make-hash-table)
    ;; Represent table as a 1-element vector holding an alist of pairs
    (vector '()))

  (define (hash-table-ref/default table key default)
    (let ((alist (vector-ref table 0)))
      (let ((p (assoc key alist)))
        (if p
            (cdr p)
            default))))

  (define (hash-table-set! table key value)
    (let ((alist (vector-ref table 0)))
      (let ((p (assoc key alist)))
        (if p
            (set-cdr! p value)
            (vector-set! table 0 (cons (cons key value) alist))))))

  (define (hash-table-walk table thunk)
    (for-each (lambda (pair)
                (let ((k (car pair)) (v (cdr pair)))
                  (thunk k v)))
              (vector-ref table 0))))
