#lang sicp

(define (my-sqrt x)
  
  (define (sqrt-iter prev-guess guess x)
    (if (new-good-enough? prev-guess guess)
        guess
        (sqrt-iter guess (improve guess x) x)))

  ; 当 (prev-guess - guess) / guess < 0.001 时停止迭代
  (define (new-good-enough? prev-guess guess)
    (< (abs (/ (- prev-guess guess) guess)) 0.001))

  (define (improve guess x)
    (average guess (/ x guess)))

  (define (average x y)
    (/ (+ x y) 2))
  
  (sqrt-iter 0.0 1.0 x))

(my-sqrt 0.0001)
(my-sqrt 1e35)