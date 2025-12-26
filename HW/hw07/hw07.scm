(define (square n) (* n n))

;; 对数级递归的 pow（fast exponentiation）
(define (pow base exp)
  (cond
    ((zero? exp) 1)
    ((even? exp) (square (pow base (/ exp 2))))
    (else (* base (square (pow base (/ (- exp 1) 2)))))))

(define (repeatedly-cube n x)
  (if (zero? n)
      x
      (let ((y (repeatedly-cube (- n 1) x)))
        (* y y y))))

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

