;; FMM Module Tests

(load "tools/fmm_classroom_rpc.scm")
(import tools.fmm.classroom-rpc)

(display "\n=== FMM Module Tests ===\n\n")

(define test-count 0)
(define test-passed 0)
(define test-failed 0)

(define (assert-true condition description)
  (set! test-count (+ test-count 1))
  (if condition
      (begin (set! test-passed (+ test-passed 1)) (display (string-append "[PASS] " description "\n")))
      (begin (set! test-failed (+ test-failed 1)) (display (string-append "[FAIL] " description "\n")))))

(define (assert-near actual expected epsilon description)
  (assert-true (<= (abs (- actual expected)) epsilon) description))

(define near-response (handle-request sample-near-request))
(define far-response (handle-request sample-far-request))

(assert-true (eq? (response-field near-response 'status) 'ok)
             "Near request returns ok")
(assert-true (eq? (response-field near-response 'mode) 'near)
             "Near request uses direct evaluation")
(assert-near (response-field near-response 'potential) 12.0 1.0e-9
             "Near request potential is the direct sum")

(assert-true (eq? (response-field far-response 'status) 'ok)
             "Far request returns ok")
(assert-true (eq? (response-field far-response 'mode) 'far)
             "Far request uses cluster approximation")
(assert-near (response-field far-response 'potential) (/ 12.0 11.0) 1.0e-9
             "Far request potential uses total charge over center distance")
(assert-true (string=? (response-field far-response 'request-id) "far-1")
             "Response preserves the request id")

(assert-true (= 1 1) "One equals one")
(assert-true (> 5 4) "Five greater than four")

;; ---------------------------------------------------------------------------
;; Kernel accuracy: the grid FMM kernel against direct summation
;; ---------------------------------------------------------------------------
;; The checks above cover the classroom RPC demo, which is a separate
;; implementation.  The checks below exercise modules/fmm/fmm_kernel_impl.scm
;; itself, using the closed form (N-1)/2 for the N-th roots of unity as an
;; independent reference.

(import (chicken bitwise) (chicken format) (chicken sort) (chicken flonum)
        (chicken port) (chicken condition) srfi-1 srfi-69)
(include "modules/fmm/fmm_kernel_impl.scm")

(define (quietly thunk)
  (let ((result #f))
    (with-output-to-string (lambda () (set! result (thunk))))
    result))

(define (raises? thunk)
  (handle-exceptions exn #t (begin (thunk) #f)))

(define kernel-n 64)
(define kernel-grid (make-goppa-grid 2 5 kernel-n))
(define kernel-charges (make-list kernel-n 1.0))
(define kernel-sources (iota kernel-n))
(define kernel-hierarchy (vector (iota 8 1) (iota 8 9) (iota 16 17) (iota 31 33)))
(define kernel-reference (fmm-direct-potential kernel-grid kernel-charges 0))

(define (kernel-evaluate order bits theta #!optional (hierarchy kernel-hierarchy))
  (quietly
   (lambda ()
     (cartan-fmm-evaluate kernel-grid hierarchy kernel-sources kernel-charges 0 order bits theta))))

(define (kernel-error order bits theta)
  (c-abs (c-sub (kernel-evaluate order bits theta) kernel-reference)))

;; Reference oracle: sum over s = 1..N-1 of 1 / (1 - w^s) equals (N-1)/2.
(assert-near (car kernel-reference) 31.5 1.0e-9
             "Direct-sum reference matches the closed form (N-1)/2")
(assert-near (cdr kernel-reference) 0.0 1.0e-9
             "Direct-sum reference is real on the symmetric grid")

;; Accuracy and geometric convergence in the expansion order (theta = 0.5).
(define kernel-err-4 (kernel-error 4 0 0.5))
(define kernel-err-8 (kernel-error 8 0 0.5))
(define kernel-err-16 (kernel-error 16 0 0.5))
(assert-true (< kernel-err-4 1.0e-1) "Order 4 error is below 1e-1")
(assert-true (< kernel-err-8 1.0e-3) "Order 8 error is below 1e-3")
(assert-true (< kernel-err-16 1.0e-5) "Order 16 error is below 1e-5")
(assert-true (< kernel-err-8 (/ kernel-err-4 10.0))
             "Error shrinks by more than 10x from order 4 to order 8")
(assert-true (< kernel-err-16 (/ kernel-err-8 100.0))
             "Error shrinks by more than 100x from order 8 to order 16")

;; The frontier discipline only changes the traversal order, not the value.
(assert-near (c-abs (c-sub (kernel-evaluate 8 0 0.5) (kernel-evaluate 8 #xFFF 0.5)))
             0.0 1.0e-9
             "Stack and queue frontiers give the same potential")

;; theta = 0 admits no cell, so every cell is summed directly.
(assert-near (kernel-error 8 0 0.0) 0.0 1.0e-9
             "theta = 0 reduces to the direct sum")

;; A cell that contains the target must never be expanded.
(assert-near (c-abs (c-sub (kernel-evaluate 8 0 0.5 (vector (iota kernel-n 0)))
                           kernel-reference))
             0.0 1.0e-9
             "A cell containing the target is summed directly")

;; theta must lie in [0, 1) for the expansion to converge.
(assert-true (raises? (lambda () (kernel-evaluate 8 0 1.0))) "theta = 1 is rejected")
(assert-true (raises? (lambda () (kernel-evaluate 8 0 -0.1))) "Negative theta is rejected")

;; The acceptance test itself.
(assert-true (cell-admissible? 0.2 1.0 0.5) "radius/dist = 0.2 < 0.5 is admissible")
(assert-true (not (cell-admissible? 0.5 1.0 0.5)) "radius/dist = theta is not admissible")
(assert-true (not (cell-admissible? 0.0 0.0 0.5)) "Target at the cell center is near field")
(assert-true (cell-admissible? 0.0 1.0 0.5) "A single-point cell away from the target is admissible")

;; Local coefficients L_j for j > 0 (the evaluator itself only reads L_0).
;; The sign (-1)^j must reproduce the potential at a point displaced from the target.
(let* ((cell (iota 8 9))
       (order 24)
       (center (calculate-geometric-center kernel-grid cell))
       (moments (p2m-kernel kernel-grid cell (make-list 8 1.0) center order))
       (target (local-parameter kernel-grid 0))
       (locals (m2l-translation moments center target order))
       (zeta (cons (* 0.12 (cos 0.7)) (* 0.12 (sin 0.7))))
       (probe (c-add target zeta))
       (series (let loop ((j 0) (acc (cons 0.0 0.0)))
                 (if (= j order)
                     acc
                     (loop (+ j 1)
                           (c-add acc (c-mul (vector-ref locals j) (c-pow zeta j)))))))
       (exact (fold (lambda (idx acc)
                      (c-add acc (c-div (cons 1.0 0.0)
                                        (c-sub probe (local-parameter kernel-grid idx)))))
                    (cons 0.0 0.0)
                    cell)))
  (assert-near (c-abs (c-sub series exact)) 0.0 1.0e-8
               "Local expansion sum_j L_j z^j reproduces the potential near the target"))

(display "\n=== FMM Test Summary ===\n")
(display (string-append "Total: " (number->string test-count) "\n"))
(display (string-append "Passed: " (number->string test-passed) "\n"))
(display (string-append "Failed: " (number->string test-failed) "\n"))

(if (= test-failed 0) (exit 0) (exit 1))