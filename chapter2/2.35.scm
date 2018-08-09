(load "accumulate.scm")

(define (count-leaves t)
  (accumulate + 0 (map (lambda (sub)
                         (if (pair? sub)
                           (count-leaves sub)
                           1))
                       t)))

(count-leaves (list (list 1 (list 2 3) (list 4 5))))
