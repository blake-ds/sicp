#lang sicp
(+ 1 2)
(define (square x) (* x x))
(define (cube x)  (* x x x))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))


(define (relative-error estimate x)
  (/ (abs (- (cube estimate) x)) x)
  )

(define (good-enough? guess x)
  (< (relative-error guess x) 0.00000000001))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x) x)))

(define (cube-root x)
  (cube-root-iter 1.0 x))

(cube-root 27)
(cube-root 123456789012345)
(cube 49793.385923477144)