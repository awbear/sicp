(define (power x y)
  (define (power-iter a result n)
    (if (= n 0)
      result
      (power-iter a (* a result) (- n 1))))
  (power-iter x 1 y))

(power 2 3)


(define (cons a b)
  (* (power 2 a) (power 3 b)))

(define (car c)
  (if (= 0 (remainder c 2))
    (+ 1 (car (/ c 2)))
    0))

(define (cdr c)
  (if (= 0 (remainder c 3))
    (+ 1 (cdr (/ c 3)))
    0))

(car (cons 2 3))

(cdr (cons 2 3))
