#lang sicp

(define (multiply a b)
  (cond ((= b 0)
         0)
        ((odd? b)
         (+ a (multiply a (- b 1))))
        (else
         (multiply (double a)
                   (halve b)))))

(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(multiply 3 10) ; 30
