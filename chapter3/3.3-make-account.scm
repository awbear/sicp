(define (make-account balance password )
  (define (withdraw amount)
    (if (>= balance amount)
      (begin (set! balance (- balance amount))
             balance)
      "Insufficient funds"))
  (define (deposit amount)
    (set! balance (+ balance amount)) balance)

  (define (print-err args)
    (display "Incorrect password"))

  (define (dispatch pass m)
    (if (eq? pass password)
      (cond ((eq? m 'withdraw)
             withdraw)
            ((eq? m 'deposit)
             deposit)
            (else (error "Unkown request: MAKE-ACCOUNT" m)))
      print-err))

  dispatch)

(define acc (make-account 100 'secret-password))

((acc 'secret-password 'withdraw) 40)

((acc 'secret-password 'deposit) 50)

((acc 'some-other-password 'deposit) 50)
