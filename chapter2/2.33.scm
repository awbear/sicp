(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define seq (list 1 2 3))

(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) '() sequence)))

(map square seq)


(define (append seq1 seq2)
  (accumulate cons seq1 seq2))

(append seq seq)


(define (length sequence)
  (accumulate (lambda (x y) (+ 1 y)) 0 sequence))

(length seq)


