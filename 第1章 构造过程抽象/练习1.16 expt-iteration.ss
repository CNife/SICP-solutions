(define (my-expt x n)
  (assert (and (integer? n) (>= n 0)))
  
  (cond ((= x 0) 0)
        ((= x 1) 1)
        (else (my-expt-iter x n 1))))

(define (my-expt-iter x n prev-x)
  (if (= n 0)
      prev-x
      (my-expt-iter (* x x prev-x)
                    (shift-right-1 n)
                    (if (odd? n) x 1))))

(define (shift-right-1 n)
  (/ (if (odd? n)
         (- n 1)
         n)
     2))

; 1024
(my-expt 2 10)