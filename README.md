# Worksheet on Functional Programming

## The first worksheet on Racket

This worksheet is intended to familiarise students with the 
functional programming constructs of the Racket programming language. 


1. What do the following Racket expressions evaluate to? (Work through the expression before trying it using the REPL.)  
  - `(* 2 (+ 4 5))`
  - `(= 3 (+ 1 3))`
  - `(car '(elmer fudd daffy duck))`
  - `(cdr '(elmer fudd daffy duck))`
  - `(and (= 1 2) (= 10 (/ 1 0)))`

2. Find the squid! For each of the following variables, write an expression that picks out the symbol `squid`. 
   For example, for this definition:
   ```
   (define x '(squid clam octopus))
   ```
   the answer is
   ```
   (car x)
   ```
   - `(define y '(clam squid octopus))`
   - `(define z '(clam starfish (squid octopus) mollusc))`

3. Define a Racket function `avg` to find the average of three numbers provided as an arguments to the function.

4. Define a Racket function `mymax` to find the maximum of three numbers provided as an arguments to the function.

5. Suppose we evaluate the following Racket expressions:
   ```
   (define x '(snail clam))
   (define y '(octopus squid scallop))
   ```
   Draw *box-and-arrow* diagrams of the result of evaluating the following expressions. 
   What parts of the list are created fresh, and which are shared with the variables `x` and `y`?
   (You can scan the answer in or use a drawing program.)
   - `(cons 'geoduck x))`
   - `(cons y y)`
   - `(append x y)`
   - `(cdr y)`

6. Define a recursive function `sum` to find the sum of the numbers in a list.

7. Define a *tail recursive* version of `sum`. (Define an auxiliary function if required.)

8. What is the result of evaluating the following Racket expressions?
   ```
   (let ((x (+ 2 4))
         (y 100))
        (+ x y))
   ```
   ```
   (let ((x 100) 
         (y 5)) 
        (let ((x 1)) 
            (+ x y)))
   ```

9. Define a function `mylength` to find the length of a list. 
   You should not use the length function that is already available!
