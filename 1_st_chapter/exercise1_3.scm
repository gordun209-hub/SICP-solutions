#lang racket

;Define a procedure that takes three numbers as arguments and returns the sum of
;the squares of the two larger numbers
(define (take_three_return_sum_of_square_of_two_larger_numbers x y z)
  (cond
    ((and (< x y) (< x z)) (* (* z z) (* y y)))
    ((and (< y x) (< y z)) (* (* x x) (* y y)))
    ((and (< z x) (< z y)) (* ( * x x) (* y y)))))

(take_three_return_sum_of_square_of_two_larger_numbers 1 2 3)
        
