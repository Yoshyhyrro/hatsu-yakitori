;; ============================================================
;; tools/golay24-tool/golay24_main.scm
;; ============================================================
(include-relative "../../core/machine_constants.scm")
(include-relative "../../core/golay_frontier.scm")
(import scheme)
(import (chicken base)
        (chicken format)
        (chicken string)
        (chicken process-context))
(import machine_constants)
(import golay_frontier)

;; ============================================================
;; Helper: Format hex with padding
;; ============================================================

(define (format-hex-padded n width)
  "Format number as hex with zero padding"
  (let ((hex-str (number->string n 16)))
    (let ((pad-needed (max 0 (- width (string-length hex-str)))))
      (string-append (make-string pad-needed #\0) hex-str))))

;; ============================================================
;; Helper: String prefix check
;; ============================================================

(define (has-prefix? str prefix)
  "Check if string starts with prefix"
  (and (>= (string-length str) (string-length prefix))
       (string=? (substring str 0 (string-length prefix)) prefix)))

;; ============================================================
;; Helper: Display frontier information
;; ============================================================

(define (display-frontier-info frontier)
  "Display information about an adaptive frontier"
  (let ((tau (adaptive-frontier-tau frontier))
        (mode (adaptive-frontier-mode frontier))
        (codeword (adaptive-frontier-codeword frontier)))
    (printf "Frontier Information:~%")
    (printf "  Codeword: 0x~a~%" (format-hex-padded codeword 6))
    (printf "  Tau (t): ~a / 24~%" tau)
    (printf "  Normalized: ~a~%" (exact->inexact (/ tau 24)))
    (printf "  Mode: ~a~%" mode)
    (printf "  Strategy: ~a~%"
            (if (eq? mode 'stack) "DFS (depth-first)" "BFS (breadth-first)"))))

;; ============================================================
;; Command-line Interface
;; ============================================================

(define (print-usage)
  (printf "Golay24 Tool - Error Correction and Adaptive Frontier~%")
  (printf "~%")
  (printf "Usage:~%")
  (printf "  golay24-tool encode <info>     Encode 12-bit info to 24-bit codeword~%")
  (printf "  golay24-tool decode <codeword> Decode 24-bit codeword~%")
  (printf "  golay24-tool weight <codeword> Calculate Hamming weight~%")
  (printf "  golay24-tool frontier <info>   Demonstrate adaptive frontier~%")
  (printf "  golay24-tool demo              Run interactive demo~%")
  (printf "~%")
  (printf "Arguments:~%")
  (printf "  <info>     : 12-bit integer (0-4095, hex with 0x prefix)~%")
  (printf "  <codeword> : 24-bit integer (0-16777215, hex with 0x prefix)~%")
  (printf "~%")
  (printf "Examples:~%")
  (printf "  golay24-tool encode 0x123~%")
  (printf "  golay24-tool decode 0xABCDEF~%")
  (printf "  golay24-tool frontier 0x555~%"))

;; Parse hex or decimal number with error handling
(define (parse-number str)
  (cond
    ((not (string? str)) #f)
    ((has-prefix? str "0x")
     (let ((hex-part (substring str 2)))
       (if (> (string-length hex-part) 0)
           (string->number hex-part 16)
           #f)))
    ((> (string-length str) 0)
     (string->number str))
    (else #f)))

;; ============================================================
;; Commands
;; ============================================================

(define (cmd-encode args)
  (if (null? args)
      (begin
        (printf "Error: Missing <info> argument~%")
        (print-usage)
        (exit 1))
      (let* ((info-str (car args))
             (info (parse-number info-str)))
        (if (or (not info) (< info 0) (> info #xFFF))
            (begin
              (printf "Error: Info must be 12-bit (0-4095)~%")
              (exit 1))
            (let ((codeword (encode-golay24 info)))
              (printf "Input (12-bit):  0x~a (~a)~%" (format-hex-padded info 3) info)
              (printf "Codeword (24-bit): 0x~a (~a)~%" (format-hex-padded codeword 6) codeword)
              (printf "Weight: ~a~%" (golay-weight codeword)))))))

(define (cmd-decode args)
  (if (null? args)
      (begin
        (printf "Error: Missing <codeword> argument~%")
        (print-usage)
        (exit 1))
      (let* ((cw-str (car args))
             (codeword (parse-number cw-str)))
        (if (or (not codeword) (< codeword 0) (> codeword #xFFFFFF))
            (begin
              (printf "Error: Codeword must be 24-bit (0-16777215)~%")
              (exit 1))
            (let-values (((info syndrome) (decode-golay24 codeword)))
              (printf "Codeword (24-bit): 0x~a~%" (format-hex-padded codeword 6))
              (printf "Decoded info (12-bit): 0x~a (~a)~%" (format-hex-padded info 3) info)
              (printf "Syndrome: 0x~a~%" (format-hex-padded syndrome 3))
              (if (zero? syndrome)
                  (printf "Status: Valid codeword (no errors)~%")
                  (printf "Status: Corrected ~a bit(s)~%" 
                          (golay-weight syndrome))))))))

(define (cmd-weight args)
  (if (null? args)
      (begin
        (printf "Error: Missing <codeword> argument~%")
        (print-usage)
        (exit 1))
      (let* ((cw-str (car args))
             (codeword (parse-number cw-str)))
        (if (or (not codeword) (< codeword 0) (> codeword #xFFFFFF))
            (begin
              (printf "Error: Codeword must be 24-bit~%")
              (exit 1))
            (let ((weight (golay-weight codeword)))
              (printf "Codeword: 0x~a~%" (format-hex-padded codeword 6))
              (printf "Weight: ~a / 24~%" weight)
              (printf "Normalized: ~a~%" (exact->inexact (/ weight 24))))))))

(define (cmd-frontier args)
  (if (null? args)
      (begin
        (printf "Error: Missing <info> argument~%")
        (print-usage)
        (exit 1))
      (let* ((info-str (car args))
             (info (parse-number info-str)))
        (if (or (not info) (< info 0) (> info #xFFF))
            (begin
              (printf "Error: Info must be 12-bit~%")
              (exit 1))
            (let ((frontier (make-adaptive-frontier info)))
              (printf "~%")
              (display-frontier-info frontier)
              (printf "~%")
              (printf "Demonstration: Push/Pop operations~%")
              (let* ((f1 (adaptive-frontier-push frontier 'task-a))
                     (f2 (adaptive-frontier-push f1 'task-b))
                     (f3 (adaptive-frontier-push f2 'task-c)))
                (printf "Pushed: task-a, task-b, task-c~%")
                (let-values (((val1 f4) (adaptive-frontier-pop f3)))
                  (printf "Pop 1: ~a~%" val1)
                  (let-values (((val2 f5) (adaptive-frontier-pop f4)))
                    (printf "Pop 2: ~a~%" val2)
                    (let-values (((val3 f6) (adaptive-frontier-pop f5)))
                      (printf "Pop 3: ~a~%" val3))))))))))

(define (cmd-demo args)
  (printf "~%")
  (printf "========================================~%")
  (printf "  Golay24 Interactive Demo~%")
  (printf "========================================~%")
  (printf "~%")
  
  ;; Demo 1: Basic encoding
  (printf "Demo 1: Basic Encoding~%")
  (printf "----------------------~%")
  (let* ((info #x123)
         (codeword (encode-golay24 info)))
    (printf "Info: 0x~a -> Codeword: 0x~a (weight: ~a)~%~%"
            (format-hex-padded info 3)
            (format-hex-padded codeword 6)
            (golay-weight codeword)))
  
  ;; Demo 2: Weight distribution
  (printf "Demo 2: Weight Distribution~%")
  (printf "----------------------------~%")
  (for-each (lambda (info)
              (let* ((cw (encode-golay24 info))
                     (w (golay-weight cw))
                     (mode (frontier-mode-from-golay w)))
                (printf "Info: 0x~a -> Weight: ~a -> Mode: ~a~%"
                        (format-hex-padded info 3)
                        w
                        mode)))
            '(#x000 #x111 #x555 #xAAA #xFFF))
  (printf "~%")
  
  ;; Demo 3: Adaptive frontier
  (printf "Demo 3: Adaptive Frontier Behavior~%")
  (printf "-----------------------------------~%")
  (let ((frontier-low (make-adaptive-frontier #x000))
        (frontier-high (make-adaptive-frontier #xFFF)))
    (printf "Low weight frontier (t=~a): ~a mode~%"
            (adaptive-frontier-tau frontier-low)
            (adaptive-frontier-mode frontier-low))
    (printf "High weight frontier (t=~a): ~a mode~%~%"
            (adaptive-frontier-tau frontier-high)
            (adaptive-frontier-mode frontier-high)))
  
  (printf "Demo complete!~%"))

;; ============================================================
;; Main Entry Point
;; ============================================================

(define (main args)
  (if (< (length args) 2)
      (begin
        (print-usage)
        (exit 1))
      (let ((command (cadr args))
            (cmd-args (cddr args)))
        (cond
          ((equal? command "encode")   (cmd-encode cmd-args))
          ((equal? command "decode")   (cmd-decode cmd-args))
          ((equal? command "weight")   (cmd-weight cmd-args))
          ((equal? command "frontier") (cmd-frontier cmd-args))
          ((equal? command "demo")     (cmd-demo cmd-args))
          (else
           (printf "Error: Unknown command '~a'~%" command)
           (print-usage)
           (exit 1))))))

;; Run main
(main (argv))