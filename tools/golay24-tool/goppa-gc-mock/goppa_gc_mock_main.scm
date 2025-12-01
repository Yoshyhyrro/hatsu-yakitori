;; tools/golay24-tool/goppa-gc-mock/goppa_gc_mock_main.scm
(import goppa_gc_mock)

(define (main args)
  (printf "Goppa GC Toxic Mock Generator~%")
  (let ((seed (if (null? args) 
                  #x123
                  (string->number (car args) 16))))
    (let ((g (make-toxic-object-graph seed 100)))
      (printf "Toxicity: ~,3f~%" (toxic-graph-toxicity g))
      (let ((vuln (analyze-gc-vulnerability g)))
        (printf "Attack surface: ~a~%" 
                (cdr (assoc 'attack-surface vuln)))))))