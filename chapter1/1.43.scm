(load "1.42.scm")

(define (repeated f n)
  (define (iter fn i)
    (if (= i 1)
        fn
        (iter (compose f fn) (- i 1))))
  (iter f n))

((repeated square 2) 5)
