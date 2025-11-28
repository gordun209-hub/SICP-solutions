#lang scheme
; Exercise 1.25: Alyssa P. Hacker complains that we went to
; a lot of extra work in writing expmod. Aer all, she says,
; since we already know how to compute exponentials, we
; could have simply wrien
 (define (expmod base exp m)
 (remainder (fast-expt base exp) m))
; Is she correct? Would this procedure serve as well for our
; fast prime tester? Explain
; ANSWER: I guess it turns this procedure to recursive or something like that
;
