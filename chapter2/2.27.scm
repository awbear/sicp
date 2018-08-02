(load '2.18.scm')

(define (deep-reverse items)
  (cond ((null? items) '())
        ((not(pair? items)) items)
        (else (reverse (list (deep-reverse (car items))
                             (deep-reverse (cadr items)))))))

(deep-reverse (list (list 1 2) (list 3 4)))
