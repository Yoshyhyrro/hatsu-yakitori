;; ============================================================
;; tools/golay24-tool/golay24_main.scm
;; Command-line tool for Golay[24,12] encoding/decoding
;; and adaptive frontier demonstration
;; ============================================================

(import scheme)
(import (chicken base)
        (chicken format)
        (chicken process-context))
(import machine-constants)
(import golay-frontier)

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

;; Parse hex or decimal number
(define (parse-number str)
  (if (string-prefix? "0x" str)
      (string->number (substring str 2) 16)
      (string->number str)))

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
              (printf "Input (12-bit):  0x~x (~a)~%" info info)
              (printf "Codeword (24-bit): 0x~x (~a)~%" codeword codeword)
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
              (printf "Codeword (24-bit): 0x~x~%" codeword)
              (printf "Decoded info (12-bit): 0x~x (~a)~%" info info)
              (printf "Syndrome: 0x~x~%" syndrome)
              (if (zero? syndrome)
                  (printf "Status: Valid codeword (no errors)~%")
                  (printf "Status: Corrected ~a bit(s)~%" 
                          (hamming-weight syndrome))))))))

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
              (printf "Codeword: 0x~x~%" codeword)
              (printf "Weight: ~a / 24~%" weight)
              (printf "Normalized: ~a~%" (/ weight 24.0)))))))

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
              (print-frontier-info frontier)
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
  (printf "╔════════════════════════════════════════╗~%")
  (printf "║  Golay24 Interactive Demo              ║~%")
  (printf "╚════════════════════════════════════════╝~%")
  (printf "~%")
  
  ;; Demo 1: Basic encoding
  (printf "Demo 1: Basic Encoding~%")
  (printf "----------------------~%")
  (let* ((info #x123)
         (codeword (encode-golay24 info)))
    (printf "Info: 0x~x → Codeword: 0x~x (weight: ~a)~%~%"
            info codeword (golay-weight codeword)))
  
  ;; Demo 2: Weight distribution
  (printf "Demo 2: Weight Distribution~%")
  (printf "----------------------------~%")
  (for-each (lambda (info)
              (let* ((cw (encode-golay24 info))
                     (w (golay-weight cw))
                     (mode (frontier-mode-from-golay w)))
                (printf "Info: 0x~3,'0x → Weight: ~2d → Mode: ~a~%"
                        info w mode)))
            '(#x000 #x111 #x555 #xAAA #xFFF))
  (printf "~%")
  
  ;; Demo 3: Adaptive frontier
  (printf "Demo 3: Adaptive Frontier Behavior~%")
  (printf "-----------------------------------~%")
  (let ((frontier-low (make-adaptive-frontier #x000))
        (frontier-high (make-adaptive-frontier #xFFF)))
    (printf "Low weight frontier (τ=~a): ~a mode~%"
            (adaptive-frontier-tau frontier-low)
            (adaptive-frontier-mode frontier-low))
    (printf "High weight frontier (τ=~a): ~a mode~%~%"
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