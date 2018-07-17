(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))


(define (multiply a b)
  (cond ((or (= a 0) (= b 0))
         0)
        ((even? b)
         (double (multiply a (halve b))))
        (else (+ a (multiply a (- b 1))))
        ))

(multiply 0 1)

(multiply 1 0)

(multiply 2 3)
