(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (multiply a b)
  (multiply-iter a b 0))


(define (multiply-iter a b sum)
  (cond ((or (= a 0) (= b 0))
         sum)
        ((even? b)
         (multiply-iter (double a) (halve b) sum))
        (else (multiply-iter a (- b 1) (+ sum a)))))

(multiply 0 1)

(multiply 1 0)

(multiply 2 3)

(multiply 3 4)
