#lang sicp

(define (multiply a b)

  (define (multiply-iter a b prev-a)
    (if (= b 1)
        (+ a prev-a)
        (multiply-iter (+ (double a) prev-a)
                       (halve b)
                       (if (even? b) 0 a))))

  (define (double n)
    (+ n n))

  (define (halve n)
    (quotient n 2))

  (if (> a b)
      (multiply-iter a b 0)
      (multiply-iter b a 0)))

(multiply 6 10) ; 60
