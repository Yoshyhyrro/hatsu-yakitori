(import chicken scheme)
(use srfi-1 machine-constants golay-frontier)

(define test-count 0)
(define test-passed 0)
(define test-failed 0)

(define (test-assert name condition #!optional message)
  (set! test-count (+ test-count 1))
  (if condition
      (begin (set! test-passed (+ test-passed 1)) (format #t "  ✓ ~a~%" name))
      (begin (set! test-failed (+ test-failed 1))
             (format #t "  ✗ ~a~%" name)
             (when message (format #t "    → ~a~%" message)))))

;; basic encode/decode roundtrip
(test-assert "encode 0 returns integer"
             (integer? (encode-golay24 0)))

(test-assert "encode 1 nonzero"
             (> (encode-golay24 1) 0))

;; decode round-trip
(let ((info 123))
  (let ((cw (encode-golay24 info)))
    (let-values (((info-out syndrome) (decode-golay24 cw)))
      (test-assert "decode roundtrip returns same info"
                   (= (bitwise-and info-out #xFFF) info)))))

;; adaptive frontier
(let ((af (make-adaptive-frontier 0)))
  (test-assert "make-adaptive-frontier returns vector" (vector? af))
  (test-assert "tau in bounds" (and (>= (adaptive-frontier-tau af) 0) (<= (adaptive-frontier-tau af) 24))))

;; summary
(format #t "~nTests: ~a passed, ~a failed, ~a total~%"
        test-passed test-failed test-count)
(if (> test-failed 0)
    (exit 1)
    (exit 0))
