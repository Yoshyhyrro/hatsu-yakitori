;; ============================================================
;; core/golay_frontier.scm
;; Golay code-based adaptive frontier management for KAK decomposition
;; ============================================================

(module golay-frontier
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
  
  ;; Import machine constants module
  (import machine-constants)
  
  ;; ============================================================
  ;; Golay[24,12] Code Constants
  ;; ============================================================
  
  ;; Generator matrix for Golay[24,12]
  (define golay24-generator
    '#(#x8ED #xC75 #xE3B #xF1D #xF8F #xFC7 #x7E3 #x3F1
       #x1F9 #x8FD #xC7F #xE3F))
  
  ;; Parity check matrix
  (define golay24-parity-check
    '#(#xC75 #xE3B #xF1D #xF8F #xFC7 #x7E3 #x3F1 #x1F9
       #x8FD #xC7F #xE3F #x8ED))
  
  ;; ============================================================
  ;; Golay Encoding
  ;; ============================================================
  
  ;; Encode 12-bit information to 24-bit Golay codeword
  ;; Uses systematic encoding with generator matrix
  (define (encode-golay24 info)
    (let ((info12 (bitwise-and info #xFFF)))
      ;; Systematic part: info bits in upper 12 bits
      ;; Parity part: XOR of generator rows where info bit = 1
      (let loop ((i 0) (parity 0))
        (if (>= i 12)
            ;; Combine: [info12 | parity12]
            (bitwise-ior (arithmetic-shift info12 12) parity)
            (let ((bit (bitwise-and (arithmetic-shift info12 (- i)) 1)))
              (if (= bit 1)
                  (loop (+ i 1) 
                        (bitwise-xor parity (vector-ref golay24-generator i)))
                  (loop (+ i 1) parity)))))))
  
  ;; ============================================================
  ;; Golay Weight Calculation
  ;; ============================================================
  
  ;; Hamming weight using machine-constants function
  (define (golay-weight codeword)
    (hamming-weight (bitwise-and codeword #xFFFFFF)))
  
  ;; ============================================================
  ;; Golay Decoding (Simplified syndrome-based)
  ;; ============================================================
  
  ;; Calculate syndrome
  (define (golay-syndrome received)
    (let ((r24 (bitwise-and received #xFFFFFF)))
      (let loop ((i 0) (syn 0))
        (if (>= i 12)
            syn
            (let ((bit (bitwise-and (arithmetic-shift r24 (- i)) 1)))
              (if (= bit 1)
                  (loop (+ i 1) 
                        (bitwise-xor syn (vector-ref golay24-parity-check i)))
                  (loop (+ i 1) syn)))))))
  
  ;; Simple decode: extract info bits (assumes no errors for now)
  ;; Full implementation would do syndrome decoding
  (define (decode-golay24 received)
    (let* ((r24 (bitwise-and received #xFFFFFF))
           (syndrome (golay-syndrome r24))
           (info (bitwise-and (arithmetic-shift r24 -12) #xFFF)))
      (values info syndrome)))
  
  ;; ============================================================
  ;; Adaptive Frontier Control
  ;; ============================================================
  
  ;; Frontier mode determined by Golay weight (τ)
  ;; τ ∈ [0,24] → normalized to [0,1]
  ;; τ < 0.5 → stack (DFS)
  ;; τ ≥ 0.5 → queue (BFS)
  (define (frontier-mode-from-golay tau-weight)
    (let ((normalized (/ (min tau-weight 24) 24.0)))
      (if (< normalized 0.5)
          'stack
          'queue)))
  
  ;; Create adaptive frontier with Golay code control
  (define (make-adaptive-frontier #!optional (info-bits 0))
    (let* ((codeword (encode-golay24 info-bits))
           (tau (golay-weight codeword))
           (mode (frontier-mode-from-golay tau)))
      (vector mode
              tau
              codeword
              (/ tau 24.0)  ;; normalized tau
              '())))        ;; data
  
  ;; Accessors
  (define (adaptive-frontier-mode frontier)
    (vector-ref frontier 0))
  
  (define (adaptive-frontier-tau frontier)
    (vector-ref frontier 1))
  
  (define (adaptive-frontier-tau-normalized frontier)
    (vector-ref frontier 3))
  
  ;; Push value onto adaptive frontier
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
  
  ;; Pop value from adaptive frontier
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
      (printf "║ Codeword weight τ:   ~2d / 24~%" tau)
      (printf "║ Normalized τ̂:      ~5,3f~%" tau-norm)
      (printf "║ Behavior:            ~a~%"
              (if (< tau-norm 0.5)
                  "DFS (deep exploration)"
                  "BFS (broad exploration)"))
      (printf "╚═══════════════════════════════════════╝~%"))))
  
   ;; end module