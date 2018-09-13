
(define (square x) (* x x))

(define (sum-of-squares z y)
  (+ (square z) (square y)))

(define (greater-value a b)
  (cond ((> a b) a)
	(else b)))

(define (final d e f)
  (sum-of-squares (greater-value d e) (greater-value d f)))



