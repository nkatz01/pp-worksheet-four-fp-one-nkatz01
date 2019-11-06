#lang slideshow

 
(define c (circle 10))
(define r (rectangle 10 20))

(define (square n)
  ; A semi-colon starts a line comment.
  ; The expression below is the function body.
  (filled-rectangle n n))

(define (four p)
  (define two-p (hc-append p p))
  (vc-append two-p two-p))

(define (checker p1 p2)
  (let ([p12 (hc-append p1 p2)]
        [p21 (hc-append p2 p1)])
    (vc-append p12 p21)))

(define (checkerboard p)
  (let* ([rp (colorize p "red")]
         [bp (colorize p "black")]
         [c (checker rp bp)]
         [c4 (four c)])
    (four c4)))

(define (series mk)
  (hc-append 4 (mk 5) (mk 10) (mk 20)))
 
(define (rgb-series mk)
  (vc-append
   (series (lambda (sz) (colorize (mk sz) "red")))
   (series (lambda (sz) (colorize (mk sz) "green")))
   (series (lambda (sz) (colorize (mk sz) "blue")))))

 (define (rgb-maker mk)
  (lambda (sz)
    (vc-append (colorize (mk sz) "red")
               (colorize (mk sz) "green")
               (colorize (mk sz) "blue"))))
(define (rainbow p)
  (map (lambda (color)
         (colorize p color))
       (list "red" "orange" "yellow" "green" "blue" "purple")))
 

(provide rainbow square)



;; 2) find the squid
(define y '(clam squid octopus))
(cadr y)
(define z '(clam starfish (squid octopus) mollusc))
(caaddr z)
;(car(car(cdr(cdr z)))) https://www.cs.drexel.edu/~jpopyack/Courses/AI/Sp18/extras/LISP/CADDDR.html

;; 3) define avg function
(define (avarage l)  (/ (sum l) (length l)))

(define (sum l)
(if (empty? l) 0
     (+ (car l) (sum (cdr l)))))
  
(avarage (list 1 2 3))

;; 4) define myMax function
(define (myMax l)
  (if (empty? (cdr l))
      (car l)
       (if(< (car l) (myMax (cdr l)))
          (myMax (cdr l))
          (car l)

          )
       )
  )
  
(myMax (list 1 3 2))
;; 6) recursive sum
(define (sum l)
(if (empty? l) 0
    
    (+ (car l) (sum (cdr l)))))
(sum (list 1 2 3))
;; 7) tail recursive sum
(define (sumTailR l s)
(if (empty? l) s
    
     (sumTailR (cdr l) (+ (car l) s))

     ))

 (sumTailR (list 1 2 3) 0)

(cons (cons 1 2) (cons 3 (cons 4 5)))
(list 1 2 (cons 3 4) 5)

;;8)106 and 6 respectively. In the second expression, x is new in the second let.

;; 9) 
(define (myLength l)

(if (empty? l)  0
     (+ 1 (myLength (cdr l)))))
(myLength (list 1 3 2))


  