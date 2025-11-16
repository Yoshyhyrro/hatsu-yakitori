;; cartan_utils.scm - Utility functions for Cartan decomposition

(module cartan-utils
  (pretty-print-decomposition
   validate-decomposition)
  
  (import chicken scheme)
  (use srfi-1)
  
  ;; Validate decomposition parameters
  (define (validate-decomposition B steps)
    (and (> B 0)
         (> steps 0)
         (integer? steps)))
  
  ;; Pretty print decomposition hierarchy
  (define (pretty-print-decomposition B steps)
    (let ((decomp (map (lambda (k)
                         (exp (/ (* k (log B)) steps)))
                       (iota (+ steps 1)))))
      (printf "Cartan decomposition (B=~a, steps=~a):~n" B steps)
      (for-each (lambda (k v)
                  (printf "  Level ~2d: ~10,6f~n" k v))
                (iota (+ steps 1))
                decomp)))
  
  ) ;; end module
