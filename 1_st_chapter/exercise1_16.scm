(define (fast-expt b n)
  (define (iter a b n)
    (cond ((= n 0) a)
          ((even? n)
           (iter a (square b) (/ n 2)))
          (else
            (iter (* b a) b (- n 1)))))
  (iter 1 b n))

;; how this works??
;; (fast-expt 2 4)
; (iter 1 2 4)
; (iter 1 (square 2) (/ 4 2)) => (iter 1 4 2)
; (iter 1 4 2) =>
