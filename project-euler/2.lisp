;; Project Euler number 2.  This is a recursive solition but I'm not
;; sure actually what the space profile of this function is.

(defun fib-list (upper-bound &optional (list '(1 2)))
  (if (>= (car (last list)) upper-bound)
      list
      (fib-list
       upper-bound
       (append list
	       (list (+ (car (last list))
			(car (last list 2))))))))

(defun euler-2 (upper-bound)
  (reduce #'+ (remove-if #'oddp (butlast (fib-list upper-bound)))))

;; (euler-2 4000000) ==> 4613732
