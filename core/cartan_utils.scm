;; cartan_utils.scm - Utility functions for Cartan decomposition

(module cartan-utils
  (pretty-print-decomposition
   validate-decomposition
   cartan-log-decompose)          ;; 追加: エクスポート

  (import chicken scheme)
  (use srfi-1 machine-constants)   ;; 追加: safe-log 等を利用

  ;; Validate decomposition parameters
  (define (validate-decomposition B steps)
    (and (> B 0)
         (> steps 0)
         (integer? steps)))

  ;; Compute log-spaced Cartan decomposition levels
  ;; (cartan-log-decompose B steps) => list of length (steps+1)
  ;; uses safe-log for numeric safety
  (define (cartan-log-decompose B steps)
    (let ((lnB (safe-log B)))
      (map (lambda (k)
             (exp (/ (* k lnB) steps)))
           (iota (+ steps 1)))))

  ;; Pretty print decomposition hierarchy (uses cartan-log-decompose)
  (define (pretty-print-decomposition B steps)
    (let ((decomp (cartan-log-decompose B steps)))
      (printf "Cartan decomposition (B=~a, steps=~a):~n" B steps)
      (for-each (lambda (k v)
                  (printf "  Level ~2d: ~10,6f~n" k v))
                (iota (+ steps 1))
                decomp)))

  ) ;; end module
