#lang racket
; Exercise 1.4. Observe that our model of evaluation allows for combinations whose operators
; are compound expressions. Use this observation to describe the behavior of the following
; procedure:

(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))



(a-plus-abs-b 10 -2)
;; It returns (+ a b) if b is positive, (- a b) if negative, in both cases, the procedure is equivalent to a + |b|
