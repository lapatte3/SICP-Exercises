
(define (square x) (* x x))

(define (sum-of-squares z y)
  (+ (square z) (square y)))

(define (greater-value a b)
  (cond ((> a b) a)
	(else b)))

(define (largest a b c)
  (cond ((> (greater-value a b) c) (greater-value a b))
	(else c)))

(define (smaller-value a b)
  (cond ((< a b) a)
	(else b)))

(define (smallest a b c)
  (cond ((< (smaller-value a b) c) (smaller-value a b))
	(else c)))

(define (middle-value a b c) (- (largest a b c) (smallest a b c)))

(define (final a b c)
  (sum-of-squares (largest a b c) (middle-value a b c)))

(define (largest-two a b c)
  (cond ((and (> a c) (> b c)) (values a b))
        ((and (> b a) (> c a)) (values b c))
        (else (values a c))))
