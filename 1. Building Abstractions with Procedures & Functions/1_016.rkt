#lang racket/base
(require racket/trace)
(define (fast-exp b n)
  (fast-iter-exp b n 1))

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-iter-exp base exponent helper)
  (cond ((= exponent 1) (* helper base))
    ((even? exponent) (fast-iter-exp (* base base) (/ exponent 2) helper) )
    (else (fast-iter-exp base (- exponent 1) (* helper base)))
    ))

(fast-exp 2 16)
(newline)
(fast-exp 3 13)
(newline)
(fast-exp 5 11)
(newline)
(fast-exp 7 31)
(display "These all all correct solutions :)")

; This is small part is taken from
; https://codology.net/post/sicp-solution-exercise-1-16/ 
; It allows to see the depth of the stack - if it's 1 (indicated by number of '>') 
; then it is not recursive
(trace fast-iter-exp)
(fast-iter-exp 5 11 1)
(display "There's always depth 1 stack")


(newline)
(newline)
(display "Let's compare it to the recursive solution:")
(define (square n) (* n n))
(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))
(trace fast-expt)
(fast-expt 5 11)
