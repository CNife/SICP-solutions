(define (multiply a b)
  (assert (integer? a))
  (assert (and (integer? b) (>= b 0)))

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
  (assert (even? n))
  (/ n 2))

; 30
(multiply 3 10)