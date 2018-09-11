(define (make-monitored f)
  (let ((calls 0))
    (lambda (input)
      (cond ((eq? input 'how-many-calls)
             calls)
            ((eq? input 'reset-count)
             (begin (set! calls 0) calls))
            (else (begin (set! calls (+ calls 1))
                         (f input)))))))

(define s (make-monitored sqrt))

(s 100)

(s 'how-many-calls)
