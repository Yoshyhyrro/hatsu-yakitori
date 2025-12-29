;;; Quick test to check octad count
(include-relative "core/cross_validation.scm")
(import scheme (chicken base) (chicken format))
(import witt_foundation)

(define (check-octad-count)
  (let* ((ctx (make-witt-context))
         (octads (vector-ref ctx 1))
         (count (vector-length octads)))
    (printf "Octads generated: ~a / 759 expected~%" count)
    (printf "Status: ~a~%"
            (if (= count 759)
                "PASS"
                (string-append "FAIL - Missing "
                              (number->string (- 759 count))
                              " octads")))))

(check-octad-count)