;; From https://adriann.github.io/programming_problems.html

;; 1: Write a program that prints ‘Hello World’ to the screen.

(defun hello ()
  (format t "Hello World"))

;; 2: Write a program that asks the user for his name and greets him
;; with his name.

(defun greet ()
  (format t "What is your name? ")
  (format t (concatenate 'string "Hello, " (read-line) ".")))

;; 3: Modify the previous program such that only the users Alice and
;; Bob are greeted with their names.

(defun snobbish-greet ()
  (let ((name nil))
    (format t "What is your name? ")
    (setf name (read-line))
    (if (or (equal name "Bob") (equal name "Alice"))
	(format t (concatenate 'string "Hello, " name ".")))))
