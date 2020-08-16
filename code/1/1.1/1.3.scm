#lang sicp

(define (max-2-square-sum a b c)
  (define (sum-of-square x y)
    (+ (* x x) (* y y)))
  (if (> a b)
      (if (> b c)
          (sum-of-square a b)
          (sum-of-square a c))
      (if (> a c)
          (sum-of-square a b)
          (sum-of-square b c))))

(max-2-square-sum 0 2 2) ; 8
(max-2-square-sum 1 2 3) ; 13
(max-2-square-sum 3 5 7) ; 74
