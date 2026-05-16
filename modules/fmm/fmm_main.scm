;;; ---------------------------------------------------------------------------
;;; Fast Multipole Method (FMM) Command-Line Interface
;;; ---------------------------------------------------------------------------

(module fmm_main *
  (import scheme)
  (import (chicken base)
      (chicken bitwise)
      (chicken condition)
      (chicken format)
      (chicken process-context)
      (chicken time)
      (chicken sort)
      (chicken flonum)
      machine_constants
      srfi-1
      srfi-69)

  (include "modules/fmm/fmm_kernel_impl.scm")

  (define fmm-cli-version "0.1.0")
  (define default-grid-size 64)
  (define default-order 8)
  (define default-precision 8)
  (define default-threads 1)
  (define default-theta fmm-default-near-field-cutoff)
  (define default-target-index 0)
  (define default-frontier-bits 0)
  (define default-benchmark-iterations 3)

  (define (report level code message)
    (printf "~a[~a]: ~a~%" level code message))

  (define (info code message)
    (report "INFO" code message))

  (define (note code message)
    (report "NOTE" code message))

  (define (help-line code message)
    (report "HELP" code message))

  (define (fatal code message)
    (report "ERROR" code message)
    (exit 1))

  (define (make-default-config)
    (list (cons 'mode 'compute)
          (cons 'precision default-precision)
          (cons 'threads default-threads)
          (cons 'theta default-theta)
          (cons 'input-path #f)
          (cons 'grid-size default-grid-size)
          (cons 'order default-order)
          (cons 'target-index default-target-index)
          (cons 'frontier-bits default-frontier-bits)
          (cons 'benchmark-iterations default-benchmark-iterations)
          (cons 'explain-topic #f)))

  (define (config-ref config key)
    (let ((entry (assq key config)))
      (if entry
          (cdr entry)
          (fatal "CLI_INTERNAL" (sprintf "Missing config key: ~a" key)))))

  (define (config-set config key value)
    (map (lambda (entry)
           (if (eq? (car entry) key)
               (cons key value)
               entry))
         config))

  (define (set-mode config mode)
    (let ((current (config-ref config 'mode)))
      (if (or (eq? current 'compute) (eq? current mode))
          (config-set config 'mode mode)
          (fatal "CLI_MODE"
                 (sprintf "Conflicting modes requested: ~a and ~a" current mode)))))

  (define (require-value option rest)
    (if (null? (cdr rest))
        (fatal "CLI_ARG" (sprintf "Option ~a requires a value." option))
        (cadr rest)))

  (define (parse-integer option raw)
    (let ((value (string->number raw)))
      (if (and value (integer? value))
          value
          (fatal "CLI_PARSE" (sprintf "Option ~a expects an integer, got ~a" option raw)))))

  (define (parse-positive-integer option raw)
    (let ((value (parse-integer option raw)))
      (if (> value 0)
          value
          (fatal "CLI_RANGE" (sprintf "Option ~a expects a positive integer, got ~a" option raw)))))

  (define (parse-nonnegative-integer option raw)
    (let ((value (parse-integer option raw)))
      (if (>= value 0)
          value
          (fatal "CLI_RANGE" (sprintf "Option ~a expects a non-negative integer, got ~a" option raw)))))

  (define (parse-real option raw)
    (let ((value (string->number raw)))
      (if (number? value)
          value
          (fatal "CLI_PARSE" (sprintf "Option ~a expects a real number, got ~a" option raw)))))

  (define (parse-args args)
    (let loop ((rest args) (config (make-default-config)))
      (if (null? rest)
          config
          (let ((arg (car rest)))
            (cond
              ((or (string=? arg "help") (string=? arg "--help"))
               (loop (cdr rest) (set-mode config 'help)))

              ((or (string=? arg "check-env") (string=? arg "--check-env"))
               (loop (cdr rest) (set-mode config 'check-env)))

              ((or (string=? arg "list-caps") (string=? arg "--list-caps"))
               (loop (cdr rest) (set-mode config 'list-caps)))

              ((or (string=? arg "dry-run") (string=? arg "--dry-run"))
               (loop (cdr rest) (set-mode config 'dry-run)))

              ((or (string=? arg "benchmark") (string=? arg "--benchmark"))
               (loop (cdr rest) (set-mode config 'benchmark)))

              ((or (string=? arg "check") (string=? arg "--check"))
               (loop (cdr rest) (set-mode config 'check)))

              ((string=? arg "--explain")
               (let ((topic (require-value arg rest)))
                 (loop (cddr rest)
                       (config-set (set-mode config 'explain) 'explain-topic topic))))

              ((or (string=? arg "-p") (string=? arg "--precision"))
               (let ((value (parse-positive-integer arg (require-value arg rest))))
                 (loop (cddr rest) (config-set config 'precision value))))

              ((or (string=? arg "-t") (string=? arg "--threads"))
               (let ((value (parse-positive-integer arg (require-value arg rest))))
                 (loop (cddr rest) (config-set config 'threads value))))

              ((string=? arg "--theta")
               (let ((value (parse-real arg (require-value arg rest))))
                 (loop (cddr rest) (config-set config 'theta value))))

              ((string=? arg "--input")
               (let ((value (require-value arg rest)))
                 (loop (cddr rest) (config-set config 'input-path value))))

              ((string=? arg "--grid-size")
               (let ((value (parse-positive-integer arg (require-value arg rest))))
                 (loop (cddr rest) (config-set config 'grid-size value))))

              ((string=? arg "--order")
               (let ((value (parse-positive-integer arg (require-value arg rest))))
                 (loop (cddr rest) (config-set config 'order value))))

              ((string=? arg "--target-index")
               (let ((value (parse-nonnegative-integer arg (require-value arg rest))))
                 (loop (cddr rest) (config-set config 'target-index value))))

              ((or (string=? arg "--frontier-bits")
                   (string=? arg "--golay-bits"))
               (let ((value (parse-nonnegative-integer arg (require-value arg rest))))
                 (loop (cddr rest) (config-set config 'frontier-bits value))))

              ((string=? arg "--iterations")
               (let ((value (parse-positive-integer arg (require-value arg rest))))
                 (loop (cddr rest) (config-set config 'benchmark-iterations value))))

              (else
               (fatal "CLI_UNKNOWN" (sprintf "Unknown argument: ~a" arg))))))))

  (define (effective-order config)
    (max (config-ref config 'order) (config-ref config 'precision)))

  (define (ceiling-div numerator denominator)
    (quotient (+ numerator (- denominator 1)) denominator))

  (define (make-hierarchy grid-size)
    (let ((chunk-size (max 1 (ceiling-div grid-size 8))))
      (let loop ((start 0) (acc '()))
        (if (>= start grid-size)
            (list->vector (reverse acc))
            (let* ((end (min grid-size (+ start chunk-size)))
                   (count (- end start)))
              (loop end (cons (iota count start) acc)))))))

  (define (sequence->list raw)
    (cond
      ((list? raw) raw)
      ((vector? raw) (vector->list raw))
      (else #f)))

  (define (problem-entry? entry)
    (and (pair? entry)
         (symbol? (car entry))
         (pair? (cdr entry))
         (null? (cddr entry))))

  (define (problem-field data key path required?)
    (let ((entry (assq key data)))
      (cond
        (entry
         (if (problem-entry? entry)
             (cadr entry)
             (fatal "INPUT_FORMAT"
                    (sprintf "Input file ~a has a malformed entry for ~a. Use (key value)." path key))))
        (required?
         (fatal "INPUT_FORMAT"
                (sprintf "Input file ~a is missing required field ~a." path key)))
        (else #f))))

  (define (normalize-point raw path)
    (cond
      ((and (pair? raw)
            (number? (car raw))
            (number? (cdr raw)))
       (cons (car raw) (cdr raw)))
      ((and (pair? raw)
            (pair? (cdr raw))
            (null? (cddr raw))
            (number? (car raw))
            (number? (cadr raw)))
       (cons (car raw) (cadr raw)))
      (else
       (fatal "INPUT_FORMAT"
              (sprintf "Input file ~a has an invalid grid point ~a. Use (x . y) or (x y)." path raw)))))

  (define (normalize-grid raw path)
    (let ((points (sequence->list raw)))
      (if points
          (let ((grid (list->vector (map (lambda (point) (normalize-point point path)) points))))
            (if (> (vector-length grid) 0)
                grid
                (fatal "INPUT_FORMAT"
                       (sprintf "Input file ~a must provide at least one grid point." path))))
          (fatal "INPUT_FORMAT"
                 (sprintf "Input file ~a field grid must be a list or vector of points." path)))))

  (define (normalize-number-sequence raw path field-name expected-length)
    (let ((values (sequence->list raw)))
      (if values
          (if (and (= (length values) expected-length)
                   (every number? values))
              values
              (fatal "INPUT_FORMAT"
                     (sprintf "Input file ~a field ~a must be a numeric list or vector of length ~a." path field-name expected-length)))
          (fatal "INPUT_FORMAT"
                 (sprintf "Input file ~a field ~a must be a list or vector." path field-name)))))

  (define (normalize-index-sequence raw path field-name limit)
    (let ((values (sequence->list raw)))
      (if values
          (begin
            (for-each
             (lambda (value)
               (unless (and (integer? value) (>= value 0) (< value limit))
                 (fatal "INPUT_FORMAT"
                        (sprintf "Input file ~a field ~a contains out-of-range index ~a." path field-name value))))
             values)
            values)
          (fatal "INPUT_FORMAT"
                 (sprintf "Input file ~a field ~a must be a list or vector." path field-name)))))

  (define (normalize-hierarchy raw path grid-size)
    (let ((cells (sequence->list raw)))
      (if cells
          (list->vector
           (map (lambda (cell) (normalize-index-sequence cell path 'hierarchy grid-size))
                cells))
          (fatal "INPUT_FORMAT"
                 (sprintf "Input file ~a field hierarchy must be a list or vector of cells." path)))))

  (define (read-problem-form path)
    (handle-exceptions exn
      (fatal "INPUT_IO" (sprintf "Unable to read input file ~a: ~a" path exn))
      (with-input-from-file path
        (lambda ()
          (let ((form (read)))
            (if (eof-object? form)
                (fatal "INPUT_FORMAT" (sprintf "Input file ~a is empty." path))
                (let ((extra (read)))
                  (if (eof-object? extra)
                      form
                      (fatal "INPUT_FORMAT"
                             (sprintf "Input file ~a must contain exactly one top-level form." path))))))))))

  (define (load-problem-from-file config path)
    (let* ((raw-data (read-problem-form path)))
      (unless (and (list? raw-data) (every problem-entry? raw-data))
        (fatal "INPUT_FORMAT"
               (sprintf "Input file ~a must be an association list of (key value) entries." path)))
      (let* ((grid (normalize-grid (problem-field raw-data 'grid path #t) path))
             (grid-size (vector-length grid))
             (charges-raw (problem-field raw-data 'charges path #f))
             (charges (if charges-raw
                          (normalize-number-sequence charges-raw path 'charges grid-size)
                          (make-list grid-size 1.0)))
             (sources-raw (problem-field raw-data 'sources path #f))
             (sources (if sources-raw
                          (normalize-index-sequence sources-raw path 'sources grid-size)
                          (iota grid-size)))
             (hierarchy-raw (problem-field raw-data 'hierarchy path #f))
             (hierarchy (if hierarchy-raw
                            (normalize-hierarchy hierarchy-raw path grid-size)
                            (make-hierarchy grid-size)))
             (target-index (modulo (config-ref config 'target-index) grid-size))
             (order (effective-order config))
               (frontier-bits (config-ref config 'frontier-bits)))
             (values 'file path grid hierarchy sources charges target-index order frontier-bits))))

  (define (approximate-memory-bytes grid-size order cell-count)
    (let ((grid-bytes (* grid-size 16))
          (charge-bytes (* grid-size 8))
          (index-bytes (* grid-size 8))
          (multipole-bytes (* cell-count order 16)))
      (+ grid-bytes charge-bytes index-bytes multipole-bytes)))

  (define (emit-runtime-notes config)
    (let ((requested-threads (config-ref config 'threads))
          (theta (config-ref config 'theta))
          (precision (config-ref config 'precision))
          (order (config-ref config 'order)))
      (when (> requested-threads 1)
        (note "THREADS001"
              (sprintf "Requested ~a threads; current runtime executes with 1 thread." requested-threads)))
      (when (> precision order)
        (note "PRECISION001"
              (sprintf "Precision target ~a was mapped to effective order ~a." precision (effective-order config))))
      (when (not (= theta fmm-default-near-field-cutoff))
        (note "THETA001"
          (sprintf "--theta is accepted for interface stability; the current kernel still evaluates with the built-in cutoff ~a." fmm-default-near-field-cutoff)))))

  (define (print-usage)
    (help-line "USAGE" "hatsu-fmm [mode] [options]")
    (help-line "MODES" "--help, --check-env, --list-caps, --dry-run, --benchmark, --check, --explain TOPIC")
    (help-line "OPTIONS" "-p, --precision INT    Accuracy target mapped to effective order")
    (help-line "OPTIONS" "-t, --threads INT      Requested worker count; current runtime falls back to 1")
    (help-line "OPTIONS" "--theta FLOAT          Requested admissibility hint; current kernel uses a fixed cutoff")
    (help-line "OPTIONS" "--input PATH           Problem file as a single Scheme form with (grid ...), optional (charges ...), (sources ...), and (hierarchy ...)")
    (help-line "OPTIONS" "--grid-size INT        Generated particle count when no input file is supplied")
    (help-line "OPTIONS" "--order INT            Explicit multipole order before precision mapping")
    (help-line "OPTIONS" "--target-index INT     Target particle index inside the generated grid")
    (help-line "OPTIONS" "--frontier-bits INT    Frontier policy bits for traversal behavior")
    (help-line "OPTIONS" "--iterations INT       Benchmark repetitions")
    (help-line "EXAMPLES" "hatsu-fmm --dry-run --grid-size 1000000 -p 12")
    (help-line "EXAMPLES" "hatsu-fmm --input examples/fmm/sample_problem.scm --benchmark --iterations 5")
    (help-line "EXAMPLES" "hatsu-fmm --benchmark --grid-size 4096 --iterations 5")
    (help-line "EXAMPLES" "hatsu-fmm --check")
    (note "INPUT001" "Without --input, the CLI falls back to a generated synthetic problem."))

  (define (run-check-env)
    (let ((sample-grid (make-goppa-grid 2 5 8)))
      (info "ENV001" (sprintf "fmm-cli-version=~a" fmm-cli-version))
      (info "ENV002" (sprintf "machine-epsilon=~a" machine-epsilon))
      (info "ENV003" (sprintf "kernel-import=ok, sample-grid-size=~a" (vector-length sample-grid)))
      (info "ENV004" (sprintf "default-near-field-cutoff=~a" fmm-default-near-field-cutoff))
      (info "ENV005" "problem-file-input=enabled")))

  (define (run-list-caps)
    (info "CAPS001" "command-modes=compute,help,check-env,list-caps,dry-run,benchmark,check,explain")
    (info "CAPS002" "runtime=CHICKEN Scheme")
    (info "CAPS003" (sprintf "threading=requested-via-cli,fallback=1"))
    (info "CAPS004" (sprintf "near-field-cutoff=fixed-at-~a" fmm-default-near-field-cutoff))
    (info "CAPS005" "precision-control=mapped-to-effective-order")
    (info "CAPS006" "blas=not-linked")
    (info "CAPS007" "simd=not-detected")
    (info "CAPS008" "c-abi=not-packaged-in-this-slice")
    (info "CAPS009" "input=generated-or-s-expression-file"))

  (define (make-synthetic-problem config)
    (let* ((grid-size (config-ref config 'grid-size))
           (target-index (modulo (config-ref config 'target-index) grid-size))
           (order (effective-order config))
           (grid (make-goppa-grid 2 5 grid-size))
           (hierarchy (make-hierarchy grid-size))
           (sources (iota grid-size))
           (charges (make-list grid-size 1.0))
           (frontier-bits (config-ref config 'frontier-bits)))
         (values grid hierarchy sources charges target-index order frontier-bits)))

  (define (resolve-problem config)
    (let ((input-path (config-ref config 'input-path)))
      (if input-path
          (load-problem-from-file config input-path)
          (call-with-values
              (lambda () (make-synthetic-problem config))
            (lambda (grid hierarchy sources charges target-index order frontier-bits)
              (values 'generated #f grid hierarchy sources charges target-index order frontier-bits))))))

  (define (problem-source-label input-path)
    (if input-path
        (sprintf "file:~a" input-path)
        "generated"))

  (define (evaluate-problem-values grid hierarchy sources charges target-index order frontier-bits)
    (cartan-fmm-evaluate grid hierarchy sources charges target-index order frontier-bits))

  (define (run-compute config)
    (call-with-values
        (lambda () (resolve-problem config))
      (lambda (origin input-path grid hierarchy sources charges target-index order frontier-bits)
        (emit-runtime-notes config)
        (info "RUN001"
              (sprintf "mode=compute input=~a grid-size=~a effective-order=~a target-index=~a frontier-bits=~a"
                       (problem-source-label input-path)
                       (vector-length grid)
                       order
                       target-index
                       frontier-bits))
        (let ((result (evaluate-problem-values grid hierarchy sources charges target-index order frontier-bits)))
          (info "RUN002" (sprintf "potential.real=~a" (car result)))
          (info "RUN003" (sprintf "potential.imag=~a" (cdr result)))))))

  (define (run-benchmark config)
    (call-with-values
        (lambda () (resolve-problem config))
      (lambda (origin input-path grid hierarchy sources charges target-index order frontier-bits)
        (let* ((iterations (config-ref config 'benchmark-iterations))
               (start-time (current-milliseconds))
               (last-result #f))
          (emit-runtime-notes config)
          (note "BENCH001" "Benchmark mode measures the current Scheme runtime on the resolved problem payload.")
          (do ((i 0 (+ i 1)))
              ((= i iterations))
            (set! last-result (evaluate-problem-values grid hierarchy sources charges target-index order frontier-bits)))
          (let* ((elapsed (- (current-milliseconds) start-time))
                 (average (/ elapsed iterations)))
            (info "BENCH002"
                  (sprintf "iterations=~a input=~a grid-size=~a elapsed-ms=~a avg-ms=~a"
                           iterations
                           (problem-source-label input-path)
                           (vector-length grid)
                           elapsed
                           average))
            (when last-result
              (info "BENCH003" (sprintf "last-result.real=~a" (car last-result)))
              (info "BENCH004" (sprintf "last-result.imag=~a" (cdr last-result)))))))))

  (define (run-self-check config)
    (let ((passed 0)
          (failed 0))
      (define (record-check ok code success-message failure-message)
        (if ok
            (begin
              (set! passed (+ passed 1))
              (info code success-message))
            (begin
              (set! failed (+ failed 1))
              (report "ERROR" code failure-message))))

      (record-check (> machine-epsilon 0)
                    "CHECK001"
                    "machine-epsilon is available and positive"
                    "machine-epsilon must be positive")

      (record-check (> fmm-default-near-field-cutoff 0)
                    "CHECK002"
                    "near-field cutoff constant is available"
                    "near-field cutoff constant must be positive")

      (let ((grid (make-goppa-grid 2 5 8)))
        (record-check (= (vector-length grid) 8)
                      "CHECK003"
                      "grid generation returned the expected particle count"
                      "grid generation returned an unexpected particle count"))

      (let ((hierarchy (make-hierarchy 32)))
        (record-check (> (vector-length hierarchy) 0)
                      "CHECK004"
                      "hierarchy generation produced at least one cell"
                      "hierarchy generation produced no cells"))

      (call-with-values
          (lambda () (resolve-problem config))
        (lambda (origin input-path grid hierarchy sources charges target-index order frontier-bits)
          (let ((result (evaluate-problem-values grid hierarchy sources charges target-index order frontier-bits)))
            (record-check (and (pair? result)
                               (number? (car result))
                               (number? (cdr result)))
                          "CHECK005"
                          "FMM evaluation returned a numeric complex pair"
                          "FMM evaluation did not return a numeric complex pair"))))

      (info "CHECK006" (sprintf "summary passed=~a failed=~a" passed failed))
      (exit (if (= failed 0) 0 1))))

  (define (run-dry-run config)
    (call-with-values
        (lambda () (resolve-problem config))
      (lambda (origin input-path grid hierarchy sources charges target-index order frontier-bits)
        (let* ((grid-size (vector-length grid))
               (cell-count (vector-length hierarchy))
               (bytes (approximate-memory-bytes grid-size order cell-count)))
          (emit-runtime-notes config)
          (info "DRYRUN001" "No FMM evaluation was executed.")
          (info "DRYRUN002"
                (sprintf "input=~a grid-size=~a source-count=~a charge-count=~a effective-order=~a target-index=~a cells=~a"
                         (problem-source-label input-path)
                         grid-size
                         (length sources)
                         (length charges)
                         order
                         target-index
                         cell-count))
          (info "DRYRUN003"
                (sprintf "approximate-payload-bytes=~a (~a MiB)"
                         bytes
                         (/ bytes 1048576.0)))
          (note "DRYRUN004" "Estimate excludes Scheme object headers, allocator overhead, and import-library metadata.")))))

  (define (run-explain topic)
    (cond
      ((or (string=? topic "input") (string=? topic "FMM-INPUT"))
       (info "EXPLAIN" "Input files are single Scheme forms containing (grid VALUE) and optional (charges VALUE), (sources VALUE), and (hierarchy VALUE). Lists or vectors are accepted for sequence values."))
      ((or (string=? topic "precision") (string=? topic "FMM-PRECISION"))
       (info "EXPLAIN" "Precision is an accuracy target in this CLI slice. The runtime maps it to effective-order = max(order, precision)."))
      ((or (string=? topic "threads") (string=? topic "FMM-THREADS"))
       (info "EXPLAIN" "Threads are accepted for interface stability. The current runtime remains single-threaded and emits a NOTE when a larger value is requested."))
      ((or (string=? topic "theta") (string=? topic "FMM-THETA"))
       (info "EXPLAIN" (sprintf "Theta is recorded in the CLI today, but the current evaluator still uses the fixed near-field cutoff ~a from the kernel." fmm-default-near-field-cutoff)))
      ((or (string=? topic "benchmark") (string=? topic "FMM-BENCHMARK"))
       (info "EXPLAIN" "Benchmark mode measures the current generated-input runtime. It is a system probe, not a claim about external physics workloads."))
      ((or (string=? topic "dry-run") (string=? topic "FMM-DRYRUN"))
       (info "EXPLAIN" "Dry-run estimates the payload size and generated workload shape without executing the evaluator."))
      ((or (string=? topic "check") (string=? topic "FMM-CHECK"))
       (info "EXPLAIN" "Check mode is a lightweight self-diagnosis: imports, constants, grid generation, hierarchy generation, and one synthetic evaluation."))
      (else
       (fatal "EXPLAIN_UNKNOWN"
              (sprintf "Unknown explain topic: ~a. Try input, precision, threads, theta, benchmark, dry-run, or check." topic)))))

  (define (main args)
    (let ((config (if (null? args)
                      (set-mode (make-default-config) 'help)
                      (parse-args args))))
      (case (config-ref config 'mode)
        ((help)
         (print-usage))
        ((check-env)
         (run-check-env))
        ((list-caps)
         (run-list-caps))
        ((dry-run)
         (run-dry-run config))
        ((benchmark)
         (run-benchmark config))
        ((check)
         (run-self-check config))
        ((explain)
         (run-explain (config-ref config 'explain-topic)))
        (else
         (run-compute config)))))

  (main (command-line-arguments)))