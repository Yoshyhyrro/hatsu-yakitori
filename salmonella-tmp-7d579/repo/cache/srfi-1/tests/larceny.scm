;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; List tests from Larceny, ported to CHICKEN by Mario Domenech Goulart.
;;;
;;; Copyright 1991, 1994, 1998 William D Clinger
;;; Copyright 1998             Lars T Hansen
;;; Copyright 1984 - 1993      Lightship Software, Incorporated
;;; 
;;; Permission to copy this software, in whole or in part, to use this
;;; software for any lawful purpose, and to redistribute this software
;;; is granted subject to the following restriction:  Any publication
;;; or redistribution of this software, whether on its own or
;;; incorporated into other software, must bear the above copyright
;;; notices and the following legend:
;;; 
;;;     The Twobit compiler and the Larceny runtime system were
;;;     developed by William Clinger and Lars Hansen with the
;;;     assistance of Lightship Software and the College of Computer
;;;     Science of Northeastern University.  This acknowledges that
;;;     Clinger et al remain the sole copyright holders to Twobit
;;;     and Larceny and that no rights pursuant to that status are
;;;     waived or conveyed.
;;; 
;;; Twobit and Larceny are provided as is.  The user specifically
;;; acknowledges that Northeastern University, William Clinger, Lars
;;; Hansen, and Lightship Software have not made any representations
;;; or warranty with regard to performance of Twobit and Larceny,
;;; their merchantability, or fitness for a particular purpose.  Users
;;; further acknowledge that they have had the opportunity to inspect
;;; Twobit and Larceny and will hold harmless Northeastern University,
;;; William Clinger, Lars Hansen, and Lightship Software from any cost,
;;; liability, or expense arising from, or in any way related to the
;;; use of this software.
;;;

; Test suite for SRFI-1
; 2003-12-29 / lth
;
; Note: In Larceny, we require that the procedures designated as
; "linear update" variants in the spec (eg append!) side-effect their
; arguments, and there are tests here that check that side-effecting
; occurs.
;
; For linear update we only require that the cells of the result are
; taken from the cells of the input.  We could be stricter and require
; that the cells of the results are the cells of the input with only
; the CDR changed, ie, values are never moved from one cell to another.

(import srfi-1 test)

; Test cases are ordered as in the spec.  R5RS procedures are left out.

(test-begin "srfi-1")

