(define (make-accumulator value)
  (lambda (adder)
    (set! value (+ value adder))
    value))

(define A (make-accumulator 5))

(A 10)

(A 10)
