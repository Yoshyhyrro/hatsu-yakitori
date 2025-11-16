;; Load local core libraries for distribution builds where 'chicken'
;; may not be available as an importable module.
(load "../../core/kak_decomposition.scm")
(load "../../core/machine_constants.scm")
(load "../../core/cartan_utils.scm")


(define (main args)
  (display "Boids module\n"))

(main (command-line-arguments))
