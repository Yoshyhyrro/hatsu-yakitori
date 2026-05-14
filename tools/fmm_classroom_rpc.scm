(module tools.fmm.classroom-rpc
  (handle-request
   response-field
   sample-far-request
   sample-near-request
   run-classroom-demo)

  (import (scheme)
          (chicken base)
          (chicken format))

  (define epsilon 1.0e-9)

  ;; A tiny request/response model that keeps only the near-vs-far idea from FMM.
  (define sample-near-request
    '((request-id . "near-1")
      (method . evaluate)
      (target . (0.25 0.0))
      (sources . ((0.0 0.0 2.0)
                  (0.5 0.0 1.0)))
      (threshold . 0.6)))

  (define sample-far-request
    '((request-id . "far-1")
      (method . evaluate)
      (target . (3.0 0.0))
      (sources . ((0.0 0.0 2.0)
                  (0.5 0.0 1.0)))
      (threshold . 0.6)))

  (define (response-field response key)
    (let ((entry (assq key response)))
      (and entry (cdr entry))))

  (define (request-field request key default)
    (let ((entry (assq key request)))
      (if entry (cdr entry) default)))

  (define (all-items? predicate items)
    (let loop ((rest items))
      (or (null? rest)
          (and (predicate (car rest))
               (loop (cdr rest))))))

  (define (point2? value)
    (and (list? value)
         (= (length value) 2)
         (all-items? number? value)))

  (define (source3? value)
    (and (list? value)
         (= (length value) 3)
         (all-items? number? value)))

  (define (point-distance p1 p2)
    (sqrt (+ (expt (- (car p1) (car p2)) 2)
             (expt (- (cadr p1) (cadr p2)) 2))))

  (define (safe-distance p1 p2)
    (max epsilon (point-distance p1 p2)))

  (define (source->point source)
    (list (car source) (cadr source)))

  (define (source-charge source)
    (caddr source))

  (define (cluster-center sources)
    (let loop ((rest sources)
               (sum-x 0.0)
               (sum-y 0.0)
               (count 0.0))
      (if (null? rest)
          (list (/ sum-x count) (/ sum-y count))
          (let ((source (car rest)))
            (loop (cdr rest)
                  (+ sum-x (car source))
                  (+ sum-y (cadr source))
                  (+ count 1.0))))))

  (define (total-charge sources)
    (let loop ((rest sources) (sum 0.0))
      (if (null? rest)
          sum
          (loop (cdr rest) (+ sum (source-charge (car rest)))))))

  (define (direct-potential target sources)
    (let loop ((rest sources) (sum 0.0))
      (if (null? rest)
          sum
          (let* ((source (car rest))
                 (distance (safe-distance target (source->point source)))
                 (term (/ (source-charge source) distance)))
            (loop (cdr rest) (+ sum term))))))

  (define (far-potential target center sources)
    (/ (total-charge sources)
       (safe-distance target center)))

  (define (error-response request-id message)
    `((status . error)
      (request-id . ,request-id)
      (message . ,message)))

  (define (ok-response request-id mode center center-distance sources potential)
    `((status . ok)
      (request-id . ,request-id)
      (mode . ,mode)
      (source-count . ,(length sources))
      (total-charge . ,(total-charge sources))
      (cluster-center . ,center)
      (center-distance . ,center-distance)
      (potential . ,potential)))

  (define (valid-request? request)
    (let ((method (request-field request 'method #f))
          (target (request-field request 'target #f))
          (sources (request-field request 'sources #f))
          (threshold (request-field request 'threshold #f)))
      (and (eq? method 'evaluate)
           (point2? target)
           (list? sources)
           (not (null? sources))
           (all-items? source3? sources)
           (number? threshold)
           (> threshold 0))))

  (define (handle-request request)
    (let ((request-id (request-field request 'request-id "demo")))
      (if (not (valid-request? request))
          (error-response request-id "request must contain method, target, sources, and positive threshold")
          (let* ((target (request-field request 'target '()))
                 (sources (request-field request 'sources '()))
                 (threshold (request-field request 'threshold 0.0))
                 (center (cluster-center sources))
                 (center-distance (point-distance target center))
                 (mode (if (< center-distance threshold) 'near 'far))
                 (potential (if (eq? mode 'near)
                                (direct-potential target sources)
                                (far-potential target center sources))))
            (ok-response request-id mode center center-distance sources potential)))))

  (define (mode-explanation mode)
    (if (eq? mode 'near)
        "near: target is close, so we add each source one by one."
        "far: target is far away, so we replace the group by one cluster."))

  (define (print-demo-case title request)
    (let* ((response (handle-request request))
           (mode (response-field response 'mode)))
      (printf "~a\n" title)
      (printf "Client request:\n")
      (write request)
      (newline)
      (printf "Server response:\n")
      (write response)
      (newline)
      (when mode
        (printf "Explanation: ~a\n" (mode-explanation mode)))
      (newline)))

  (define (run-classroom-demo)
    (printf "=== Tiny FMM Classroom RPC Demo ===\n\n")
    (printf "The server receives one request and returns one response.\n")
    (printf "It decides between NEAR and FAR, just like a tiny FMM lesson.\n\n")
    (print-demo-case "Case 1: near field" sample-near-request)
    (print-demo-case "Case 2: far field" sample-far-request)))