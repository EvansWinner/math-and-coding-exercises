(defvar *results* nil)

(defun palendrome-p (n)
  (string-equal (reverse (write-to-string n))
     (write-to-string n)))

(loop for i from 1 to 999 do
  (loop for j from 1 to 999 do
    (let ((n (* i j)))
      (if (palendrome-p n)
        (cons n *results*)))))

(print (max *results*))
