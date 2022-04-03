#lang racket/base
(require racket/trace)

; basic mutliplication - this is linear with regards to b
(define (mult-base a b)
  (if (= b 0)
      0
      (+ a (mult-base( a (- b 1))))))

; mult advanced - log time
(define (even? n)
  (= (remainder n 2) 0))

(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))


(trace mult-base)
(mult-base 52 111)
