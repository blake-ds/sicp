#lang sicp
(define (pascal row col)
  (cond ((or (= row 1) (= col 1) (= col row)) 1)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col)))))

(pascal  1 1)
(pascal  3 1)
(pascal  3 3)
(pascal  5 3)
(pascal  5 4)
(pascal  5 5)

(define (pascal-row-displayer n)
  (define (display-one-pascal-col col)
    (display (pascal n col)) (display "   "))
  (define (iterate i)
    (if (= i 0)
        (newline)
        (begin
          (display-one-pascal-col i)
          (iterate (- i 1)))))
  (iterate n))

(define (pascal-displayer n)
  (define (iterate i)
    (if (= i n)
        (newline)
        (begin
          (pascal-row-displayer i)
          (iterate (+ i 1)))))
  (iterate 0)  )

(newline)
(display "The whole pyramid:")
(newline)
(pascal-displayer 8)