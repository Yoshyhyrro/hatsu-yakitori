;;; ---------------------------------------------------------------------------
;;; GOLAY24 TOOL
;;; CLI for Encoding/Decoding Golay24
;;; ---------------------------------------------------------------------------

;; Chicken 5 Import Strategy
;; We must import specific modules instead of the generic 'chicken'
(import scheme)
(import (chicken base)
        (chicken bitwise)
        (chicken format)
        (chicken process-context) ;; Required for (command-line)
        (chicken string))         ;; Required for string manipulation

(import srfi-1   ;; Lists
        srfi-13) ;; Strings

;; ---------------------------------------------------------------------------
;; INCLUDES (vs LOADS)
;; Use 'include' so the core libraries are compiled INTO the binary.
;; 'load' would look for these files at runtime on the disk, which is fragile.
;; 
;; We assume these paths based on running 'make' from the project root.
;; If your Makefile uses -I ., we can reference core/ directly.
;; ---------------------------------------------------------------------------

(include "core/machine_constants.scm")

;; Note: You may need to ensure this file exists or update the path
;; if it is not in the exact location relative to project root.
(include "core/golay_frontier.scm") 

;; ---------------------------------------------------------------------------
;; UTILITIES
;; ---------------------------------------------------------------------------

(define (parse-num s)
  ;; accept "0x..." hex, "#x..." hex, or decimal
  (cond
    ((or (string-prefix? "0x" s) (string-prefix? "#x" s))
     (let ((hex (if (string-prefix? "0x" s)
                    (substring s 2)
                    (substring s 2)))) ;; handle #x same way
       (or (string->number hex 16)
           (error "Invalid hex number" s))))
    (else 
     (or (string->number s)
         (error "Invalid number" s)))))

(define (hex-str n)
  (string-append "0x" (format #f "~x" n)))

;; ---------------------------------------------------------------------------
;; COMMAND HANDLERS
;; ---------------------------------------------------------------------------

(define (print-encode info)
  ;; Ensure info is within 12 bits (0-4095)
  (let ((masked-info (bitwise-and info #xFFF)))
    (unless (= info masked-info)
      (format #t "Warning: Truncating input ~a to 12 bits: ~a~%" info masked-info))
      
    (let ((cw (encode-golay24 masked-info)))
      (let ((tau (golay-weight cw))
            ;; Ensure frontier-mode-from-golay exists in your included files
            (mode (frontier-mode-from-golay (golay-weight cw))))
        (format #t "info: ~a (~a)~%" masked-info (hex-str masked-info))
        (format #t "codeword: ~a (~a)~%" cw (hex-str cw))
        (format #t "τ (weight): ~a / 24~%" tau)
        (format #t "mode: ~a~%" mode)))))

(define (print-decode cw)
  ;; Ensure cw is within 24 bits
  (let ((masked-cw (bitwise-and cw #xFFFFFF)))
    (let-values (((info syndrome) (decode-golay24 masked-cw)))
      (format #t "received: ~a (~a)~%" masked-cw (hex-str masked-cw))
      (format #t "decoded info: ~a (~a)~%" (bitwise-and info #xFFF) (hex-str (bitwise-and info #xFFF)))
      (format #t "syndrome (diff): ~a (~a)~%" syndrome (hex-str syndrome))
      ;; compute τ of codeword if possible
      (format #t "τ (weight of received): ~a~%" (golay-weight masked-cw)))))

;; ---------------------------------------------------------------------------
;; MAIN ENTRY POINT
;; ---------------------------------------------------------------------------

(define (main)
  (let ((args (command-line-arguments))) ;; Chicken specific: returns args without program name
    (cond
      ((null? args)
       (format #t "golay24-tool: usage examples:~%")
       (format #t "  encode 42         ; prints codeword, tau, mode~%")
       (format #t "  decode 0x1A2B3C   ; decode, print info + syndrome~%"))
      
      ((string-ci=? (car args) "encode")
       (if (null? (cdr args))
           (format #t "Usage: encode <info-bits>~%")
           (let ((n (parse-num (cadr args))))
             (print-encode n))))
      
      ((string-ci=? (car args) "decode")
       (if (null? (cdr args))
           (format #t "Usage: decode <codeword>~%")
           (let ((n (parse-num (cadr args))))
             (print-decode n))))
      
      (else
       (format #t "Unknown command: ~a~%" (car args))
       (format #t "Usage: encode <info> | decode <codeword>~%")))))

;; Run main
(main)