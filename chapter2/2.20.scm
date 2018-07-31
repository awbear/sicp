
(define (same-parity first . w)
  (define (iter operation l result)
    (cond ((null? l) result)
          ((operation (car l)) (iter operation (cdr l) (cons (car l) result)))
          (else (iter operation (cdr l) result))))
  (iter (if (even? first) even? odd?) (cons first w) '()))


(same-parity 1 2 3 4 5 6 7)

(same-parity 2 3 4 5 6 7)
