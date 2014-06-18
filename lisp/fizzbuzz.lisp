;; Fizzbuzz, the Kobayashi-Maru of programming.  This is easy to
;; solve, but difficult to solve elegantly.  The solution below is not
;; elegant.
(defun divides (n m)
  (= (mod m n) 0))

(defun fizzbuzz (n)
  (loop for i from 1 to n do
	(cond ((divides 15 i) (format t "fizzbuzz~%"))
	      ((divides 5 i) (format t "buzz~%"))
	      ((divides 3 i) (format t "fizz~%"))
	      (t (format t "~a~%" i)))))

