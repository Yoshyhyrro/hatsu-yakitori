;; tests/quadcopter_tests.scm
(module quadcopter-tests ()
  (import scheme)
  (import (chicken base))

  (display "\n=== Quadcopter Module Tests ===\n\n")

  (define test-count 0)
  (define test-passed 0)
  (define test-failed 0)

  (define (assert-equal actual expected description)
    (set! test-count (+ test-count 1))
    (if (equal? actual expected)
        (begin (set! test-passed (+ test-passed 1)) (display (string-append "[PASS] " description "\n")))
        (begin (set! test-failed (+ test-failed 1)) (display (string-append "[FAIL] " description "\n")))))

  ;; Load quad library (relative path from repo root when Salmonella runs tests)
  (load "examples/Berkovich_Flow_Codes/quadcopter/quad_lib.scm")

  ;; Basic sanity test: viscosity at center should be >= viscosity at corner for a standard quad
  (let* ((q (make-standard-quadcopter 8 8 1500 #b00000000))
         (tau (adaptive-frontier-tau (make-adaptive-frontier (quadcopter-info-bits q))))
         (mu-center (compute-viscosity-at-point q (morton2-encode 8 8) tau))
         (mu-corner (compute-viscosity-at-point q (morton2-encode 0 0) tau)))
    (assert-equal (> mu-center mu-corner) #t "center has higher viscosity than corner")

    ;; Basic range checks
    (assert-equal (> mu-center 0.0) #t "mu-center > 0")
    (assert-equal (> mu-corner 0.0) #t "mu-corner > 0"))

  (display "\n=== Quadcopter Test Summary ===\n")
  (display (string-append "Total: " (number->string test-count) "\n"))
  (display (string-append "Passed: " (number->string test-passed) "\n"))
  (display (string-append "Failed: " (number->string test-failed) "\n"))

  (if (= test-failed 0) (exit 0) (exit 1)))