#lang racket
; ematical function called Ackermann’s function.
 (define (A x y)
 (cond ((= y 0) 0)
 ((= x 0) (* 2 y))
 ((= y 1) 2)
 (else (A (- x 1) (A x (- y 1))))))
; What are the values of the following expressions?
 (A 1 10) ;1024
 (A 2 4) ; 65536
 (A 3 3) ; 65536
; Consider the following procedures, where A is the proce-
; dure defined above:
 (define (f n) (A 0 n))
(f 1 ) ;2
(f 2) ;4
(f 3); 6
(f 4); 8
(f 5) ;10
; so (f n) = 2 * n
 (define (g n) (A 1 n))
(g 1) ;2
(g 2) ;4
(g 3) ;8
(g 4) ;16
; so (g n) = 2 ^n
 (define (h n) (A 2 n))
(h 1)
(h 2)
(h 3)
(h 4)
; i guess n^2
 (define (k n) (* 5 n n))
; Give concise mathematical definitions for the functions com-
; puted by the procedures f, g, and h for positive integer val-
; ues of n. For example, (k n) computes 5n2


