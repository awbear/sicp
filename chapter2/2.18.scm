(define (reverse l)
  (define (iter item combine)
    (if (null? item)
      combine
      (iter (cdr item) (cons (car item) combine))))
  (iter l '()))

(reverse (list 1 4 9 16 25))
