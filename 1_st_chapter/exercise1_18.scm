(define (fast-multiply a b)
  (define (iter c a b)
    (cond ((= b 0) c)
          ((even? b) (iter c (double a) (half-of b)))
          (else (iter (+ c a) a (- b 1)))))
  (iter 0 a b))


