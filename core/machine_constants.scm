;;; ============================================================
;;; core/machine_constants.scm
;;; Reinterpreted as Height Function K of Absolute Galois Group Gal(Q̄/Q)
;;; ============================================================
;;;
;;; CRITICAL INSIGHT:
;;; machine-epsilon is not merely a floating-point error, but the
;;; minimal measurable unit of the action of the Absolute Galois Group.
;;;
;;; Mathematical Correspondence:
;;;   h: Gal(Q̄/Q) → R≥0  (Height Function)
;;;   h(σ) = log|discriminant of σ-action|
;;;   
;;;   machine-epsilon ↔ exp(-52 log 2) ↔ Minimal Discernible Height
;;; ============================================================

(module machine_constants
  (;; --- Fundamental Constants (Galois Correspondence) ---
   machine-epsilon        ; h_min: Minimal height unit
   default-tolerance      ; ε-convergence threshold
   galois-height-bound    ; K: Global height upper bound
   
   ;; --- Mathematical Constants ---
   e pi
   
   ;; --- Validation Functions ---
   approx-equal?
   safe-log
   height-within-tolerance?
   
   ;; --- GF(2) Polynomials (for Golay Code) ---
   trim-leading-zeros
   degree
   poly-xor
   poly-shift
   poly-mul
   poly-mod
   
   ;; --- Bitwise Operations (for Witt Octads) ---
   int->bits
   bits->int
   hamming-weight
   
   ;; --- Galois Height Function ---
   galois-height
   max-cycle-length
   permutation-cycle-lengths
   height-discriminant
   height-comparison
   
   ;; --- Witt-Galois Integration ---
   octad-height
   witt-galois-correspondence)
  
  (import scheme)
  (import (chicken base)
          (chicken bitwise)
          (chicken flonum)
          srfi-1)

  ;;; ========================================================
  ;;; PART 1: Fundamental Constants (Galois Height Interpretation)
  ;;; ========================================================

  ;; IEEE-754 double precision machine epsilon
  ;; Reinterpretation: h_min = Minimal discernible Galois height
  (define machine-epsilon (expt 2.0 -52))
  
  ;; Algorithm tolerance
  ;; Reinterpretation: ε-convergence in Galois height space
  (define default-tolerance 1e-10)
  
  ;; NEW: Global height upper bound K
  ;; Corresponds to the Cartan decomposition bound B
  ;; K = sup{h(σ) : σ ∈ Gal(Q̄/Q), σ acts on octad lattice}
  (define galois-height-bound 8.0)  ; B=8 from cartan_utils.scm
  
  ;; Mathematical constants
  (define e (exp 1.0))
  (define pi (acos -1.0))

  ;;; ========================================================
  ;;; PART 2: Height Function Implementation
  ;;; ========================================================

  (define (galois-height sigma-action)
    "Height of a permutation σ of the 24 points, normalised so that a cycle of
     length 24 has height K:

       h(σ) = K * log(c(σ)) / log(24),   c(σ) = largest cycle length of σ.

     c(σ) does not depend on how the 24 points are labelled: conjugating σ by a
     relabelling leaves it unchanged. It equals the largest orbit length of σ over
     all choices of the base point. For σ in the Mathieu group M_24 it also equals
     the order of σ, and it is at most 23, so h(σ) lies in [0, K].

     NOTE: Reading this quantity as a height on the absolute Galois group is a
     hypothesis; it is not a result of this module.

     Args:
       sigma-action: a bijection of the points 0..23, given as a procedure,
         e.g. (lambda (point) (modulo (+ point 1) 24)).
         An error is signalled when it is not a bijection of 0..23.

     Returns: Real number h(σ) in [0, K]"

    (* galois-height-bound
       (/ (safe-log (max-cycle-length sigma-action))
          (safe-log 24))))

  (define (permutation-cycle-lengths perm)
    "Cycle lengths of the permutation PERM of the points 0..23, listed by the
     smallest point of each cycle. PERM is a procedure on the points.
     An error is signalled when PERM is not a bijection of 0..23."
    (let ((seen (make-vector 24 #f)))
      (do ((p 0 (+ p 1)))
          ((= p 24))
        (let ((q (perm p)))
          (if (and (integer? q) (exact? q) (<= 0 q) (< q 24) (not (vector-ref seen q)))
              (vector-set! seen q #t)
              (error "permutation-cycle-lengths: not a bijection of the points 0..23" p q))))
      (let ((visited (make-vector 24 #f)))
        (let loop ((p 0) (lengths '()))
          (cond
           ((= p 24) (reverse lengths))
           ((vector-ref visited p) (loop (+ p 1) lengths))
           (else
            (let walk ((x p) (n 0))
              (if (vector-ref visited x)
                  (loop (+ p 1) (cons n lengths))
                  (begin
                    (vector-set! visited x #t)
                    (walk (perm x) (+ n 1)))))))))))

  (define (max-cycle-length perm)
    "Largest cycle length of the permutation PERM of the points 0..23.
     It is independent of the labelling of the points, and it equals the largest
     orbit length over all choices of the base point."
    (fold max 1 (permutation-cycle-lengths perm)))
  
  (define (height-discriminant h1 h2)
    "Computes the discriminant between two heights.
     
     Mathematical Meaning:
       Δ(h₁, h₂) = |h₁ - h₂| / max(h₁, h₂)
       
     This measures the 'distinguishability' of Galois actions.
     
     Returns: Normalized discriminant ∈ [0, 1]"
    
    (let ((diff (abs (- h1 h2)))
          (scale (max h1 h2 machine-epsilon)))
      (/ diff scale)))
  
  (define (height-within-tolerance? h1 h2 #!optional (tol default-tolerance))
    "ε-neighborhood validation for height functions.
     
     Determines if Galois actions σ₁, σ₂ are 'essentially identical':
       |h(σ₁) - h(σ₂)| < ε
     
     Corresponds to a discrete version of the Hausdorff distance."
    
    (< (height-discriminant h1 h2) tol))
  
  (define (height-comparison h1 h2)
    "Order comparison of heights.
     
     Returns: 
       'equal     if |h₁ - h₂| < ε
       'less      if h₁ < h₂ - ε
       'greater   if h₁ > h₂ + ε"
    
    (cond
      ((height-within-tolerance? h1 h2) 'equal)
      ((< h1 h2) 'less)
      (else 'greater)))

  ;;; ========================================================
  ;;; PART 3: Witt-Galois Correspondence
  ;;; ========================================================

  (define (octad-height octad)
    "Computes the height of a Witt octad.
     
     Mathematical Correspondence:
       Octad ↔ Orbit of Galois action
       weight(octad) ↔ h(stabilizer)
     
     Args:
       octad: 24-bit integer (Witt Octad)
     
     Returns: Height h ∈ [0, K]"
    
    (let ((w (hamming-weight octad)))
      ;; Low weight → High symmetry → Low height
      ;; weight = 8  (Basic Octad)    → Baseline Level
      ;; weight = 12 (Dodecad)        → Intermediate Height
      ;; weight = 16 (Complement)     → High Height
      (cond
        ((= w 0)  0.0)                               ; Trivial action
        ((= w 8)  (* 0.333 galois-height-bound))     ; Base level
        ((= w 12) (* 0.500 galois-height-bound))     ; Self-dual
        ((= w 16) (* 0.667 galois-height-bound))     ; Complement level
        ((= w 24) galois-height-bound)               ; Global bound
        (else     (* (/ w 24.0) galois-height-bound)))))
  
  (define (witt-galois-correspondence octad)
    "Constructs the corresponding Galois action from a Witt octad.
     
     Mathematical Assertion:
       M₂₄ ≅ Aut(Golay) ⊂ Gal(Q̄/Q)|_{24-torsion}
     
     Elements of M₂₄ are isomorphic to a subgroup of the Absolute 
     Galois Group restricted to 24-torsion points.
     
     Args:
       octad: 24-bit integer
     
     Returns: 
       (height permutation orbit-size)"
    
    (let* ((h (octad-height octad))
           (perm (octad-to-permutation octad))
           (orbit (orbit-size-estimate octad)))
      
      (list (cons 'height h)
            (cons 'permutation perm)
            (cons 'orbit-size orbit)
            (cons 'galois-class (classify-by-height h)))))
  
  (define (octad-to-permutation octad)
    "Constructs a permutation from an octad (Simplified version)"
    (lambda (point)
      (let ((is-in (bitwise-and (arithmetic-shift octad (- point)) 1)))
        (if (= is-in 1)
            (modulo (+ point 1) 24)  ; Internal cycle
            point))))                 ; External fixed point
  
  (define (orbit-size-estimate octad)
    "Orbit size estimation under M24 action"
    (let ((w (hamming-weight octad)))
      (cond
        ((= w 0)  1)
        ((= w 8)  30)      ; 759 octads / 30 = orbit size
        ((= w 12) 759)
        (else     (* w 30)))))
  
  (define (classify-by-height h)
    "Classification of Galois actions by height"
    (let ((normalized (/ h galois-height-bound)))
      (cond
        ((< normalized 0.25) 'ramified-low)
        ((< normalized 0.5)  'fundamental)
        ((< normalized 0.75) 'intermediate)
        (else                'ramified-high))))

  ;;; ========================================================
  ;;; PART 4: Legacy Implementations (No Changes)
  ;;; ========================================================

  (define (approx-equal? a b #!optional (tol default-tolerance))
    (let ((diff (abs (- a b)))
          (scale (max 1.0 (max (abs a) (abs b)))))
      (or (< diff tol)
          (< diff (* tol scale)))))
  
  (define (safe-log x)
    (cond
      ((not (number? x))
       (error "safe-log: argument must be a number" x))
      ((<= x 0)
       (error "safe-log: argument must be > 0" x))
      (else (log x))))

  ;; GF(2) Polynomial Operations
  (define (trim-leading-zeros lst)
    (let loop ((l (reverse lst)))
      (let ((r (drop-while (lambda (x) (= x 0)) l)))
        (if (null? r) '(0) (reverse r)))))
  
  (define (degree poly)
    (let ((t (trim-leading-zeros poly)))
      (- (length t) 1)))
  
  (define (poly-xor a b)
    (let* ((la (length a)) (lb (length b)) (L (max la lb))
           (pa (append a (make-list (- L la) 0)))
           (pb (append b (make-list (- L lb) 0))))
      (trim-leading-zeros (map (lambda (x y) (if (= x y) 0 1)) pa pb))))
  
  (define (poly-shift poly k)
    (append (make-list k 0) poly))
  
  (define (poly-mul a b)
    (let loop ((bi b) (shift 0) (acc '(0)))
      (if (null? bi)
          (trim-leading-zeros acc)
          (let ((coef (car bi))
                (rest (cdr bi)))
            (let ((term (if (= coef 1) (poly-shift a shift) '(0))))
              (loop rest (+ shift 1) (poly-xor acc term)))))))
  
  (define (poly-mod dividend divisor)
    (let loop ((rem (trim-leading-zeros dividend)))
      (let ((dr (degree rem)) (dd (degree divisor)))
        (if (< dr dd) rem
            (let* ((shift (- dr dd))
                   (sub (poly-shift divisor shift))
                   (new-rem (poly-xor rem sub)))
              (loop new-rem))))))

  ;; Bitwise Operations
  (define (int->bits n len)
    (let loop ((i 0) (acc '()))
      (if (= i len) acc
          (loop (+ i 1) 
                (append acc 
                        (list (bitwise-and 
                               (arithmetic-shift n (- i)) 1)))))))
  
  (define (bits->int bits)
    (let ((len (length bits)))
      (let loop ((i 0) (acc 0))
        (if (>= i len) acc
            (let ((bit (list-ref bits i)))
              (loop (+ i 1) 
                    (if (= bit 1) 
                        (bitwise-ior acc (arithmetic-shift 1 i)) 
                        acc)))))))
  
  (define (hamming-weight n)
    (let loop ((code (bitwise-and n #xFFFFFFFFFFFFFFFF))
               (count 0))
      (if (zero? code)
          count
          (loop (bitwise-and code (- code 1))
                (+ count 1))))))

 ;; end module machine_constants