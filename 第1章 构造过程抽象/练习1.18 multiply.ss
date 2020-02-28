(define (multiply a b)
  (assert (and (integer? a) (> a 0)
               (integer? b) (> b 0)))
  
  (if (> a b)
      (multiply-iter a b 0)
      (multiply-iter b a 0)))

(define (multiply-iter a b prev-a)
  (if (= b 1)
      (+ a prev-a)
      (multiply-iter (+ (double a) prev-a)
                        (halve b)
                        (if (even-integer? b) 0 a))))

(define (even-integer? n)
  (= n
     (double (halve n))))

(define (double n)
  (+ n n))

(define (halve n)
  (quotient n 2))

; 60
(multiply 6 10)