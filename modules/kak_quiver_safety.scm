;;; === modules/kak_quiver_safety.scm ===

(module kak_quiver_safety
  (analyze-frontier-as-quiver
   classify-quiver-type
   kak-apply-quiver-safe
   estimate-quiver-speedup)

  (import scheme chicken.base srfi-1 srfi-69)
  (import kak_optimization)

  ;; [Implementation from above sections]
  
  (define (kak-apply-quiver-safe 
           graph sources context
           #:aggressive #f)
    "Apply KAK with quiver-theoretic guarantees"
    
    (let loop ((frontier init-frontier) (step 0) (max-steps (kak-context-steps context)))
      
      (if (>= step max-steps)
        dist-table
        
        ;; Analyze frontier as quiver
        (let ((quiver-type (analyze-frontier-as-quiver frontier graph)))
          
          (case quiver-type
            ;; Dynkin: safe to vectorize
            ((dynkin-a dynkin-d dynkin-e)
             (let ((vectorized-result 
                    (kak-apply-vectorized-safe 
                     graph frontier context step)))
               (loop vectorized-result (+ step 1) max-steps)))
            
            ;; Tame: semi-vectorize
            ((affine-a affine-d affine-e)
             (let ((semi-result
                    (kak-apply-semi-vectorized
                     graph frontier context step)))
               (loop semi-result (+ step 1) max-steps)))
            
            ;; Wild: only if aggressive mode
            ((wild)
             (if aggressive
               ;; Risky: try vectorize anyway
               (let ((risky-result
                      (kak-apply-vectorized-risky
                       graph frontier context step)))
                 (loop risky-result (+ step 1) max-steps))
               ;; Safe: fallback to sequential
               (let ((safe-result
                      (kak-apply-cached-step
                       graph frontier context step)))
                 (loop safe-result (+ step 1) max-steps))))
            
            ;; Unknown: be conservative
            (else
             (let ((conservative-result
                    (kak-apply-cached-step
                     graph frontier context step)))
               (loop conservative-result (+ step 1) max-steps)))))))))