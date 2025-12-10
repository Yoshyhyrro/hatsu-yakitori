;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; SRFI 116 tests adapted for SRFI 1.
;;;
;;; Copyright (C) John Cowan 2014. All Rights Reserved.
;;;
;;; Permission is hereby granted, free of charge, to any person obtaining a
;;; copy of this software and associated documentation files (the "Software"),
;;; to deal in the Software without restriction, including without limitation
;;; the rights to use, copy, modify, merge, publish, distribute, sublicense,
;;; and/or sell copies of the Software, and to permit persons to whom the
;;; Software is furnished to do so, subject to the following conditions:
;;;
;;; The above copyright notice and this permission notice shall be included in
;;; all copies or substantial portions of the Software.
;;;
;;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
;;; THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;;; FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;;; DEALINGS IN THE SOFTWARE.
;;;

(import srfi-1 test)

(test-group "lists"

(test-group "lists/constructors"
  (define abc (list 'a 'b 'c))
  (test 'a (car abc))
  (test 'b (cadr abc))
  (test 'c (caddr abc))
  (test (cons 2 1) (xcons 1 2))
  (define abc-dot-d (cons* 'a 'b 'c 'd))
  (test 'd (cdddr abc-dot-d))
  (test '(c c c c) (make-list 4 'c))
  (test '(0 1 2 3) (list-tabulate 4 values))
  (test '(0 1 2 3 4) (iota 5))
) ; end lists/constructors

(test-group "lists/predcates"
  (test-assert (pair? (cons 1 2)))
  (test-assert (proper-list? '()))
  (test-assert (proper-list? '(1 2 3)))
  (test-assert (list? '()))
  (test-assert (list? '(1 2 3)))
  (test-assert (dotted-list? (cons 1 2)))
  (test-assert (dotted-list? 2))
  (test-assert (null-list? '()))
  (test-assert (not (null-list? '(1 2 3))))
  (test-error (null-list? 'a))
  (test-assert (not-pair? 'a))
  (test-assert (not (not-pair? (cons 'a 'b))))
  (test-assert (list= = '(1 2 3) '(1 2 3)))
  (test-assert (not (list= = '(1 2 3 4) '(1 2 3))))
  (test-assert (not (list= = '(1 2 3) '(1 2 3 4))))
  (test-assert (list= = '(1 2 3) '(1 2 3)))
  (test-assert (not (list= = '(1 2 3) '(1 2 3 4) '(1 2 3 4))))
  (test-assert (not (list= = '(1 2 3) '(1 2 3) '(1 2 3 4))))
) ; end list/predcates

(test-group "list/cxrs"
  (define ab (cons 'a 'b))
  (define cd (cons 'c 'd))
  (define ef (cons 'e 'f))
  (define gh (cons 'g 'h))
  (define abcd (cons ab cd))
  (define efgh (cons ef gh))
  (define abcdefgh (cons abcd efgh))
  (define ij (cons 'i 'j))
  (define kl (cons 'k 'l))
  (define mn (cons 'm 'n))
  (define op (cons 'o 'p))
  (define ijkl (cons ij kl))
  (define mnop (cons mn op))
  (define ijklmnop (cons ijkl mnop))
  (define abcdefghijklmnop (cons abcdefgh ijklmnop))
  (test 'a (caar abcd))
  (test 'b (cdar abcd))
  (test 'c (cadr abcd))
  (test 'd (cddr abcd))
  (test 'a (caaar abcdefgh))
  (test 'b (cdaar abcdefgh))
  (test 'c (cadar abcdefgh))
  (test 'd (cddar abcdefgh))
  (test 'e (caadr abcdefgh))
  (test 'f (cdadr abcdefgh))
  (test 'g (caddr abcdefgh))
  (test 'h (cdddr abcdefgh))
  (test 'a (caaaar abcdefghijklmnop))
  (test 'b (cdaaar abcdefghijklmnop))
  (test 'c (cadaar abcdefghijklmnop))
  (test 'd (cddaar abcdefghijklmnop))
  (test 'e (caadar abcdefghijklmnop))
  (test 'f (cdadar abcdefghijklmnop))
  (test 'g (caddar abcdefghijklmnop))
  (test 'h (cdddar abcdefghijklmnop))
  (test 'i (caaadr abcdefghijklmnop))
  (test 'j (cdaadr abcdefghijklmnop))
  (test 'k (cadadr abcdefghijklmnop))
  (test 'l (cddadr abcdefghijklmnop))
  (test 'm (caaddr abcdefghijklmnop))
  (test 'n (cdaddr abcdefghijklmnop))
  (test 'o (cadddr abcdefghijklmnop))
  (test 'p (cddddr abcdefghijklmnop))
) ; end lists/cxrs

(test-group "lists/selectors"
  (test 'c (list-ref '(a b c d) 2))
  (define ten (list 1 2 3 4 5 6 7 8 9 10))
  (test 1 (first ten))
  (test 2 (second ten))
  (test 3 (third ten))
  (test 4 (fourth ten))
  (test 5 (fifth ten))
  (test 6 (sixth ten))
  (test 7 (seventh ten))
  (test 8 (eighth ten))
  (test 9 (ninth ten))
  (test 10 (tenth ten))
  (test-error (list-ref '() 2))
  (test '(1 2) (call-with-values (lambda () (car+cdr (cons 1 2))) list))
  (define abcde '(a b c d e))
  (define dotted (cons 1 (cons 2 (cons 3 'd))))
  (test '(a b) (take abcde 2))
  (test '(c d e) (drop abcde 2))
  (test '(c d e) (list-tail abcde 2))
  (test '(1 2) (take dotted 2))
  (test (cons 3 'd) (drop dotted 2))
  (test (cons 3 'd) (list-tail dotted 2))
  (test 'd (drop dotted 3))
  (test 'd (list-tail dotted 3))
  (test abcde (append (take abcde 4) (drop abcde 4)))
  (test '(d e) (take-right abcde 2))
  (test '(a b c) (drop-right abcde 2))
  (test (cons 2 (cons 3 'd)) (take-right dotted 2))
  (test '(1) (drop-right dotted 2))
  (test 'd (take-right dotted 0))
  (test '(1 2 3) (drop-right dotted 0))
  (test abcde (call-with-values (lambda () (split-at abcde 3)) append))
  (test 'c (last '(a b c)))
  (test '(c) (last-pair '(a b c)))
) ; end lists/selectors

(test-group "lists/misc"
  (test 0 (length '()))
  (test 3 (length '(1 2 3)))
  (test '(x y) (append '(x) '(y)))
  (test '(a b c d) (append '(a b) '(c d)))
  (test '(a) (append '() '(a)))
  (test '(x y) (append '(x y)))
  (test '() (append))
  (test '(a b c d) (concatenate '((a b) (c d))))
  (test '(c b a) (reverse '(a b c)))
  (test '((e (f)) d (b c) a) (reverse '(a (b c) d (e (f)))))
  (test (cons 2 (cons 1 'd)) (append-reverse '(1 2) 'd))
  (test '((one 1 odd) (two 2 even) (three 3 odd))
    (zip '(one two three) '(1 2 3) '(odd even odd)))
  (test '((1) (2) (3)) (zip '(1 2 3)))
  (test '(1 2 3) (unzip1 '((1) (2) (3))))
  (test '((1 2 3) (one two three))
    (call-with-values
      (lambda () (unzip2 '((1 one) (2 two) (3 three))))
      list))
  (test '((1 2 3) (one two three) (a b c))
    (call-with-values
      (lambda () (unzip3 '((1 one a) (2 two b) (3 three c))))
      list))
  (test '((1 2 3) (one two three) (a b c) (4 5 6))
    (call-with-values
      (lambda () (unzip4 '((1 one a 4) (2 two b 5) (3 three c 6))))
      list))
  (test '((1 2 3) (one two three) (a b c) (4 5 6) (#t #f #t))
    (call-with-values
      (lambda () (unzip5 '((1 one a 4 #t) (2 two b 5 #f) (3 three c 6 #t))))
      list))
  (test 3 (count even? '(3 1 4 1 5 9 2 5 6)))
  (test 3 (count < '(1 2 4 8) '(2 4 6 8 10 12 14 16)))
) ; end lists/misc

(test-group "lists/folds"
  ;; We have to be careful to test both single-list and multiple-list
  ;; code paths, as they are different in this implementation.

  (define lis '(1 2 3))
  (test 6 (fold + 0 lis))
  (test '(3 2 1) (fold cons '() lis))
  (test 2 (fold
            (lambda (x count) (if (symbol? x) (+ count 1) count))
            0
            '(a 0 b)))
  (test 4 (fold
            (lambda (s max-len) (max max-len (string-length s)))
            0
            '("ab" "abcd" "abc")))
  (test 32 (fold
             (lambda (a b ans) (+ (* a b) ans))
             0
             '(1 2 3)
             '(4 5 6)))
  (define (z x y ans) (cons (list x y) ans))
  (test '((b d) (a c))
    (fold z '() '(a b) '(c d)))
  (test lis (fold-right cons '() lis))
  (test '(0 2 4) (fold-right
                   (lambda (x l) (if (even? x) (cons x l) l))
                   '()
                   '(0 1 2 3 4)))
  (test '((a c) (b d))
    (fold-right z '() '(a b) '(c d)))
  (test '((c) (b c) (a b c))
    (pair-fold cons '() '(a b c)))
  (test '(((b) (d)) ((a b) (c d)))
    (pair-fold z '() '(a b) '(c d)))
  (test '((a b c) (b c) (c))
    (pair-fold-right cons '() '(a b c)))
  (test '(((a b) (c d)) ((b) (d)))
    (pair-fold-right z '() '(a b) '(c d)))
  (test 5 (reduce max 0 '(1 3 5 4 2 0)))
  (test 1 (reduce - 0 '(1 2)))
  (test -1 (reduce-right - 0 '(1 2)))
  (define squares '(1 4 9 16 25 36 49 64 81 100))
  (test squares
   (unfold (lambda (x) (> x 10))
     (lambda (x) (* x x))
     (lambda (x) (+ x 1))
     1))
  (test squares
    (unfold-right zero?
      (lambda (x) (* x x))
      (lambda (x) (- x 1))
      10))
  (test '(1 2 3) (unfold null-list? car cdr '(1 2 3)))
  (test '(3 2 1) (unfold-right null-list? car cdr '(1 2 3)))
  (test '(1 2 3 4)
    (unfold null-list? car cdr '(1 2) (lambda (x) '(3 4))))
  (test '(b e h) (map cadr '((a b) (d e) (g h))))
  (test '(b e h) (map-in-order cadr '((a b) (d e) (g h))))
  (test '(5 7 9) (map + '(1 2 3) '(4 5 6)))
  (test '(5 7 9) (map-in-order + '(1 2 3) '(4 5 6)))
  (define z (let ((count 0)) (lambda (ignored) (set! count (+ count 1)) count)))
  (test '(1 2) (map-in-order z '(a b)))
  (test '#(0 1 4 9 16)
    (let ((v (make-vector 5)))
      (for-each (lambda (i)
                  (vector-set! v i (* i i)))
                '(0 1 2 3 4))
    v))
  (test '#(5 7 9 11 13)
    (let ((v (make-vector 5)))
      (for-each (lambda (i j)
                  (vector-set! v i (+ i j)))
                '(0 1 2 3 4)
                '(5 6 7 8 9))
    v))
  (test '(1 -1 3 -3 8 -8)
    (append-map (lambda (x) (list x (- x))) '(1 3 8)))
  (test '(1 4 2 5 3 6)
    (append-map list '(1 2 3) '(4 5 6)))
  (test (vector '(0 1 2 3 4) '(1 2 3 4) '(2 3 4) '(3 4) '(4))
    (let ((v (make-vector 5)))
      (pair-for-each (lambda (lis) (vector-set! v (car lis) lis)) '(0 1 2 3 4))
    v))
  (test (vector '(5 6 7 8 9) '(6 7 8 9) '(7 8 9) '(8 9) '(9))
    (let ((v (make-vector 5)))
      (pair-for-each (lambda (i j) (vector-set! v (car i) j))
                '(0 1 2 3 4)
                '(5 6 7 8 9))
    v))
  (test '(1 9 49)
    (filter-map (lambda (x) (and (number? x) (* x x))) '(a 1 b 3 c 7)))
  (test '(5 7 9)
    (filter-map
      (lambda (x y) (and (number? x) (number? y) (+ x y)))
      '(1 a 2 b 3 4)
      '(4 0 5 y 6 z)))
) ; end lists/folds

(test-group "lists/filtering"
  (test '(0 8 8 -4) (filter even? '(0 7 8 8 43 -4)))
  (test (list '(one four five) '(2 3 6))
    (call-with-values
      (lambda () (partition symbol? '(one 2 3 four five 6)))
      list))
  (test '(7 43) (remove even? '(0 7 8 8 43 -4)))
) ; end lists/filtering

(test-group "lists/searching"
  (test 2 (find even? '(1 2 3)))
  (test #t (any  even? '(1 2 3)))
  (test #f (find even? '(1 7 3)))
  (test #f (any  even? '(1 7 3)))
  (test-error (find even? (cons (1 (cons 3 x)))))
  (test-error (any  even? (cons (1 (cons 3 x)))))
  (test 4 (find even? '(3 1 4 1 5 9)))
  (test '(-8 -5 0 0) (find-tail even? '(3 1 37 -8 -5 0 0)))
  (test '(2 18) (take-while even? '(2 18 3 10 22 9)))
  (test '(3 10 22 9) (drop-while even? '(2 18 3 10 22 9)))
  (test (list '(2 18) '(3 10 22 9))
    (call-with-values
      (lambda () (span even? '(2 18 3 10 22 9)))
      list))
  (test (list '(3 1) '(4 1 5 9))
    (call-with-values
      (lambda () (break even? '(3 1 4 1 5 9)))
      list))
  (test #t (any integer? '(a 3 b 2.7)))
  (test #f (any integer? '(a 3.1 b 2.7)))
  (test #t (any < '(3 1 4 1 5) '(2 7 1 8 2)))
  (test #t (every integer? '(1 2 3 4 5)))
  (test #f (every integer? '(1 2 3 4.5 5)))
  (test #t (every < '(1 2 3) '(4 5 6)))
  (test 2 (list-index even? '(3 1 4 1 5 9)))
  (test 1 (list-index < '(3 1 4 1 5 9 2 5 6) '(2 7 1 8 2)))
  (test #f (list-index = '(3 1 4 1 5 9 2 5 6) '(2 7 1 8 2)))
  (test '(a b c) (memq 'a '(a b c)))
  (test '(b c) (memq 'b '(a b c)))
  (test #f (memq 'a '(b c d)))
  (test #f (memq (list 'a) '(b (a) c)))
  (test '((a) c) (member (list 'a) '(b (a) c)))
  (test '(101 102) (memv 101 '(100 101 102)))
) ; end lists/searching

(test-group "lists/deletion"
  (test '(1 2 4 5) (delete 3 '(1 2 3 4 5)))
  (test '(3 4 5) (delete 5 '(3 4 5 6 7) <))
  (test '(a b c z) (delete-duplicates '(a b a c a b c z)))
) ; end lists/deletion

(test-group "lists/alists"
  (define e '((a 1) (b 2) (c 3))) (test '(a 1) (assq 'a e))
  (test '(b 2) (assq 'b e))
  (test #f (assq 'd e))
  (test #f (assq (list 'a) '(((a)) ((b)) ((c)))))
  (test '((a)) (assoc (list 'a) '(((a)) ((b)) ((c)))))
  (define e2 '((2 3) (5 7) (11 13)))
  (test '(5 7) (assv 5 e2))
  (test '(11 13) (assoc 5 e2 <))
  (test (cons '(1 1) e2) (alist-cons 1 (list 1) e2))
  (test '((2 3) (11 13)) (alist-delete 5 e2))
  (test '((2 3) (5 7)) (alist-delete 5 e2 <))
) ; end lists/alists

(test-group "lists/mutators"
  (define x (cons 1 2))
  (set-car! x 3)
  (test x '(3 . 2))
  (set-cdr! x 4)
  (test x '(3 . 4))
) ; end lists/mutators

) ; end lists
