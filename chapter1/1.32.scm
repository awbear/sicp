; accumulate recursively
(define (accumulate-recur combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (term a)
              (accumulate-recur combiner null-value term (next a) next b))))

(define (term x) x)

(define (next x) (+ x 1))


(define (sum-recur term a next b)
  (accumulate-recur + 0 term a next b))

(define (product-recur term a next b)
  (accumulate-recur * 1 term a next b))

(sum-recur term 0 next 5)

(product-recur term 1 next 5)

; accumulate iterative
(define (accumulate-iter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (combiner result (term a)))))
  (iter a null-value))

(define (sum-iter term a next b)
  (accumulate-iter + 0 term a next b))

(define (product-iter term a next b)
  (accumulate-iter * 1 term a next b))

(sum-iter term 0 next 5)

(product-iter term 1 next 5)
