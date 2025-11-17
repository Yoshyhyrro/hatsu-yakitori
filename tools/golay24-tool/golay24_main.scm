(module golay24-tool
  (import chicken scheme)
  (use srfi-1 srfi-13 machine-constants golay-frontier)

  ;; Simple CLI tool: encode/decode and show tau/mode
  ;; Usage (simple; arguments):
  ;;   encode <info-bits>   -> prints 24-bit codeword and τ/mode
  ;;   decode <codeword>    -> prints decoded info bits and difference (syndrome)
  ;; If no args: prints usage and a short example.

  (define (parse-num s)
    ;; accept "0x..." hex or decimal
    (cond
      ((or (string-prefix? "0x" s) (string-prefix? "#x" s))
       (let ((hex (if (string-prefix? "0x" s)
                      (substring s 2)
                      (substring s 2))))
         (string->number hex 16)))
      (else (string->number s))))

  (define (hex-str n)
    (let ((s (format #f "~x" n)))
      (string-append "0x" s)))

  (define (print-encode info)
    (let ((cw (encode-golay24 info)))
      (let ((tau (golay-weight cw))
            (mode (frontier-mode-from-golay (golay-weight cw))))
        (format #t "info: ~a (~a)~%" info (hex-str info))
        (format #t "codeword: ~a (~a)~%" cw (hex-str cw))
        (format #t "τ (weight): ~a / 24~%" tau)
        (format #t "mode: ~a~%" mode))))

  (define (print-decode cw)
    (let-values (((info syndrome) (decode-golay24 cw)))
      (format #t "received: ~a (~a)~%" cw (hex-str cw))
      (format #t "decoded info: ~a (~a)~%" (bitwise-and info #xFFF) (hex-str (bitwise-and info #xFFF)))
      (format #t "syndrome (diff): ~a (~a)~%" syndrome (hex-str syndrome))
      ;; compute τ of codeword if possible
      (format #t "τ (weight of received): ~a~%" (golay-weight cw))))

  ;; top-level dispatch: small CLI
  (let ((args (command-line)))
    (cond
      ((null? args)
       (format #t "golay24-tool: usage examples:~%")
       (format #t "  encode 42        ; prints codeword, tau, mode~%")
       (format #t "  decode 0x1A2B3C   ; decode, print info + syndrome~%"))
      ((string-ci=? (car args) "encode")
       (let ((n (parse-num (cadr args))))
         (print-encode n)))
      ((string-ci=? (car args) "decode")
       (let ((n (parse-num (cadr args))))
         (print-decode n)))
      (else
       (format #t "Unknown command: ~a~%" (car args))
       (format #t "Usage: encode <info> | decode <codeword>~%")))))
