(define (pascal n)
  (pascal-row 1 n))

(define (pascal-row row col)
  (cond ((or (= row 0) (= col 0)) 1)
        (else (+ (pascal-row (- row 1) (- col 1))
                 (pascal-row (- row 1) col))))
