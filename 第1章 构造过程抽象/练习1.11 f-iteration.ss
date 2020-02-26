(define (f-iteration x)
  (f-iter 0 1 2 x))

(define (f-iter a b c x)
  (if (< x 3)
      c
      (f-iter b
              c
              (+ (* a 3) (* b 2) c)
              (- x 1))))

(display (f-iteration 10))