#lang sicp

; 递归
(define (f-recursion x)
  (if (< x 3)
      x
      (+ (f-recursion (- x 1))
         (* 2 (f-recursion (- x 2)))
         (* 3 (f-recursion (- x 3))))))

; 迭代
(define (f-iteration x)
  (define (f-iterator a b c i x)
    (if (= i x)
        c
        (f-iterator (+ a (* b 2) (* c 3))
                    a
                    b
                    (+ i 1)
                    x)))
  (f-iterator 2 1 0 0 x))

(= (f-recursion 10)
   (f-iteration 10)) ; #t

(= (f-recursion 1)
   (f-iteration 1)) ; #t
