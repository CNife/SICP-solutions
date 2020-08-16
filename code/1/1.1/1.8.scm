#lang sicp

(define (cube-root x)

  (define (cube-root-iter prev-guess guess x)
    (if (good-enough? prev-guess guess)
        guess
        (cube-root-iter guess (improve guess x) x)))

  (define (good-enough? prev-guess guess)
    (< (abs (/ (- prev-guess guess) guess))
       0.001))

  (define (improve guess x)
    (/ (+ (/ x (square guess))
          (* 2 guess))
       3))

  (define (square x)
    (* x x))
  
  (cube-root-iter 0.0 1.0 x))

(cube-root 27)       ; 3
(cube-root 0.000001) ; 0.01
(cube-root 1e35)     ; 4.6416e11
