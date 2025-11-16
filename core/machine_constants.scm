;; machine_constants.scm - Machine epsilon and fundamental constants

(module machine-constants
  (machine-epsilon log-base)
  
  (import chicken scheme)
  
  ;; Machine epsilon for floating-point comparisons
  (define machine-epsilon 1e-10)
  
  ;; Natural logarithm base (e)
  (define log-base (exp 1.0))
  
  ) ;; end module
