;;; ============================================================
;;; core/machine_constants.scm
;;; Machine epsilon and fundamental mathematical constants
;;; ============================================================

(module machine-constants
  (machine-epsilon
   default-tolerance
   e
   pi
   approx-equal?
   safe-log
   
   ;; --- Polynomial helpers (GF(2)) ---
   trim-leading-zeros
   degree
   poly-xor
   poly-shift
   poly-mul
   poly-mod
   
   ;; --- Bit/integer conversion ---
   int->bits
   bits->int
   hamming-weight
   )
  
  ;; Fix for Chicken 5: Explicit imports
  (import scheme)
  (import (chicken base)
          (chicken bitwise) ;; arithmetic-shift, bitwise-and, etc.
          (chicken flonum)  ;; floating point operations
          srfi-1)           ;; drop-while, make-list
  
  ;; ============================================================
  ;; IEEE-754 Double Precision Machine Epsilon
  ;; ============================================================
  ;; Actual machine epsilon ≈ 2^-52 ≈ 2.220446e-16
  ;; Used for floating-point comparisons and numerical stability
  (define machine-epsilon (expt 2.0 -52))
  
  ;; ============================================================
  ;; Default Algorithm Tolerance
  ;; ============================================================
  ;; Adjustable tolerance for KAK decomposition algorithms
  ;; Used in bounded computation and ε-convergence checks
  (define default-tolerance 1e-10)
  
  ;; ============================================================
  ;; Mathematical Constants
  ;; ============================================================
  
  ;; Euler's number (e = 2.71828...)
  ;; Used for logarithmic decomposition in KAK analysis
  (define e (exp 1.0))
  
  ;; Pi (π = 3.14159...)
  ;; Used in circular/angular computations and normalizations
  (define pi (acos -1.0))
  
  ;; ============================================================
  ;; Utility Functions
  ;; ============================================================
  
  ;; Approximate equality check with relative/absolute tolerance
  ;; (approx-equal? a b [tol])
  ;;   a, b: numbers to compare
  ;;   tol: tolerance (default: default-tolerance)
  ;; Returns: #t if |a - b| < tol or |a - b| < tol * max(|a|, |b|)
  (define (approx-equal? a b #!optional (tol default-tolerance))
    (let ((diff (abs (- a b)))
          (scale (max 1.0 (max (abs a) (abs b)))))
      (or (< diff tol)
          (< diff (* tol scale)))))
  
  ;; Safe logarithm wrapper with error handling
  ;; (safe-log x)
  ;;   x: value (must be > 0)
  ;; Returns: (log x) or raises error if x ≤ 0
  ;; Used in KAK decomposition to ensure numerical stability
  (define (safe-log x)
    (cond
      ((not (number? x))
       (error "safe-log: argument must be a number" x))
      ((<= x 0)
       (error "safe-log: argument must be > 0" x))
      (else (log x))))
  
  ;; ============================================================
  ;; Polynomial Helpers (GF(2) arithmetic)
  ;; ============================================================
  
  ;; Trim leading zeros from coefficient list
  ;; (trim-leading-zeros lst)
  ;;   lst: list of GF(2) coefficients
  ;; Returns: list with leading zeros removed (or '(0) if all zeros)
  (define (trim-leading-zeros lst)
    (let loop ((l (reverse lst)))
      (let ((r (drop-while (lambda (x) (= x 0)) l)))
        (if (null? r) '(0) (reverse r)))))
  
  ;; Get polynomial degree
  ;; (degree poly)
  ;;   poly: polynomial coefficient list
  ;; Returns: integer degree (length - 1)
  (define (degree poly)
    (let ((t (trim-leading-zeros poly)))
      (- (length t) 1)))
  
  ;; XOR two polynomials (GF(2) addition)
  ;; (poly-xor a b)
  ;;   a, b: coefficient lists
  ;; Returns: coefficient list of a ⊕ b
  (define (poly-xor a b)
    (let* ((la (length a)) (lb (length b)) (L (max la lb))
           (pa (append a (make-list (- L la) 0)))
           (pb (append b (make-list (- L lb) 0))))
      (trim-leading-zeros (map (lambda (x y) (if (= x y) 0 1)) pa pb))))
  
  ;; Shift polynomial by k positions (multiply by x^k)
  ;; (poly-shift poly k)
  ;;   poly: coefficient list
  ;;   k: shift amount
  ;; Returns: coefficient list with k leading zeros
  (define (poly-shift poly k)
    (append (make-list k 0) poly))
  
  ;; Multiply two polynomials (GF(2) multiplication)
  ;; (poly-mul a b)
  ;;   a, b: coefficient lists
  ;; Returns: coefficient list of a * b
  (define (poly-mul a b)
    (let loop ((bi b) (shift 0) (acc '(0)))
      (if (null? bi)
          (trim-leading-zeros acc)
          (let ((coef (car bi))
                (rest (cdr bi)))
            (let ((term (if (= coef 1) (poly-shift a shift) '(0))))
              (loop rest (+ shift 1) (poly-xor acc term)))))))
  
  ;; Polynomial division (modulo): remainder of dividend / divisor
  ;; (poly-mod dividend divisor)
  ;;   dividend, divisor: coefficient lists
  ;; Returns: remainder polynomial
  (define (poly-mod dividend divisor)
    (let loop ((rem (trim-leading-zeros dividend)))
      (let ((dr (degree rem)) (dd (degree divisor)))
        (if (< dr dd) rem
            (let* ((shift (- dr dd))
                   (sub (poly-shift divisor shift))
                   (new-rem (poly-xor rem sub)))
              (loop new-rem))))))
  
  ;; ============================================================
  ;; Bit/Integer Conversion
  ;; ============================================================
  
  ;; Convert integer to bit list (little-endian: x^0 first)
  ;; (int->bits n len)
  ;;   n: integer
  ;;   len: desired bit length
  ;; Returns: list of len bits [bit_0, bit_1, ..., bit_(len-1)]
  (define (int->bits n len)
    (let loop ((i 0) (acc '()))
      (if (= i len) acc
          (loop (+ i 1) (append acc (list (bitwise-and (arithmetic-shift n (- i)) 1)))))))
  
  ;; Convert bit list to integer (little-endian)
  ;; (bits->int bits)
  ;;   bits: list of 0/1 values
  ;; Returns: integer value
  (define (bits->int bits)
    (let ((len (length bits)))
      (let loop ((i 0) (acc 0))
        (if (>= i len) acc
            (let ((bit (list-ref bits i)))
              (loop (+ i 1) (if (= bit 1) (bitwise-ior acc (arithmetic-shift 1 i)) acc)))))))
  
  ;; ============================================================
  ;; Bit Manipulation
  ;; ============================================================
  
  ;; Hamming weight (population count) of an integer
  ;; (hamming-weight n)
  ;;   n: integer
  ;; Returns: number of 1-bits in binary representation
  (define (hamming-weight n)
    (let loop ((code (bitwise-and n #xFFFFFFFFFFFFFFFF))
               (count 0))
      (if (zero? code)
          count  ;; Fixed: removed extra parentheses
          (loop (bitwise-and code (- code 1))
                (+ count 1)))))
  
  ) ;; end module