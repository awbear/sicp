(define (square-tree tree)
  (tree-map square tree))

(define (tree-map proc tree)
  (map (lambda (sub)
         (if (pair? sub)
             (tree-map proc sub)
             (proc sub)))
       tree))


(define t
  (list 1
        (list 2 (list 3 4) 5)
        (list 6 7)))

(square-tree t)
