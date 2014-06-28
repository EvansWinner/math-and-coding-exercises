;;;                           SICP EXERCISES
(require racket/trace)


;;; 1.1 - 1.10
;; These were done in a different file which I no longer have and
;; refuse to reproduce.

;;; 1.11.
;; A function f is defined by the rule that f(n) = n if n<3 and f(n) =
;; f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3. Write a procedure that
;; computes f by means of a recursive process. [already done] Write a
;; procedure that computes f by means of an iterative process.

(define (f n)
  (if (< n 3) n
      (f-iter n 2 1 0 3)))

(define (f-iter n a b c count)
  (if (= count (+ n 1))
      a
      (f-iter n (+ a
                   (* 2 b)
                   (* 3 c))
              a b (+ count 1))))

;;; 1.12
;; The following pattern of numbers is called Pascal's triangle.

;;     1
;;    1 1
;;   1 2 1
;;  1 3 3 1
;; 1 4 6 4 1
;;    ...

;; The numbers at the edge of the triangle are all 1, and each number
;; inside the triangle is the sum of the two numbers above it.  Write
;; a procedure that computes elements of Pascal's triangle by means of
;; a recursive process.

(define (pascal row pos)
  (cond ((or
         (= pos 1)
         (= pos row)) 1)
        ((or
          (= pos 0)
          (> pos row)) 0)
        (else (+ (pascal (- row 1) (- pos 1))
              (pascal (- row 1) pos)))))

;;; 1.13
;; Prove that Fib(n) is the closest integer to phi^n/(sqrt 5), where
;; phi = (1 + sqrt(5))/2. Hint: Let psi = (1 - sqrt(5))/2. Use
;; induction and the definition of the Fibonacci numbers (see Section
;; 1.2.2) to prove that Fib(n) = (phi^n - psi^n)/sqrt(5).

;; code of fib from the book....
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2)))))) 

;; this is the hint they gave.
(define psi (/ (- 1 (sqrt 5)) 2))
(define phi (/ (+ 1 (sqrt 5)) 2))
(define (hint n)
   (/ (- (expt phi n)
	(expt psi n))
     (sqrt 5)))

;; eg (hint 10) and (fib 10) are approximately equal (difference
;; probably due to floating point round-off
