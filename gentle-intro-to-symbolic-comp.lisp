;; All the exercises before 4.15 are lost and gone forever...

;; 4.15
(defun geq (n m)
  "T if n is greater than or equal to m."
  (>= n m))				;Cheating?  Hey, they made the
					;rules.

;; 4.16
;; Wite a fun that squares n if odd and pos, doubles it if odd ad neg,
;; else divides by 2
(defun arbitrary (n)
  (if (oddp n)
      (if (> n 0)
	  (* n n)
	  (* n 2))
      (/ n 2)))

;; 4.17 t if first arg is 'boy or 'girl and second 'child or man/woman adult
(defun consistentp (sex age)
  (or 
   (and 
    (or (eql sex 'boy) (eql sex 'girl))
    (eql age 'child))
   (and 
    (or (eql sex 'man) (eql sex 'woman))
    (eql age 'adult))))

;; 4.18 rock/paper/scissors
;; This would be easier in shen...
;; (define rock-paper-scissors
;;     rock paper -> player-2-wins
;;     rock scissors -> player-1-wins
;;     paper rock -> player-1-wins
;;     paper scissors -> player-2-wins
;;     scissors paper -> player-1-wins
;;     scissors rock -> player-2-wins
;;     X X -> tie
;;     _ _ -> invalid-input)
(defun rock-paper-scissors (player1 player2)
  (cond ((and (eql player1 'rock)     (eql player2 'paper))    'player-2-wins)
	((and (eql player1 'rock)     (eql player2 'scissors)) 'player-1-wins)
	((and (eql player1 'paper)    (eql player2 'rock))     'player-1-wins)
	((and (eql player1 'paper)    (eql player2 'scissors)) 'player-2-wins)
	((and (eql player1 'scissors) (eql player2 'rock))     'player-2-wins)
	((and (eql player1 'scissors) (eql player2 'paper))    'player-1-wins)
	((or (and (eql player1 'rock)
		  (eql player2 'rock))
	     (and (eql player1 'paper)
		  (eql player2 'paper))
	     (and (eql player1 'scissors)
		  (eql player2 'scissors))) 'tie)
	(t 'invalid-input)))

;; 4.19
;; Show how to write (and w x y z) using cond, and then using nested ifs)
;; (cond ((not w) nil)
;;       ((not x) nil)
;;       ((not y) nil)
;;       ((not z) nil)
;;       (t t))
;; (if w (if x (if y (if z t nil))))

;; 4.20
;; I don't remember what "compare" was, so skipping this one.

;; 4.21 gtest.  One version using ifs, the other cond. T if the first
;; is greater than second, OR either is zero.
(defun gtest (n m)
  (if (> n m)
      (if (not (zerop n))
	(if (not (zerop m))
	  t
	  nil))))

(defun gtest (n m)
  (cond ((zerop n) nil)
	((zerop m) nil)
	((>= m n) nil)
	(t t)))

;; 4.22 again, three versions.  The semantics are actually different
;; in that the second two don't actually check whether they get valid
;; input.
(defun boilingp (n scale)
  (or 
   (and (eql scale 'c) (> n 100))
   (and (eql scale 'f) (> n 212))))

(defun boiligp (n scale)
  (if (eql scale 'f)
      (if (> n 212)
	  t)
      (if (> n 100)
	  t)))

(defun boilingp (n scale)
  (cond ((eql scale 'c) (> n 100))
	(t (> n 212))))

;; 4.23 I think in general one needs one more cond clause than nested
;; if or and.  But who the hell cares?
;; 4.24 cause you want to, like, made decisions in your code, dude.
;; 4.25 it executes the second input if the first evaluates to t, otherwise it just does nothing.
;; 4.26 because the ifs can be nested withing one another(cond)
;; 4.27 nil
;; 4.28 I was not smart enough to figure this one out without looking
;; up the anser.  I figured out why it wasn't working, but not how to
;; fix it.
;; 4.29
(defun logical-and (x y)
  (cond ((and x y) t)
	(t nil)))

(defun logical-and (x y)
  (if x
      (if y t nil)
      nil))

(defun logical-or (x y)
  (and (or x y) t))

;; 4.31 not is not a conditional and it is boolean and there is no
;; need for a separate function

 ;; 4.32
 ;; | x   | y   | (logical-or x y) |
 ;; |-----+-----+------------------|
 ;; | T   | T   | T                |
 ;; | T   | NIL | T                |
 ;; | NIL | T   | T                |
 ;; | NIL | NIL | NIL              |

;; 4.33 2

;; 4.34
;;  | x   | (if x t nil) |
;;  |-----+--------------|
;;  | T   | T            |
;;  | NIL | NIL          |

;; Based on the question, this is the answer.  The book has a
;; three-place truth-table, but if its only outputs are t and nil,
;; then y is and z is nil, which means the only variable input is x,
;; which has only 2 truth values.  I think the quetions is not
;; well-posed.

;; 4.35
(defun three-place-demorgans-and (x y z)
  (not (or (not x) (not y) (not z))))

(defun three-place-demorgans-or (x y z)
  (not (and (not x) (not y) (not z))))

;; 4.36
 ;; | x   | y   | (nand x y) |
 ;; |-----+-----+------------|
 ;; | T   | T   | NIL        |
 ;; | T   | NIL | T          |
 ;; | NIL | T   | T          |
 ;; | NIL | NIL | T          |

;; 4.37 
(defun nand (x y)
  (not (and x y)))
(defun nand-and (x y)
  (nand (nand x y) (nand x y)))
(defun nand-not (x)
  (nand x x))
(defun nand-or (x y)
  (nand-not (nand-and (nand-not x) (nand-not y))))
 
;; 4.38
(defun nor (x y)
  (and (not x) (not y)))
(defun nor-not (x)
  (nor x x))
(defun nor-or (x y)
  (nor-not (nor x y)))
(defun nor-and (x y)
  (nor (nor-not x)
       (nor-not y)))

;; 4.39 No.
