;; examples/Berkovich_Flow_Codes/quadcopter/quad_lib.scm
;; Core quadcopter definitions (no automatic main invocation)

(import scheme)
(import (chicken base)
        (chicken format)
        (chicken bitwise)
        (chicken math))

(import kak_decomposition)
(import golay_frontier)

;; Morton helpers
;; (copying the relevant functions from original file)

(define (part1by1 n)
  (let loop ((n (bitwise-and n #xFFFF)) (i 0) (res 0))
    (if (= i 16) res
        (let ((bit (bitwise-and (arithmetic-shift n (- i)) 1)))
          (loop n (+ i 1) 
                (bitwise-ior res (arithmetic-shift bit (* 2 i))))))))

(define (morton2-encode x y)
  (bitwise-ior (part1by1 x)
               (arithmetic-shift (part1by1 y) 1)))

(define (compact1by1 n)
  (let loop ((n n) (i 0) (res 0))
    (if (= i 16) res
        (let ((bit (bitwise-and (arithmetic-shift n (* -2 i)) 1)))
          (loop n (+ i 1) 
                (bitwise-ior res (arithmetic-shift bit i)))))))

(define (morton2-decode z)
  (list (compact1by1 z)
        (compact1by1 (arithmetic-shift z -1))))

;; Ultrametric distance
(define (ultrametric-distance z1 z2)
  (let ((xor-val (bitwise-xor z1 z2)))
    (if (zero? xor-val)
        0.0
        (let loop ((shift 30) (k 0))
          (if (< shift 0)
              (expt 2.0 (- k))
              (if (zero? (bitwise-and xor-val (arithmetic-shift #b11 shift)))
                  (loop (- shift 2) (+ k 1))
                  (expt 2.0 (- k))))))))

;; Quadcopter record + helpers
(define-record quadcopter
  center-x
  center-y
  rotor-offset
  rpm
  info-bits)

(define (make-standard-quadcopter center-x center-y rpm info-bits)
  (make-quadcopter center-x center-y 4 rpm info-bits))

(define (get-rotor-positions quad)
  (let ((cx (quadcopter-center-x quad))
        (cy (quadcopter-center-y quad))
        (d (quadcopter-rotor-offset quad)))
    (list
     (morton2-encode (+ cx d) (+ cy d))
     (morton2-encode (- cx d) (+ cy d))
     (morton2-encode (- cx d) (- cy d))
     (morton2-encode (+ cx d) (- cy d)))))

;; Viscosity computation
(define (compute-viscosity-at-point quad point-morton tau)
  (let* ((mu-0 1.0e-5)
         (rpm (quadcopter-rpm quad))
         (rotors (get-rotor-positions quad))
         (distances (map (lambda (r) (ultrametric-distance point-morton r)) rotors))
         (turbulence (fold + 0.0
                          (map (lambda (d) (if (< d 0.1) 10.0 (/ 1.0 d))) distances)))
         (galois-factor (+ 1.0 (* 0.1 tau)))
         (rpm-factor (/ rpm 1000.0))
         (mu-total (* mu-0 (+ 1.0 (* turbulence galois-factor rpm-factor)))))
    mu-total))

;; Expose a small API for tests
(provide part1by1 morton2-encode morton2-decode ultrametric-distance
         make-standard-quadcopter get-rotor-positions compute-viscosity-at-point)