(test '(2 . 1) (xcons 1 2))

(test 1 (cons* 1))

(test '(1 2 3 4 . 5) (cons* 1 2 3 4 5) )

(test '(#t #t #t #t #t) (make-list 5 #t))

(test '() (make-list 0 #f))

(test 3 (length (make-list 3)))

(test '(0 1 2 3 4) (list-tabulate 5 (lambda (x) x)))

(test '() (list-tabulate 0 (lambda (x) (error "FOO!"))))

(test #t (call-with-current-continuation
          (lambda (abort)
            (let* ((c  (list 1 2 3 4 5))
                   (cp (list-copy c)))
              (or (equal? c cp)
                  (abort #f))
              (let loop ((c c) (cp cp))
                (if (not (null? c))
                    (begin
                      (or (not (eq? c cp))
                          (abort #f))
                      (loop (cdr c) (cdr cp)))))
              #t))))

(test '(1 2 3 . 4) (list-copy '(1 2 3 . 4)))

(test #f (list? (circular-list 1 2 3)))

(test #t (let* ((a (list 'a))
                (b (list 'b))
                (c (list 'c))
                (x (circular-list a b c)))
           (and (eq? a (car x))
                (eq? b (cadr x))
                (eq? c (caddr x))
                (eq? a (cadddr x)))))

(test '() (iota 0))

(test '(2 5 8 11 14) (iota 5 2 3))

(test '(2 3 4 5 6) (iota 5 2))


(test #t (proper-list? '(1 2 3 4 5)))

(test #t (proper-list? '()))

(test #f (proper-list? '(1 2 . 3)))

(test #f (proper-list? (circular-list 1 2 3)))

(test #f (circular-list? '(1 2 3 4 5)))

(test #f (circular-list? '()))

(test #f (circular-list? '(1 2 . 3)))

(test #t (circular-list? (circular-list 1 2 3)))

(test #f (dotted-list? '(1 2 3 4 5)))

(test #f (dotted-list? '()))

(test #t (dotted-list? '(1 2 . 3)))

(test #f (dotted-list? (circular-list 1 2 3)))

(test #t (null-list? '()))

(test #f (null-list? '(1 2)))

(test #f (null-list? (circular-list 1 2)))

(test #t (not-pair? 1))

(test #f (not-pair? (cons 1 2)))

(test #t (list= = '(1 2 3) '(1 2 3) '(1 2 3)))

(test #f (list= = '(1 2 3) '(1 2 3) '(1 4 3)))

; Checks that l0 is not being used when testing l2, cf spec
(test #t (list= (lambda (a b) (not (eq? a b))) '(#f #f #f) '(#t #t #t) '(#f #f #f)))

(test #t (list= =))

(test #t (= (first '(1 2 3 4 5 6 7 8 9 10)) 1))
(test #t (= (second '(1 2 3 4 5 6 7 8 9 10)) 2))
(test #t (= (third '(1 2 3 4 5 6 7 8 9 10)) 3))
(test #t (= (fourth '(1 2 3 4 5 6 7 8 9 10)) 4))
(test #t (= (fifth '(1 2 3 4 5 6 7 8 9 10)) 5))
(test #t (= (sixth '(1 2 3 4 5 6 7 8 9 10)) 6))
(test #t (= (seventh '(1 2 3 4 5 6 7 8 9 10)) 7))
(test #t (= (eighth '(1 2 3 4 5 6 7 8 9 10)) 8))
(test #t (= (ninth '(1 2 3 4 5 6 7 8 9 10)) 9))
(test #t (= (tenth '(1 2 3 4 5 6 7 8 9 10)) 10))

(test #t (let-values (((a b) (car+cdr '(1 . 2))))
           (and (= a 1) (= b 2))))

(test '(1 2 3) (take '(1 2 3 4 5 6) 3))

(test '(1) (take '(1) 1))

(test #t (let ((x (list 1 2 3 4 5 6)))
           (eq? (cdddr x) (drop x 3))))

(test #t (let ((x (list 1 2 3)))
           (eq? x (drop x 0))))

(test '(4 5 6) (take-right '(1 2 3 4 5 6) 3))

(test #t (null? (take-right '(1 2 3 4 5 6) 0)))

(test '(2 3 . 4) (take-right '(1 2 3 . 4) 2))

(test 4 (take-right '(1 2 3 . 4) 0))

(test '(1 2 3) (drop-right '(1 2 3 4 5 6) 3))

(test '(1 2 3) (drop-right '(1 2 3) 0))

(test '(1 2 3) (drop-right '(1 2 3 . 4) 0))

(test #t (let ((x (list 1 2 3 4 5 6)))
           (let ((y (take! x 3)))
             (and (eq? x y)
                  (eq? (cdr x) (cdr y))
                  (eq? (cddr x) (cddr y))
                  (equal? y '(1 2 3))))))

(test #t (let ((x (list 1 2 3 4 5 6)))
           (let ((y (drop-right! x 3)))
             (and (eq? x y)
                  (eq? (cdr x) (cdr y))
                  (eq? (cddr x) (cddr y))
                  (equal? y '(1 2 3))))))

(test #t (let-values (((a b) (split-at '(1 2 3 4 5 6) 2)))
           (and (equal? a '(1 2))
                (equal? b '(3 4 5 6)))))

(test #t (let* ((x (list 1 2 3 4 5 6))
                (y (cddr x)))
           (let-values (((a b) (split-at! x 2)))
             (and (equal? a '(1 2))
                  (eq? a x)
                  (equal? b '(3 4 5 6))
                  (eq? b y)))))

(test 37 (last '(1 2 3 37)))

(test #f (length+ (circular-list 1 2 3)))

(test 4 (length+ '(1 2 3 4)))

(test #t (let ((x (list 1 2))
               (y (list 3 4))
               (z (list 5 6)))
           (let ((r (append! x y '() z)))
             (and (equal? r '(1 2 3 4 5 6))
                  (eq? r x)
                  (eq? (cdr r) (cdr x))
                  (eq? (cddr r) y)
                  (eq? (cdddr r) (cdr y))
                  (eq? (cddddr r) z)
                  (eq? (cdr (cddddr r)) (cdr z))))))

(test '(1 2 3 4 5 6 7 8 9)
      (concatenate '((1 2 3) (4 5 6) () (7 8 9))))

(test '(1 2 3 4 5 6 7 8 9)
      (concatenate! `(,(list 1 2 3) ,(list 4 5 6) () ,(list 7 8 9))))

(test '(1 2 3 4 5 6)
      (append-reverse '(3 2 1) '(4 5 6)))

(test '(1 2 3 4 5 6)
      (append-reverse! (list 3 2 1) (list 4 5 6)))

(test '((1 4) (2 5) (3 6))
      (zip '(1 2 3) '(4 5 6)))

(test '()
      (zip '() '() '() '()))

(test '((1 1))
      (zip '(1) (circular-list 1 2)))

(test '(1 2 3 4 5)
      (unzip1 '((1) (2) (3) (4) (5))))

(test #t (let-values (((a b) (unzip2 '((10 11) (20 21) (30 31)))))
           (and (equal? a '(10 20 30))
                (equal? b '(11 21 31)))))

(test #t (let-values (((a b c) (unzip3 '((10 11 12) (20 21 22) (30 31 32)))))
           (and (equal? a '(10 20 30))
                (equal? b '(11 21 31))
                (equal? c '(12 22 32)))))

(test #t (let-values (((a b c d) (unzip4 '((10 11 12 13)
                                           (20 21 22 23)
                                           (30 31 32 33)))))
           (and (equal? a '(10 20 30))
                (equal? b '(11 21 31))
                (equal? c '(12 22 32))
                (equal? d '(13 23 33)))))

(test #t (let-values (((a b c d e) (unzip5 '((10 11 12 13 14)
                                             (20 21 22 23 24)
                                             (30 31 32 33 34)))))
           (and (equal? a '(10 20 30))
                (equal? b '(11 21 31))
                (equal? c '(12 22 32))
                (equal? d '(13 23 33))
                (equal? e '(14 24 34)))))

(test 3 (count even? '(3 1 4 1 5 9 2 5 6)))

(test 3 (count < '(1 2 4 8) '(2 4 6 8 10 12 14 16)))

(test 2 (count < '(3 1 4 1) (circular-list 1 10)))

(test '(c 3 b 2 a 1)
      (fold cons* '() '(a b c) '(1 2 3 4 5)))

(test '(a 1 b 2 c 3)
      (fold-right cons* '() '(a b c) '(1 2 3 4 5)))

(test #t (let* ((x (list 1 2 3))
                (r (list x (cdr x) (cddr x)))
                (y (pair-fold (lambda (pair tail)
                                (set-cdr! pair tail) pair)
                              '()
                              x)))
           (and (equal? y '(3 2 1))
                (every (lambda (c) (memq c r)) (list y (cdr y) (cddr y)))
                #t)))

(test '((a b c) (b c) (c))
      (pair-fold-right cons '() '(a b c)))

(test 5 (reduce max 'illegal '(1 2 3 4 5)))

(test 0 (reduce max 0 '()))

(test '(1 2 3 4 5)
      (reduce-right append 'illegal '((1 2) () (3 4 5))))

(test '(1 4 9 16 25 36 49 64 81 100)
      (unfold (lambda (x) (> x 10))
              (lambda (x) (* x x))
              (lambda (x) (+ x 1))
              1))

(test '(1 4 9 16 25 36 49 64 81 100)
      (unfold-right zero?
                    (lambda (x) (* x x))
                    (lambda (x) (- x 1))
                    10))

(test '(4 1 5 1)
      (map + '(3 1 4 1) (circular-list 1 0)))

(test '(5 4 3 2 1)
      (let ((v 1)
            (l '()))
        (for-each (lambda (x y)
                    (let ((n v))
                      (set! v (+ v 1))
                      (set! l (cons n l))))
                  '(0 0 0 0 0)
                  (circular-list 1 2))
        l))

(test '(1 -1 3 -3 8 -8)
      (append-map (lambda (x) (list x (- x))) '(1 3 8)))


(test '(1 -1 3 -3 8 -8)
      (append-map! (lambda (x) (list x (- x))) '(1 3 8)))

(test #t (let* ((l (list 1 2 3))
                (m (map! (lambda (x) (* x x)) l)))
           (and (equal? m '(1 4 9))
                (equal? l '(1 4 9)))))

(test '(1 2 3 4 5)
      (let ((v 1))
        (map-in-order (lambda (x)
                        (let ((n v))
                          (set! v (+ v 1))
                          n))
                      '(0 0 0 0 0))))

(test '((3) (2 3) (1 2 3))
      (let ((xs (list 1 2 3))
            (l '()))
        (pair-for-each (lambda (x) (set! l (cons x l))) xs)
        l))

(test '(1 9 49)
      (filter-map (lambda (x y) (and (number? x) (* x x)))
                  '(a 1 b 3 c 7)
                  (circular-list 1 2)))

(test '(0 8 8 -4)
      (filter even? '(0 7 8 8 43 -4)))

(test #t (let-values (((a b) (partition symbol? '(one 2 3 four five 6))))
           (and (equal? a '(one four five))
                (equal? b '(2 3 6)))))

(test '(7 43)
      (remove even? '(0 7 8 8 43 -4)))

(test #t (let* ((x (list 0 7 8 8 43 -4))
                (y (pair-fold cons '() x))
                (r (filter! even? x)))
           (and (equal? '(0 8 8 -4) r)
                (every (lambda (c) (memq c y)) (pair-fold cons '() r))
                #t)))

(test #t (let* ((x (list 'one 2 3 'four 'five 6))
                (y (pair-fold cons '() x)))
           (let-values (((a b) (partition! symbol? x)))
             (and (equal? a '(one four five))
                  (equal? b '(2 3 6))
                  (every (lambda (c) (memq c y)) (pair-fold cons '() a))
                  (every (lambda (c) (memq c y)) (pair-fold cons '() b))
                  #t))))

(test #t (let* ((x (list 0 7 8 8 43 -4))
                (y (pair-fold cons '() x))
                (r (remove! even? x)))
           (and (equal? '(7 43) r)
                (every (lambda (c) (memq c y)) (pair-fold cons '() r))
                #t)))

(test 4 (find even? '(3 1 4 1 5 9 8)))

(test '(4 1 5 9 8)
      (find-tail even? '(3 1 4 1 5 9 8)))

(test #f (find-tail even? '(1 3 5 7)))

(test '(2 18)
      (take-while even? '(2 18 3 10 22 9)))

(test #t (let* ((x (list 2 18 3 10 22 9))
                (r (take-while! even? x)))
           (and (equal? r '(2 18))
                (eq? r x)
                (eq? (cdr r) (cdr x)))))

(test '(3 10 22 9)
      (drop-while even? '(2 18 3 10 22 9)))

(test #t (let-values (((a b) (span even? '(2 18 3 10 22 9))))
           (and (equal? a '(2 18))
                (equal? b '(3 10 22 9)))))

(test #t (let-values (((a b) (break even? '(3 1 4 1 5 9))))
           (and (equal? a '(3 1))
                (equal? b '(4 1 5 9)))))

(test #t (let* ((x     (list 2 18 3 10 22 9))
                (cells (pair-fold cons '() x)))
           (let-values (((a b) (span! even? x)))
             (and (equal? a '(2 18))
                  (equal? b '(3 10 22 9))
                  (every (lambda (x) (memq x cells)) (pair-fold cons '() a))
                  (every (lambda (x) (memq x cells)) (pair-fold cons '() b))
                  #t))))

(test #t (let* ((x     (list 3 1 4 1 5 9))
                (cells (pair-fold cons '() x)))
           (let-values (((a b) (break! even? x)))
             (and (equal? a '(3 1))
                  (equal? b '(4 1 5 9))
                  (every (lambda (x) (memq x cells)) (pair-fold cons '() a))
                  (every (lambda (x) (memq x cells)) (pair-fold cons '() b))
                  #t))))

(test #t (any integer? '(a 3 b 2.7)))

(test #f (any integer? '(a 3.1 b 2.7)))

(test #t (any < '(3 1 4 1 5) (circular-list 2 7 1 8 2)))

(test 'yes (any (lambda (a b) (if (< a b) 'yes #f))
                '(1 2 3) '(0 1 4)))

(test #t (every integer? '(1 2 3)))

(test #f (every integer? '(3 4 5.1)))

(test #t (every < '(1 2 3) (circular-list 2 3 4)))

(test 2 (list-index even? '(3 1 4 1 5 9)))

(test 1 (list-index < '(3 1 4 1 5 9 2 5 6) '(2 7 1 8 2)))

(test #f (list-index = '(3 1 4 1 5 9 2 5 6) '(2 7 1 8 2)))

(test '(37 48)
      (member 5 '(1 2 5 37 48) <))

(test '(1 2 5)
      (delete 5 '(1 48 2 5 37) <))

(test '(1 2 7)
      (delete 5 '(1 5 2 5 7)))

(test #t (let* ((x     (list 1 48 2 5 37))
                (cells (pair-fold cons '() x))
                (r     (delete! 5 x <)))
           (and (equal? r '(1 2 5))
                (every (lambda (x) (memq x cells)) (pair-fold cons '() r))
                #t)))

(test '((a . 3) (b . 7) (c . 1))
      (delete-duplicates '((a . 3) (b . 7) (a . 9) (c . 1))
                         (lambda (x y) (eq? (car x) (car y)))))

(test '(a b c z)
      (delete-duplicates '(a b a c a b c z) eq?))

(test #t (let* ((x     (list 'a 'b 'a 'c 'a 'b 'c 'z))
                (cells (pair-fold cons '() x))
                (r     (delete-duplicates! x)))
           (and (equal? '(a b c z) r)
                ;; XXX NOTE member, not memq as in original test
                (every (lambda (x) (member x cells)) (pair-fold cons '() r))
                #t)))

(test '(3 . #t)
      (assoc 6
             '((4 . #t) (3 . #t) (5 . #t))
             (lambda (x y)
               (zero? (remainder x y)))))

(test '((1 . #t) (2 . #f))
      (alist-cons 1 #t '((2 . #f))))

(test #t (let* ((a (list (cons 1 2) (cons 3 4)))
                (b (alist-copy a)))
           (and (equal? a b)
                (every (lambda (x) (not (memq x b))) a)
                (every (lambda (x) (not (memq x a))) b)
                #t)))

(test '((1 . #t) (2 . #t) (4 . #t))
      (alist-delete 5 '((1 . #t) (2 . #t) (37 . #t) (4 . #t) (48 #t)) <))

(test '((1 . #t) (2 . #t) (4 . #t))
      (alist-delete 7 '((1 . #t) (2 . #t) (7 . #t) (4 . #t) (7 #t))))

(test #t (let* ((x '((1 . #t) (2 . #t) (7 . #t) (4 . #t) (7 #t)))
                (y (list-copy x))
                (cells (pair-fold cons '() x))
                (r (alist-delete! 7 x)))
           (and (equal? r '((1 . #t) (2 . #t) (4 . #t)))
                (every (lambda (x) (memq x cells)) (pair-fold cons '() r))
                (every (lambda (x) (memq x y)) r)
                #t)))

(test #t (lset<= eq? '(a) '(a b a) '(a b c c)))

(test #f (lset<= eq? '(a) '(a b a) '(a)))

(test #t (lset<= eq?))

(test #t (lset<= eq? '(a)))

(test #t (lset= eq? '(b e a) '(a e b) '(e e b a)))

(test #f (lset= eq? '(b e a) '(a e b) '(e e b a c)))

(test #t (lset= eq?))

(test #t (lset= eq? '(a)))

(test '(u o i a b c d c e)
      (lset-adjoin eq? '(a b c d c e) 'a 'e 'i 'o 'u))

(test '(u o i a b c d e)
      (lset-union eq? '(a b c d e) '(a e i o u)))

(test '(x a a c)
      (lset-union eq? '(a a c) '(x a x)))

(test #t (null? (lset-union eq?)))

(test '(a b c)
      (lset-union eq? '(a b c)))

(test '(a e)
      (lset-intersection eq? '(a b c d e) '(a e i o u)))

(test '(a x a)
      (lset-intersection eq? '(a x y a) '(x a x z)))

(test '(a b c)
      (lset-intersection eq? '(a b c)))

(test '(b c d)
      (lset-difference eq? '(a b c d e) '(a e i o u)))

(test '(a b c)
      (lset-difference eq? '(a b c)))

(test #t (lset= eq? '(d c b i o u) (lset-xor eq? '(a b c d e) '(a e i o u))))

(test #t (lset= eq? '() (lset-xor eq?)))

(test #t (lset= eq? '(a b c d e) (lset-xor eq? '(a b c d e))))

(test #t (let-values (((d i) (lset-diff+intersection eq? '(a b c d e) '(c d f))))
           (and (equal? d '(a b e))
                (equal? i '(c d)))))

; FIXME: For the following five procedures, need to check that cells
; returned are from the arguments.

(test '(u o i a b c d e)
      (lset-union! eq? (list 'a 'b 'c 'd 'e) (list 'a 'e 'i 'o 'u)))

(test '(x a a c)
      (lset-union! eq? (list 'a 'a 'c) (list 'x 'a 'x)))

(test #t (null? (lset-union! eq?)))

(test '(a b c)
      (lset-union! eq? (list 'a 'b 'c)))

(test '(a e)
      (lset-intersection! eq? (list 'a 'b 'c 'd 'e)
                          (list 'a 'e 'i 'o 'u)))

(test '(a x a)
      (lset-intersection! eq? (list 'a 'x 'y 'a)
                          (list 'x 'a 'x 'z)))

(test '(a b c)
      (lset-intersection! eq? (list 'a 'b 'c)))

(test '(b c d)
      (lset-difference! eq? (list 'a 'b 'c 'd 'e)
                        (list 'a 'e 'i 'o 'u)))

(test '(a b c)
      (lset-difference! eq? (list 'a 'b 'c)))

(test #t (lset= eq? '(d c b i o u)
                     (lset-xor! eq? (list 'a 'b 'c 'd 'e)
                                    (list 'a 'e 'i 'o 'u))))

(test #t (lset= eq? '() (lset-xor! eq?)))

(test #t (lset= eq? '(a b c d e) (lset-xor! eq? (list 'a 'b 'c 'd 'e))))

(test #t (let-values (((d i) (lset-diff+intersection! eq? (list 'a 'b 'c 'd 'e)
                                                      (list 'c 'd 'f))))
           (and (equal? d '(a b e))
                (equal? i '(c d)))))

(test-end "srfi-1")
