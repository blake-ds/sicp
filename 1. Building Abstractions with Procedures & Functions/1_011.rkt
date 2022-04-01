#lang sicp
(define (f-recursive n)
  (cond ((< n 3) n)
        (else (+ (f-recursive (- n 1))
                 (* (f-recursive (- n 2)) 2)
                 (* (f-recursive (- n 3)) 3)))))

(f-recursive 2)
(f-recursive 6)
(f-recursive 12)


(define (f-iterative n)
  (define (f-loop n-1 n-2 n-3 nth)
    (if (= n nth)
        n-1
        (f-loop (+ n-1 (* 2 n-2) (* 3 n-3)) n-1 n-2 (+ 1 nth))))
  (if (< n 3)
      n
      (f-loop 2 1 0 2)))

(f-iterative 2)
(f-iterative 6)
(f-iterative 12)
