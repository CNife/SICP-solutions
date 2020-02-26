(define (my-sqrt x)
  (sqrt-iter 0.0 1.0 x))

(define (sqrt-iter prev-guess guess x)
  (if (new-good-enough? prev-guess guess)
    guess
    (sqrt-iter guess (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (new-good-enough? prev-guess guess)
  (< (abs (/ (- prev-guess guess) guess)) 0.001))