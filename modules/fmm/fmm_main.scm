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

  ;;; --- module-level diagnostic state ---
  (define current-step-prefix "")
  (define fatal-hook (make-parameter #f))
  (define log-port-param (make-parameter #f))
  (define quiet-param (make-parameter #f))

  (define (report level code message)
    (let* ((effective-code
            (if (string=? current-step-prefix "")
                code
                (string-append current-step-prefix "/" code)))
           (line (sprintf "~a[~a]: ~a" level effective-code message)))
      (unless (and (quiet-param)
                   (or (string=? level "INFO")
                       (string=? level "NOTE")
                       (string=? level "HELP")))
        (printf "~a~%" line))
      (when (log-port-param)
        (fprintf (log-port-param) "~a~%" line))))

  (define (subline-emit line)
    (unless (quiet-param) (printf "~a~%" line))
    (when (log-port-param) (fprintf (log-port-param) "~a~%" line)))

  (define (subline-help text)
    (subline-emit (sprintf "  = help: ~a" text)))

  (define (subline-note text)
    (subline-emit (sprintf "  = note: ~a" text)))

  (define (subline-seealso text)
    (subline-emit (sprintf "  = see also: ~a" text)))

  (define (subline-location path)
    (let ((line (sprintf "  --> ~a" path)))
      (printf "~a~%" line)
      (when (log-port-param) (fprintf (log-port-param) "~a~%" line))))

  (define (info code message)
    (report "INFO" code message))

  (define (note code message)
    (report "NOTE" code message))

  (define (help-line code message)
    (report "HELP" code message))

  (define (fatal code message)
    (report "ERROR" code message)
    (cond
      ((fatal-hook) => (lambda (hook) (hook)))
      (else (exit 1))))

  (define (fatal-at path code message)
    (report "ERROR" code message)
    (subline-location path)
    (cond
      ((fatal-hook) => (lambda (hook) (hook)))
      (else (exit 1))))

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
          (cons 'explain-topic #f)
          (cons 'quiet #f)
          (cons 'verbose #f)
          (cons 'log-file #f)
          (cons 'job-path #f)))

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

  (define (apply-preset config name)
    (cond
      ((string=? name "conservative")
       (config-set (config-set (config-set config 'precision 4) 'order 4) 'frontier-bits 0))
      ((string=? name "balanced")
       config)
      ((string=? name "aggressive")
       (config-set (config-set (config-set config 'precision 16) 'order 16) 'frontier-bits #xFFF))
      (else
       (fatal "CLI_PRESET" (sprintf "Unknown preset ~a; use conservative, balanced, or aggressive." name)))))

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

              ((string=? arg "--frontier-bits")
               (let ((value (parse-nonnegative-integer arg (require-value arg rest))))
                 (loop (cddr rest) (config-set config 'frontier-bits value))))

              ((string=? arg "--iterations")
               (let ((value (parse-positive-integer arg (require-value arg rest))))
                 (loop (cddr rest) (config-set config 'benchmark-iterations value))))

              ((or (string=? arg "-q") (string=? arg "--quiet"))
               (loop (cdr rest) (config-set config 'quiet #t)))

              ((or (string=? arg "-v") (string=? arg "--verbose"))
               (loop (cdr rest) (config-set config 'verbose #t)))

              ((string=? arg "--preset")
               (let ((name (require-value arg rest)))
                 (loop (cddr rest) (apply-preset config name))))

              ((string=? arg "--log-file")
               (let ((path (require-value arg rest)))
                 (loop (cddr rest) (config-set config 'log-file path))))

              ((string=? arg "--job")
               (let ((path (require-value arg rest)))
                 (loop (cddr rest) (config-set (set-mode config 'job) 'job-path path))))

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
             (fatal-at path "INPUT_FORMAT"
                       (sprintf "malformed entry for ~a; expected (key value)" key))))
        (required?
         (fatal-at path "INPUT_FORMAT"
                   (sprintf "missing required field ~a" key)))
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
       (fatal-at path "INPUT_FORMAT"
                 (sprintf "invalid grid point ~a; use (x . y) or (x y)" raw)))))

  (define (normalize-grid raw path)
    (let ((points (sequence->list raw)))
      (if points
          (let ((grid (list->vector (map (lambda (point) (normalize-point point path)) points))))
            (if (> (vector-length grid) 0)
                grid
                (fatal-at path "INPUT_FORMAT" "grid must have at least one grid point")))
          (fatal-at path "INPUT_FORMAT" "field grid must be a list or vector of (x y) or (x . y) points"))))

  (define (normalize-number-sequence raw path field-name expected-length)
    (let ((values (sequence->list raw)))
      (if values
          (if (and (= (length values) expected-length)
                   (every number? values))
              values
              (fatal-at path "INPUT_FORMAT"
                        (sprintf "field ~a must be a numeric list/vector of length ~a" field-name expected-length)))
          (fatal-at path "INPUT_FORMAT"
                    (sprintf "field ~a must be a list or vector" field-name)))))

  (define (normalize-index-sequence raw path field-name limit)
    (let ((values (sequence->list raw)))
      (if values
          (begin
            (for-each
             (lambda (value)
               (unless (and (integer? value) (>= value 0) (< value limit))
                 (fatal-at path "INPUT_FORMAT"
                           (sprintf "field ~a contains out-of-range index ~a (limit ~a)" field-name value limit))))
             values)
            values)
          (fatal-at path "INPUT_FORMAT"
                    (sprintf "field ~a must be a list or vector" field-name)))))

  (define (normalize-hierarchy raw path grid-size)
    (let ((cells (sequence->list raw)))
      (if cells
          (list->vector
           (map (lambda (cell) (normalize-index-sequence cell path 'hierarchy grid-size))
                cells))
          (fatal-at path "INPUT_FORMAT" "field hierarchy must be a list or vector of index-list cells"))))

  (define (read-problem-form path)
    (handle-exceptions exn
      (fatal-at path "INPUT_IO" (sprintf "unable to read file: ~a" exn))
      (with-input-from-file path
        (lambda ()
          (let ((form (read)))
            (if (eof-object? form)
                (fatal-at path "INPUT_FORMAT" "file contains no forms")
                (let ((extra (read)))
                  (if (eof-object? extra)
                      form
                      (fatal-at path "INPUT_FORMAT"
                                "file must contain exactly one top-level form")))))))))

  (define (load-problem-from-file config path)
    (let* ((raw-data (read-problem-form path)))
      (unless (and (list? raw-data) (every problem-entry? raw-data))
        (fatal-at path "INPUT_FORMAT" "top-level form must be an association list of (key value) entries"))
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
              (sprintf "requested ~a threads; current runtime executes with 1 thread." requested-threads))
        (subline-help "pass --threads 1 to suppress this note")
        (subline-note "multi-thread execution is not available in this release slice"))
      (when (> precision order)
        (note "PRECISION001"
              (sprintf "precision target ~a was mapped to effective order ~a." precision (effective-order config)))
        (subline-help (sprintf "pass --order ~a explicitly to skip precision mapping" (effective-order config))))
      (when (not (= theta fmm-default-near-field-cutoff))
        (note "THETA001"
          (sprintf "--theta ~a accepted; kernel evaluates with built-in cutoff ~a." theta fmm-default-near-field-cutoff))
        (subline-note "theta-driven cutoff is planned for a future release slice")
        (subline-note (sprintf "current fixed near-field cutoff is ~a" fmm-default-near-field-cutoff)))))

  (define (print-usage)
    (help-line "USAGE" "hatsu-fmm [mode] [options]")
    (help-line "MODES" "--help, --check-env, --list-caps, --dry-run, --benchmark, --check, --explain TOPIC, --job PATH")
    (subline-note "only one mode may be given per invocation; --job runs multiple steps from a job file")
    (help-line "OPTIONS" "-p, --precision INT    Accuracy target mapped to effective order")
    (help-line "OPTIONS" "-t, --threads INT      Requested worker count; current runtime falls back to 1")
    (help-line "OPTIONS" "--theta FLOAT          Requested admissibility hint; current kernel uses a fixed cutoff")
    (help-line "OPTIONS" "--input PATH           Problem file as a single Scheme form with (grid ...), optional (charges ...), (sources ...), and (hierarchy ...)")
    (help-line "OPTIONS" "--grid-size INT        Generated particle count when no input file is supplied")
    (help-line "OPTIONS" "--order INT            Explicit multipole order before precision mapping")
    (help-line "OPTIONS" "--target-index INT     Target particle index inside the generated grid")
    (help-line "OPTIONS" "--frontier-bits INT    Frontier policy bits for traversal behavior")
    (help-line "OPTIONS" "--iterations INT       Benchmark repetitions")
    (help-line "OPTIONS" "-q, --quiet            Suppress INFO and NOTE output; ERROR lines are always shown")
    (help-line "OPTIONS" "-v, --verbose          Reserved; currently a no-op")
    (help-line "OPTIONS" "--preset NAME          Apply a named option group: conservative, balanced, aggressive")
    (subline-note "individual option flags override --preset values")
    (help-line "OPTIONS" "--log-file PATH        Append all diagnostic output to PATH in addition to stdout")
    (help-line "OPTIONS" "--job PATH             Run a multi-step job from an S-expression job file")
    (help-line "EXAMPLES" "hatsu-fmm --dry-run --grid-size 1000000 -p 12")
    (help-line "EXAMPLES" "hatsu-fmm --input examples/fmm/sample_problem.scm --benchmark --iterations 5")
    (help-line "EXAMPLES" "hatsu-fmm --benchmark --grid-size 4096 --iterations 5")
    (help-line "EXAMPLES" "hatsu-fmm --check")
    (help-line "EXAMPLES" "hatsu-fmm --preset aggressive --benchmark --grid-size 4096")
    (help-line "EXAMPLES" "hatsu-fmm --job examples/fmm/sample_job.scm")
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
       (info "EXPLAIN" "Input files are single Scheme forms containing (grid VALUE) and optional (charges VALUE), (sources VALUE), and (hierarchy VALUE). Lists or vectors are accepted for sequence values.")
       (subline-seealso "--explain check  (validates a file end-to-end)"))
      ((or (string=? topic "precision") (string=? topic "FMM-PRECISION"))
       (info "EXPLAIN" "Precision is an accuracy target in this CLI slice. The runtime maps it to effective-order = max(order, precision).")
       (subline-seealso "--explain threads  (similar stub-vs-future gap)"))
      ((or (string=? topic "threads") (string=? topic "FMM-THREADS"))
       (info "EXPLAIN" "Threads are accepted for interface stability. The current runtime remains single-threaded and emits a NOTE when a larger value is requested.")
       (subline-seealso "--explain precision  (also a stub-capable option)"))
      ((or (string=? topic "theta") (string=? topic "FMM-THETA"))
       (info "EXPLAIN" (sprintf "Theta is recorded in the CLI today, but the current evaluator still uses the fixed near-field cutoff ~a from the kernel." fmm-default-near-field-cutoff))
       (subline-note (sprintf "fixed cutoff value: ~a" fmm-default-near-field-cutoff))
       (subline-seealso "--explain dry-run  (inspect effective parameters without running)"))
      ((or (string=? topic "benchmark") (string=? topic "FMM-BENCHMARK"))
       (info "EXPLAIN" "Benchmark mode measures the current generated-input runtime. It is a system probe, not a claim about external physics workloads.")
       (subline-seealso "--explain dry-run  (payload estimate without evaluation)"))
      ((or (string=? topic "dry-run") (string=? topic "FMM-DRYRUN"))
       (info "EXPLAIN" "Dry-run estimates the payload size and generated workload shape without executing the evaluator.")
       (subline-seealso "--explain benchmark  (actually run and time the evaluator)"))
      ((or (string=? topic "check") (string=? topic "FMM-CHECK"))
       (info "EXPLAIN" "Check mode is a lightweight self-diagnosis: imports, constants, grid generation, hierarchy generation, and one synthetic evaluation.")
       (subline-seealso "--explain input  (input file format)"))
      ((or (string=? topic "job") (string=? topic "FMM-JOB"))
       (info "EXPLAIN" "Job mode reads an S-expression file containing (job \"name\" (step \"name\" field ...) ...) and runs each step sequentially.")
       (subline-note "step fields: mode, grid-size, precision, order, theta, threads, iterations, input, target-index, frontier-bits")
       (subline-seealso "--help  (full option list including --job PATH)"))
      (else
       (fatal "EXPLAIN_UNKNOWN"
              (sprintf "Unknown explain topic: ~a. Try input, precision, threads, theta, benchmark, dry-run, check, or job." topic)))))

  ;;; --- JCL job file support ---

  (define (parse-job-step global-config spec path)
    (unless (and (list? spec)
                 (>= (length spec) 2)
                 (eq? (car spec) 'step)
                 (string? (cadr spec)))
      (fatal "JOB_FORMAT"
             (sprintf "Job file ~a has a malformed step; expected (step \"name\" field ...)" path)))
    (let* ((step-name (cadr spec))
           (fields (cddr spec)))
      (let loop ((fields fields) (cfg (make-default-config)))
        (if (null? fields)
            (cons step-name cfg)
            (let ((field (car fields)))
              (unless (and (list? field) (= (length field) 2) (symbol? (car field)))
                (fatal "JOB_FIELD"
                       (sprintf "Job step ~a in ~a has a malformed field; expected (key value)" step-name path)))
              (let ((key (car field))
                    (val (cadr field)))
                (loop (cdr fields)
                      (case key
                        ((mode)
                         (let ((m (if (symbol? val) val (string->symbol val))))
                           (case m
                             ((compute dry-run benchmark check check-env list-caps explain)
                              (config-set cfg 'mode m))
                             (else
                              (fatal "JOB_MODE"
                                     (sprintf "Step ~a in ~a: unknown mode ~a" step-name path m))))))
                        ((grid-size)     (config-set cfg 'grid-size val))
                        ((precision)     (config-set cfg 'precision val))
                        ((order)         (config-set cfg 'order val))
                        ((theta)         (config-set cfg 'theta val))
                        ((threads)       (config-set cfg 'threads val))
                        ((iterations)    (config-set cfg 'benchmark-iterations val))
                        ((input)         (config-set cfg 'input-path val))
                        ((target-index)  (config-set cfg 'target-index val))
                        ((frontier-bits) (config-set cfg 'frontier-bits val))
                        (else
                         (fatal "JOB_FIELD"
                                (sprintf "Step ~a in ~a: unknown field ~a" step-name path key)))))))))))

  (define (load-job-from-file global-config path)
    (let ((raw (handle-exceptions exn
                 (fatal "JOB_IO" (sprintf "Unable to read job file ~a: ~a" path exn))
                 (with-input-from-file path
                   (lambda ()
                     (let ((form (read)))
                       (if (eof-object? form)
                           (fatal "JOB_FORMAT" (sprintf "Job file ~a is empty" path))
                           form)))))))
      (unless (and (list? raw)
                   (>= (length raw) 2)
                   (eq? (car raw) 'job)
                   (string? (cadr raw)))
        (fatal "JOB_FORMAT"
               (sprintf "Job file ~a must start with (job \"name\" (step ...) ...)" path)))
      (let* ((job-name (cadr raw))
             (step-specs (cddr raw)))
        (when (null? step-specs)
          (fatal "JOB_FORMAT" (sprintf "Job ~a in ~a has no steps" job-name path)))
        (cons job-name
              (map (lambda (spec) (parse-job-step global-config spec path)) step-specs)))))

  (define (run-job global-config)
    (let* ((job-path (config-ref global-config 'job-path))
           (job-data (load-job-from-file global-config job-path))
           (job-name (car job-data))
           (step-list (cdr job-data))
           (total (length step-list))
           (failed 0))
      (info "JOB001" (sprintf "starting job=~a steps=~a" job-name total))
      (for-each
       (lambda (step-pair)
         (let* ((step-name (car step-pair))
                (step-config (cdr step-pair))
                (ok #t))
           (call-with-current-continuation
            (lambda (bail)
              (dynamic-wind
               (lambda () (set! current-step-prefix step-name))
               (lambda ()
                 (parameterize ((fatal-hook (lambda ()
                                              (set! ok #f)
                                              (bail #f))))
                   (case (config-ref step-config 'mode)
                     ((compute)    (run-compute step-config))
                     ((dry-run)    (run-dry-run step-config))
                     ((benchmark)  (run-benchmark step-config))
                     ((check)      (run-self-check step-config))
                     ((check-env)  (run-check-env))
                     ((list-caps)  (run-list-caps))
                     ((explain)    (run-explain (config-ref step-config 'explain-topic)))
                     (else
                      (fatal "JOB_MODE"
                             (sprintf "Step ~a requested unsupported mode ~a"
                                      step-name (config-ref step-config 'mode)))))))
               (lambda () (set! current-step-prefix "")))))
           (unless ok (set! failed (+ failed 1)))))
       step-list)
      (info "JOB002" (sprintf "job=~a completed steps=~a failed=~a" job-name total failed))
      (exit (if (= failed 0) 0 1))))

  (define (main args)
    (let ((config (if (null? args)
                      (set-mode (make-default-config) 'help)
                      (parse-args args))))
      (let* ((log-file-path (config-ref config 'log-file))
             (log-port (and log-file-path
                            (open-output-file log-file-path #:append #t))))
        (parameterize ((quiet-param (config-ref config 'quiet))
                       (log-port-param log-port))
          (dynamic-wind
           (lambda () #f)
           (lambda ()
             (case (config-ref config 'mode)
               ((help)      (print-usage))
               ((check-env) (run-check-env))
               ((list-caps) (run-list-caps))
               ((dry-run)   (run-dry-run config))
               ((benchmark) (run-benchmark config))
               ((check)     (run-self-check config))
               ((explain)   (run-explain (config-ref config 'explain-topic)))
               ((job)       (run-job config))
               (else        (run-compute config))))
           (lambda ()
             (when log-port (close-output-port log-port))))))))

  (main (command-line-arguments)))