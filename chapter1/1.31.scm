; product recursively
(define (product-recur term a next b)
  (if (> a b)
      1
      (* (term a) (product-recur term (next a) next b))))


(define (term a) a)

(define (inc n) (+ n 1))

(product-recur term 1 inc 5)


; product iterative
(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))


(product-iter term 1 inc 5)


; factorial

(define (factorial n)
  (product-iter term 1 inc n))

(factorial 5)


; compute pi

(define (gen-numerator n)
  (cond ((= n 1) 2)
        ((even? n)
            (+ n 2))
        (else (+ n 1))))

(define (gen-denominator n)
  (if (even? n)
      (+ n 1)
      (+ n 2)))

(define (pi n)
  (* 4 (/ (product-iter gen-numerator 1 inc n)
          (product-iter gen-denominator 1 inc n))))

(pi 5)

