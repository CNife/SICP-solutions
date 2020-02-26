(define (f-recursion x)
  (if (< x 3)
      x
      (+ (f-recursion (- x 1))
         (* 2 (f-recursion (- x 2)))
         (* 3 (f-recursion (- x 3))))))

(display (f-recursion 10))