(define (cube-root x)
  (cube-root-iter 0.0 1.0 x))

(define (cube-root-iter prev-guess guess x)
  (if (good-enough? prev-guess guess)
      guess
      (cube-root-iter guess 
                      (improve guess x) 
                      x)))

(define (good-enough? prev-guess guess)
  (< (abs (/ (- prev-guess guess) guess)) 0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (square x)
  (* x x))
