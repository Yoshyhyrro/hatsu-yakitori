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

(display "\n=== FMM Test Summary ===\n")
(display (string-append "Total: " (number->string test-count) "\n"))
(display (string-append "Passed: " (number->string test-passed) "\n"))
(display (string-append "Failed: " (number->string test-failed) "\n"))

(if (= test-failed 0) (exit 0) (exit 1))
