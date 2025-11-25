#lang racket
; Exercise 1.8. Newton's method for cube roots is based on the fact that if y is an approximation
; to the cube root of x, then a better approximation is given by the value
; Use this formula to implement a cube-root procedure analogous to the square-root procedure.
; (In section 1.3.4 we will see how to implement Ne

; (x /y^2 + 2y )/ 3
; take cube
(define (cube x) (* x x x))
; new improve algo
(define (improve y x)
  (/
    (+
      (/ x (square y))
      (* 2 y))
    3))
; same logic as sqr-iter
(define (cbrt-iter y x)
  (if (good-enough? y x)
      y
      (cbrt-iter (improve y x) x)))

; same
(define (good-enough? y x)
  (< (abs (- (cube y) x)) 0.001))
; same
(define (cbrt x)
  (cbrt-iter 1.0 x))
