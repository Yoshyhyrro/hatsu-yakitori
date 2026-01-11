;; Minimal SRFI-1 shim for project usage
;; Exports: fold, filter, filter-map

(module srfi-1
  (fold filter filter-map)
  (import scheme)

  (define (fold proc init seq)
    "Left fold: proc element acc -> new-acc"
    (let loop ((s seq) (acc init))
      (if (null? s)
          acc
          (loop (cdr s) (proc (car s) acc)))))

  (define (filter pred seq)
    "Return list of elements where pred is true"
    (let loop ((s seq) (out '()))
      (cond
        ((null? s) (reverse out))
        ((pred (car s)) (loop (cdr s) (cons (car s) out)))
        (else (loop (cdr s) out)))))

  (define (filter-map proc seq)
    "Map and keep non-#f results"
    (let loop ((s seq) (out '()))
      (if (null? s)
          (reverse out)
          (let ((v (proc (car s))))
            (loop (cdr s) (if v (cons v out) out)))))))
