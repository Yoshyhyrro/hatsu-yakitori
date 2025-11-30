;; ============================================================
;; core/golay_frontier.scm
;; Golay code-based adaptive frontier management for KAK decomposition
;; ============================================================

(module core/golay_frontier
  (
   ;; --- Golay codes ---
   golay24-generator
   golay24-parity-check
   encode-golay24
   decode-golay24
   golay-weight
   
   ;; --- Frontier with Golay control ---
   make-adaptive-frontier
   adaptive-frontier-push
   adaptive-frontier-pop
   adaptive-frontier-mode
   adaptive-frontier-tau
   
   ;; --- Integration with KAK ---
   frontier-mode-from-golay
   print-frontier-info)
   
  (import scheme)
  (import (chicken base)
          (chicken bitwise)
          (chicken format)
          srfi-1
          srfi-69)
  
  (import machine-constants) 
  
  ;; ============================================================
  ;; Golay[24,12] Code Implementation
  ;; ============================================================

  (define golay24-generator
    (vector
     #xC75 #x63B #xF68 #x7B4 #x3DA #xD99 #x6CD #x367 #xDC6 #xA97 #x93E #x8EB))

  (define golay24-parity-check
    (vector
     #x8CE #xC67 #x8DD #x4B7 #x1DB #xEE1 #xC1F #xC8F #x573 #x9F9 #xB35 #xACA))

  (define (golay-weight n)
    (let loop ((n n) (count 0))
      (if (zero? n)
          count
          (loop (arithmetic-shift n -1)
                (+ count (bitwise-and n 1))))))

  (define (encode-golay24 info-bits)
    (let ((p-matrix golay24-generator))
      (let loop ((i 0) (parity 0))
        (if (= i 12)
            (bitwise-ior (arithmetic-shift info-bits 12) parity)
            (let ((info-bit (bitwise-and 1 (arithmetic-shift info-bits i))))
              (if (zero? info-bit)
                  (loop (+ i 1) parity)
                  (loop (+ i 1) (bitwise-xor parity (vector-ref p-matrix i)))))))))

  (define (calculate-syndrome codeword)
    (let ((recalculated-parity
           (let ((info-prime (arithmetic-shift codeword -12)))
             (let loop ((i 0) (parity 0))
               (if (= i 12)
                   parity
                   (let ((info-bit (bitwise-and 1 (arithmetic-shift info-prime i))))
                     (if (zero? info-bit)
                         (loop (+ i 1) parity)
                         (loop (+ i 1) (bitwise-xor parity (vector-ref golay24-generator i))))))))))
      (bitwise-xor (bitwise-and codeword #xFFF) recalculated-parity)))

  (define (decode-golay24 codeword)
    (let* ((p-matrix golay24-generator)
           (info-prime (arithmetic-shift codeword -12))
           (syndrome (calculate-syndrome codeword))
           (syndrome-weight (golay-weight syndrome)))
      (cond
       ;; Case 1: No error or error in data bits
       ((zero? syndrome)
        (let ((error-pos
               (let loop ((i 0))
                 (if (= i 12)
                     #f
                     (if (= (golay-weight (bitwise-xor syndrome (vector-ref p-matrix i))) 2)
                         (arithmetic-shift 1 i)
                         (loop (+ i 1)))))))
          (if error-pos
              (values (bitwise-xor info-prime error-pos) error-pos)
              (values info-prime 0))))
       
       ;; Case 2: Error in parity bits
       ((<= syndrome-weight 3)
        (values info-prime syndrome))
       
       ;; Case 3: Error in data bits
       (else
        (let ((error-pos
               (let loop ((i 0))
                 (if (= i 12)
                     #f
                     (let* ((row (vector-ref p-matrix i))
                            (new-syndrome (bitwise-xor syndrome row)))
                       (if (<= (golay-weight new-syndrome) 2)
                           (bitwise-ior (arithmetic-shift 1 i) new-syndrome)
                           (loop (+ i 1))))))))
          (if error-pos
              (values (bitwise-xor info-prime (arithmetic-shift error-pos -12)) error-pos)
              (values info-prime syndrome)))))))

  ;; ============================================================
  ;; Adaptive Frontier Control
  ;; ============================================================
  
  (define (frontier-mode-from-golay tau-weight)
    (let ((normalized (/ (min tau-weight 24) 24.0)))
      (if (< normalized 0.5)
          'stack
          'queue)))
  
  (define (make-adaptive-frontier #!optional (info-bits 0))
    (let* ((codeword (encode-golay24 info-bits))
           (tau (golay-weight codeword))
           (mode (frontier-mode-from-golay tau)))
      (vector mode
              tau
              codeword
              (/ tau 24.0)
              '())))
  
  (define (adaptive-frontier-mode frontier) (vector-ref frontier 0))
  (define (adaptive-frontier-tau frontier) (vector-ref frontier 1))
  (define (adaptive-frontier-tau-normalized frontier) (vector-ref frontier 3))
  
  (define (adaptive-frontier-push frontier val)
    (let ((mode (vector-ref frontier 0))
          (tau (vector-ref frontier 1))
          (codeword (vector-ref frontier 2))
          (tau-norm (vector-ref frontier 3))
          (data (vector-ref frontier 4)))
      (let ((new-data (case mode
                        ((stack) (cons val data))
                        ((queue) (append data (list val)))
                        (else data))))
        (vector mode tau codeword tau-norm new-data))))
  
  (define (adaptive-frontier-pop frontier)
    (let ((mode (vector-ref frontier 0))
          (tau (vector-ref frontier 1))
          (codeword (vector-ref frontier 2))
          (tau-norm (vector-ref frontier 3))
          (data (vector-ref frontier 4)))
      (if (null? data)
          (values #f frontier)
          (values (car data)
                  (vector mode tau codeword tau-norm (cdr data))))))
  
  ;; ============================================================
  ;; Frontier Information Display
  ;; ============================================================
  
  (define (print-frontier-info frontier)
    (let ((mode (adaptive-frontier-mode frontier))
          (tau (adaptive-frontier-tau frontier))
          (tau-norm (adaptive-frontier-tau-normalized frontier)))
      (printf "╔═══════════════════════════════════════╗~%")
      (printf "║ Golay-Controlled Adaptive Frontier    ║~%")
      (printf "╠═══════════════════════════════════════╣~%")
      (printf "║ Mode (τ-dependent):  ~a~%" mode)
      (printf "║ Codeword weight τ:   ~a / 24~%" tau)
      (printf "║ Normalized τ̂:      ~a~%" tau-norm)
      (printf "║ Behavior:            ~a~%"
              (if (< tau-norm 0.5)
                  "DFS (deep exploration)"
                  "BFS (broad exploration)"))
      (printf "╚═══════════════════════════════════════╝~%")))) ;; end module