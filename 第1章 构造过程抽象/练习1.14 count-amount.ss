(define (count-amount amount)
  (cc amount 5))

(define (cc amount kind)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kind 0)) 0)
        (else (+ (cc amount 
                     (- kind 1))
                 (cc (- amount 
                        (coins kind))
                     kind)))))

(define (coins kind)
  (case kind
    ((1) 1)
    ((2) 5)
    ((3) 10)
    ((4) 25)
    ((5) 50)))

; 4
(display (count-amount 11))