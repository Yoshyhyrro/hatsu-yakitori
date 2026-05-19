;;; ---------------------------------------------------------------------------
;;; hatsu-fmm sample job file
;;;
;;; Run with:
;;;   hatsu-fmm --job examples/fmm/sample_job.scm
;;;
;;; Format:
;;;   (job "name"
;;;     (step "step-name"
;;;       (key value) ...)
;;;     ...)
;;;
;;; Supported step keys:
;;;   mode            — compute | dry-run | benchmark | check | check-env | list-caps | explain
;;;   grid-size       — integer
;;;   precision       — integer
;;;   order           — integer
;;;   theta           — real
;;;   threads         — integer
;;;   iterations      — integer (benchmark repetitions)
;;;   input           — string path to a problem S-expression file
;;;   target-index    — non-negative integer
;;;   frontier-bits   — non-negative integer
;;; ---------------------------------------------------------------------------

(job "benchmark-sweep"

  (step "dry-run-baseline"
    (mode dry-run)
    (grid-size 64))

  (step "bench-small"
    (mode benchmark)
    (grid-size 64)
    (iterations 5))

  (step "bench-medium"
    (mode benchmark)
    (grid-size 512)
    (precision 12)
    (iterations 3))

  (step "bench-from-file"
    (mode benchmark)
    (input "examples/fmm/sample_problem.scm")
    (iterations 3))

  (step "self-check"
    (mode check)))
