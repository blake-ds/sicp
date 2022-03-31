#lang sicp
; the first procedure is a recursive process
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

; the second procedure is iterative
(define (+other a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

