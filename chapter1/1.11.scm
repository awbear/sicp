; recurisive process
(define (f-r n)
  (if (< n 3)
    n
    (+ (f-r (- n 1))
       (* 2 (f-r (- n 2)))
       (* 3 (f-r (- n 3))))))

; itertive process
(define (f-i n)
  (f-iter 2 1 0 0 n))

(define (f-iter a b c i n)
  (if (= i n)
    c
    (f-iter (+ a (* 2 b) (* 3 c)) a b (+ i 1) n)))

(f-r 4)

(f-i 4)
