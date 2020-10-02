#|

Exercise 1.3.  Define a procedure that takes three numbers as arguments and
returns the sum of the squares of the two larger numbers.

|#

(define (print x) (begin
  (display x (current-output-port))
  (newline (current-output-port))))

(define (square x) (* x x))

(define (sum-of-squares-of-two-large-numbers x y z)
  (cond
    ((and (> x y) (> y z)) (+ (square x) (square y)))
    ((and (> x y) (> z y)) (+ (square x) (square z)))
    ((and (> y x) (> z x)) (+ (square y) (square z)))
    (else 0)
  )
)

(print (sum-of-squares-of-two-large-numbers 0 0 0))