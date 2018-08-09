(load "accumulate.scm")
(load "2.36-accumulate-n.scm")

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (map (lambda (t)
         (dot-product t v))
       m))

(define (transpose mat)
  (accumulate-n cons '() mat))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (v)(matrix-*-vector cols v)) m)))

(define v (list 1 2 3 4))

(define m (list (list 1 2 3 4) (list 4 5 6 6) (list 6 7 8 9)))

(define n (transpose m))

(dot-product v v)

(matrix-*-vector m v)

(matrix-*-matrix m n)
