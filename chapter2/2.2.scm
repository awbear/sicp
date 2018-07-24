(define(print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))

(define (make-point x y)
  (cons x y))

(define (start-segment line)
  (car line))

(define (end-segment line)
  (cdr line))

(define (make-segment start-point end-point)
  (cons start-point end-point))

(define (average x y)
  (/ (+ x y) 2))

(define (midpoint-segment line)
  (make-point
    (average (x-point (start-segment line)) (x-point (end-segment line)))
    (average (y-point (start-segment line)) (y-point (end-segment line)))
    ))


(print-point (midpoint-segment (make-segment (make-point 2 3) (make-point 8 11))))

