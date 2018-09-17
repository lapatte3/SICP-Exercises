
(define (abs x)
   (cond ((< x 0) (- x))
   	 (else x)))

(define (square x)
   (* x x))

(define (good-enough guess x)
   (< (abs (- (guess) (improve guess x))) .001))

(define (average x y)
   (/ (+ x y) 2))

(define (improve guess x)
   (average guess (/ x guess)))    

(define (sqrt-iter guess x)
  (if (good-enough guess x)
      guess
      (sqrt-iter (improve guess x)
      		  x)))

(define (sqrt x)
   (sqrt-iter 1.0 x))

