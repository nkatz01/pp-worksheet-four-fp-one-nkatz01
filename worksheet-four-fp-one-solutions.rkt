#lang racket
;1) what are they evaluating to?

(* 2 (+ 4 5)); 18
(= 3 (+ 1 3)); #f
(car '(elmer fudd daffy duck)) ;'elmer
(cdr '(elmer fudd daffy duck)); '(fudd daffy duck)
(and (= 1 2) (= 10 (/ 1 0))); #f (lazy eval)

;; 2) find the squid

(define y '(clam squid octopus))
(cadr y)
(define z '(clam starfish (squid octopus) mollusc))
(caaddr z)

;; 3) define avg function

(define (my-avarage  lst )
  (let((x (apply + lst))) (/ x (length lst)) ))

;;or

(define (my-avarage-expli-rec lst)
    (define (f lst)
   (if (null? lst)
       0
   (+ (car lst)(f (cdr lst)) ) ))(/(f lst)(length lst))
    
  )

;; 4) define myMax function

(define (my-max lst)
  (if (null? lst)
      0
      (let ((x (car lst))) (if(>(my-max (cdr lst)) x) (my-max (cdr lst)) x))))

;;5) Suppose we evaluate the following Racket expressions:

(define x '(snail clam))
(define y '(octopus squid scallop))
;;Draw box-and-arrow diagrams of the result of evaluating the following expressions.

  ;Answer drawn in separate uploaded file

;; 7) tail recursive sum

(define (Tsum lst   accum)
  (if (null? lst)
      accum
      (Tsum (cdr lst)  (+ accum (car lst) ))))
;;8) Answer: 106 and 6 respectively. In the second expression, x in the second let overshadows the x in the first let.

;; 9) Define a function `mylength` to find the length of a list.
(define (my-length lst accum)
   (if (null? lst)
       accum
       (my-length (cdr lst) (+ 1 accum))))
