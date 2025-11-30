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

  ;; The generator matrix G = [I_12 | P]. We only need to store P.
  ;; Parity check matrix H = [P^T | I_12].
  ;; P is a 12x12 matrix. We store it as a vector of 12 integers (rows).
  (define golay24-generator
    (vector
     #xC75 #x63B #xF68 #x7B4 #x3DA #xD99 #x6CD #x367 #xDC6 #xA97 #x93E #x8EB))

  ;; Parity check matrix (P^T).
  ;; We can compute this by transposing the generator matrix P, but for
  ;; efficiency, we can precompute it.
  (define golay24-parity-check
    (vector
     #x8CE #xC67 #x8DD #x4B7 #x1DB #xEE1 #xC1F #xC8F #x573 #x9F9 #xB35 #xACA))

  ;; Hamming weight: count number of set bits in an integer
  (define (golay-weight n)
    (let loop ((n n) (count 0))
      (if (zero? n)
          count
          (loop (arithmetic-shift n -1)
                (+ count (bitwise-and n 1))))))

  ;; Encode a 12-bit message into a 24-bit codeword
  (define (encode-golay24 info-bits)
    (let ((p-matrix golay24-generator))
      (let loop ((i 0) (parity 0))
        (if (= i 12)
            (bitwise-ior (arithmetic-shift info-bits 12) parity)
            (let ((info-bit (bitwise-and 1 (arithmetic-shift info-bits i))))
              (if (zero? info-bit)
                  (loop (+ i 1) parity)
                  (loop (+ i 1) (bitwise-xor parity (vector-ref p-matrix i)))))))))

  ;; Calculate syndrome for a 24-bit received word
  (define (calculate-syndrome codeword)
    (let ((parity-check golay24-parity-check))
      (let loop ((i 0) (syndrome 0))
        (if (= i 12)
            syndrome
            (let ((row (vector-ref parity-check i)))
              (let ((product (bitwise-and codeword row)))
                (if (odd? (golay-weight product))
                    (loop (+ i 1) (bitwise-ior syndrome (arithmetic-shift 1 i)))
                    (loop (+ i 1) syndrome))))))))

  ;; Decode a 24-bit codeword
  (define (decode-golay24 codeword)
    (let* ((p-matrix golay24-generator)
           (info-prime (arithmetic-shift codeword -12))
           (parity-prime (bitwise-and codeword #xFFF))
           (syndrome-a (calculate-syndrome codeword))
           (syndrome-a-weight (golay-weight syndrome-a)))
      (cond
       ;; Case 1: Syndrome is zero. No errors detected.
       ((zero? syndrome-a)
        (values info-prime 0))

       ;; Case 2: Weight of syndrome is <= 3. Error is in parity bits.
       ((<= syndrome-a-weight 3)
        (let ((corrected-codeword (bitwise-xor codeword syndrome-a)))
          (values (arithmetic-shift corrected-codeword -12) syndrome-a)))

       ;; Case 3: Try to find a match in P matrix rows
       (else
        (let loop ((i 0) (found #f))
          (if (or (= i 12) found)
              found
              (let* ((row (vector-ref p-matrix i))
                     (syndrome-b (bitwise-xor syndrome-a row))
                     (syndrome-b-weight (golay-weight syndrome-b)))
                (if (<= syndrome-b-weight 2)
                    (let* ((error-pattern (bitwise-ior (arithmetic-shift 1 (+ i 12)) syndrome-b))
                           (corrected-codeword (bitwise-xor codeword error-pattern)))
                      (values (arithmetic-shift corrected-codeword -12) error-pattern))
                    (loop (+ i 1) #f))))))
        ;; If not found, try a final check.
        (let* ((syndrome-b (calculate-syndrome (bitwise-ior (arithmetic-shift 1 23) codeword)))
               (syndrome-b-weight (golay-weight syndrome-b)))
          (if (<= syndrome-b-weight 2)
              (let* ((error-pattern (bitwise-ior (arithmetic-shift 1 23) syndrome-b))
                     (corrected-codeword (bitwise-xor codeword error-pattern)))
                (values (arithmetic-shift corrected-codeword -12) error-pattern))
              ;; Could not correct. Return original with non-zero syndrome.
              (values info-prime syndrome-a)))))))

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
      (printf "╚═══════════════════════════════════════╝~%"))))
) ;; end module
