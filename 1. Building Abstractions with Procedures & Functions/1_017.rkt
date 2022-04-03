#lang racket/base
(require racket/trace)

; basic mutliplication - this is linear with regards to b
(define (mult-basic a b)
  (if (= b 0)
      0
      (+ a (mult-basic a (- b 1)))))

; mult advanced - log time
(define (even? n)
  (= (remainder n 2) 0))

(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))

(define (mult-fast-recursive a b)
  (cond ((= b 0) 0)
        ((even? b ) (mult-fast-recursive (double a) (halve b)))
        (else (+ a (mult-fast-recursive a (- b 1))))))

(trace mult-fast-recursive)
(mult-fast-recursive 52 111)

(trace mult-basic)
(mult-basic 52 111)