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

(define (mult-fast-iter a b auxiliary)
  (cond ((= b 1) (+ a auxiliary))
        ((even? b ) (mult-fast-iter (double a) (halve b) auxiliary))
        (else (mult-fast-iter a (- b 1) (+ auxiliary a)))))

(trace mult-fast-iter)
(mult-fast-iter 52 111 0)

(trace mult-fast-iter)
(mult-fast-iter 4 9 0)