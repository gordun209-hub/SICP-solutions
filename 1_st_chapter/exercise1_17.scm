(define (multiply a b)
  (if (= b 0)
    0
    (+ a (multiply a (- b 1)))))

(define (double x) (+ x x))
(define (half-of x) (/ x 2))

(define (fast-multiply a b)
  (cond ((= b 0) 0)
        ((even? b) (double (fast-multiply a (half-of b))))
        (else (+ a (fast-multiply a (- b 1))))))

