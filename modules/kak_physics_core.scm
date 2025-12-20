;;; ============================================================
;;; modules/kak_physics_core.scm
;;; 物理エンジンコア (Yee格子, Maxwell更新)
;;; ============================================================

(declare (unit kak_physics_core))
(declare (uses srfi-4)) 

(module kak_physics_core
  (make-yee-grid
   update-e-fields!
   update-h-fields!
   yee-grid-fields
   grid-width
   grid-height
   grid-ez
   grid-hx
   grid-hy
   grid-dt
   grid-dx
   grid-eps
   grid-mu)

  (import scheme 
          (chicken base)
          (chicken format)
          srfi-4) ; f64vector を使用

  ;; Yee格子のデータ構造 (2D TMモードを想定: Ez, Hx, Hy)
  (define-record-type yee-grid
    (make-yee-grid-raw width height ez hx hy dt dx eps mu)
    yee-grid?
    (width  grid-width)
    (height grid-height)
    (ez     grid-ez) ; f64vector
    (hx     grid-hx) ; f64vector
    (hy     grid-hy) ; f64vector
    (dt     grid-dt)
    (dx     grid-dx)
    (eps    grid-eps)
    (mu     grid-mu))

  (define (yee-grid-fields g)
    (values (grid-ez g) (grid-hx g) (grid-hy g)))

  (define (make-yee-grid w h dt dx eps mu)
    (let ((size (* w h)))
      (make-yee-grid-raw w h 
                         (make-f64vector size 0.0)
                         (make-f64vector size 0.0)
                         (make-f64vector size 0.0)
                         dt dx eps mu)))

  ;; --- 物理カーネル: Maxwell更新式 ---

  (define (update-e-fields! grid)
    "Ez[i,j] = Ez[i,j] + (dt/eps) * ((Hy[i,j] - Hy[i-1,j])/dx - (Hx[i,j] - Hx[i,j-1])/dx)"
    (let* ((w (grid-width grid))
           (h (grid-height grid))
           (ez (grid-ez grid))
           (hx (grid-hx grid))
           (hy (grid-hy grid))
           (coeff (/ (grid-dt grid) (grid-eps grid) (grid-dx grid))))
      ;; 簡略化のため、全格子更新のループ (本来は境界チェックが必要)
      (do ((i 1 (+ i 1))) ((= i (- w 1)))
        (do ((j 1 (+ j 1))) ((= j (- h 1)))
          (let ((idx (+ (* j w) i))
                (idx-m1-i (+ (* j w) (- i 1)))
                (idx-m1-j (+ (* (- j 1) w) i)))
            (f64vector-set! ez idx
              (+ (f64vector-ref ez idx)
                 (* coeff (- (- (f64vector-ref hy idx) (f64vector-ref hy idx-m1-i))
                             (- (f64vector-ref hx idx) (f64vector-ref hx idx-m1-j)))))))))))

  (define (update-h-fields! grid)
    "Hx, Hy の更新 (Eの回転を取る)"
    (let* ((w (grid-width grid))
           (h (grid-height grid))
           (ez (grid-ez grid))
           (hx (grid-hx grid))
           (hy (grid-hy grid))
           (coeff (/ (grid-dt grid) (grid-mu grid) (grid-dx grid))))
      (do ((i 0 (+ i 1))) ((= i (- w 1)))
        (do ((j 0 (+ j 1))) ((= j (- h 1)))
          (let ((idx (+ (* j w) i))
                (idx-p1-i (+ (* j w) (+ i 1)))
                (idx-p1-j (+ (* (+ j 1) w) i)))
            ;; Hx update
            (f64vector-set! hx idx
              (- (f64vector-ref hx idx)
                 (* coeff (- (f64vector-ref ez idx-p1-j) (f64vector-ref ez idx)))))
            ;; Hy update
            (f64vector-set! hy idx
              (+ (f64vector-ref hy idx)
                 (* coeff (- (f64vector-ref ez idx-p1-i) (f64vector-ref ez idx)))))))))))