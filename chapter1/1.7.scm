(define (sqit-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqit-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqit-iter 1.0 x))

;old good-enough?
(define (good-enough? guess x)
  ( < (abs (- (square guess) x)) 0.001))

; advanced good-enough?
;(define (good-enough? old-guess new-guess)
;  ( > 0.01
;      (/ (abs (- new-guess old-guess))
;         old-guess)))

(square 3)

(sqrt 9)
