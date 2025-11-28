#lang racket
(define (inc x) (+ x 1))
(define (identity x)  x)


(define (term-for-pi-sum a) (/ 1.0 (* a (+ a 2))))
(define (next-for-pi-sum a) (+ a 4))
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))
(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))

;; (define (simpson f a b n)
;;   (define h (/ (- b a) n))
;;   (define yk (k) (f (+ a (* k h))))
; (define (<name> a b)
;(if (> a b)
; 0
; (+ (<term> a)
;    (<name> (<next> a) b))))
;; (define (sum term a next b)
;; (define (iter a result)
;; (if <??>
;; <??>
;; (iter <??> <??>)))
;; (iter <??> <??>))

;; (define (term f a h n k)
;;   (* (cond ((or (= k 0) (= k n)) 1)   ; first or last term
;;           ((even? k) 2)               ; even index
;;           (else 4))                   ; odd index
;;      (yk f a h k)))                   ; multiply by f(a + k*h)



(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))

(define (ykk f k a h) (f (+ a (* k h))))

(define (simpson f a b n)
  (let ((h (/ (- b a) n)))


    (define (term k)
      (* (cond ((or (= k 0) (= k n)) 1)
              ((even? k) 2)
              (else 4))
         (ykk f  k a h)))

    (* (/ h 3)
       (sum term 0 inc n))))
(define (cube x) (* x x x))
(simpson cube 0 1.0 100)

;; (define (simpson f a b n)
;;   (let ((h (/ (- b a) n)))
;;
;;     (define (yk k)
;;       (f (+ a (* k h))))
;;
;;     (define (term k)
;;       (* (cond ((or (= k 0) (= k n)) 1)
;;               ((even? k) 2)
;;               (else 4))
;;          (yk k)))
;;     (* (/ h 3)
;;        (sum term 0 (lambda (x) (+ x 1)) n)))) explain this
