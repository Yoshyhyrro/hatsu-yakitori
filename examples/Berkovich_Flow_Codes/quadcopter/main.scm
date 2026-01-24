;; examples/Berkovich_Flow_Codes/quadcopter/main.scm
;; Thin main wrapper that loads the library and runs demos

(load "quad_lib.scm")

(define (visualize-and-run)
  (printf "Running quadcopter demo (thin wrapper)...~%")
  (demo-comparison))

(when (equal? (vector-ref (current-environment) 0) '())
  ;; In some environments this is false; keep explicit main call to preserve previous behavior
  (visualize-and-run))
