;;; In order to test, we need to actually create the game board and
;;; the back-end.  The solution to the actual problem is at the
;;; bottom.

;;; We will hard-code it to be 8X8.  You could write another program
;;; to generate these randomly and of arbitrary size, but for testing,
;;; we will just copy the one they give in the question.

;;; We will use a cons cell to contain our current X.Y coordinates.
;;; In retrospect I probably should have made that a class too.
;;; Anyway, '(0 . 0) starts at the upper left.  X is horizontal and Y
;;; is vertical, of course.  You could also keep a list of locations
;;; you've already been, and if one repeats, you know to give up.

(defparameter grid '((nil nil nil nil nil nil nil nil)
		     (nil nil t   t   t   t   t   nil)
		     (t   t   t   nil t   nil t   nil)
		     (nil t   nil nil t   nil t   nil)
		     (nil t   nil nil t   t   t   nil)
		     (nil t   nil nil nil t   nil nil)
		     (nil t   nil nil nil t   nil nil)
		     (nil nil nil nil nil nil nil nil)))
(defparameter starting-point '(0 . 2))
(defparameter ending-point '(5 . 6))
(defparameter starting-direction 'w)

(defun in-grid-p (location)
  (let ((x (car location))
	(y (cdr location))
	(x-range (length (car grid)))
	(y-range (length grid)))
    (and (< x x-range)
	 (< y y-range)
	 (> x -1)
	 (> y -1))))

;; Example (open-p '(0 . 2)) ==> T
(defun open-p (location)
  (and (in-grid-p location)
       (nth (car location)
	    (nth (cdr location) grid))))

(defmethod calculate-location-ahead ((r robot))
  (let* ((current-location (robot-location r))
	 (current-direction (robot-direction r))
	 (new-location current-location) ;start here
	 (new-location
	  (cond ((equalp current-direction 'w)
		 (cons (1+ (car current-location)) (cdr current-location)))
		((equalp current-direction 's)
		 (cons (car current-location) (1+ (cdr current-location))))
		((equalp current-direction 'e)
		 (cons (1- (car current-location)) (cdr current-location)))
		((equalp current-direction 'n)
		 (cons (car current-location) (1- (cdr current-location)))))))
    new-location))

(defclass robot ()
  ((location :accessor robot-location
	     :initform starting-point
	     :initarg location)
   (direction :accessor robot-direction
	      :initform starting-direction
	      :initarg direction)))

(defmethod robot-turn-right ((r robot))
  (setf (robot-direction r)
	(cond ((equalp (robot-direction r) 'w) 's)
	       ((equalp (robot-direction r) 's) 'e)
	       ((equalp (robot-direction r) 'e) 'n)
	       ((equalp (robot-direction r) 'n) 'w))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; The API defined by the question. Names have been changed to protect
;;; the stupid.  Our robot instance will be named Robbie.

(setf robbie (make-instance 'robot))

;; For debugging
(defun reset-robbie ()
  (setf (robot-location robbie) starting-point)
  (setf (robot-direction robbie) starting-direction))

(defun status ()
  (print (robot-location robbie))
  (robot-direction robbie))

(defun can-go-forward ()
  (open-p (calculate-location-ahead robbie)))

(defun turn-right ()
  (robot-turn-right robbie)
  (print 'turning-right)
  (print (robot-direction robbie)))

(defun go-forward ()
  (progn
    (setf (robot-location robbie) (calculate-location-ahead robbie))
    (print (robot-location robbie))
    (if (finished-p) (print 'Finished) nil)))

(defun finished-p ()
  (equalp ending-point (robot-location robbie)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; My solution

;; Ok, first of all, they gave me the maze, so the real answer is
;; simply something like
(defun smart-ass-solution ()
  (progn
    (dotimes (dummy 2) (go-forward))
    (dotimes (dummy 3) (turn-right))
    (go-forward)
    (turn-right)
    (dotimes (dummy 2) (go-forward))
    (turn-right)
    (dotimes (dummy 3) (go-forward))
    (dotimes (dummy 3) (turn-right))
    (go-forward)
    (turn-right)
    (dotimes (dummy 2) (go-forward))))

;; But I assume that is not the spirit of the thing, so here
(defun can-go-right-p ()
  (turn-right)
  (setq ret (can-go-forward))
  (turn-left)
  ret)

(defun can-go-left-p ()
  (turn-left)
  (setq ret (can-go-forward))
  (turn-right)
  ret)

(defun turn-left ()
  (dotimes (dummy 3) (turn-right))
  (print 'going-left))

(defun go-right ()
  (turn-right)
  (go-forward))

(defun go-left ()
  (turn-left)
  (go-forward))

(defun go-right-maybe ()
  (if (can-go-right-p)
      (progn (go-right)
	     t)))

(defun go-left-maybe ()
  (if (can-go-left-p)
      (progn (go-left)
	     t)))

(defun go-forward-maybe ()
  (if (can-go-forward)
      (progn (go-forward)
	     (print (robot-location robbie))
	     t)
      nil))

(defun turn-around ()
  (turn-right)
  (turn-right))

;; main loop
(defun go-robbie-go ()
  (loop while (not (finished-p))
     do
       (or (go-right-maybe)
	   (go-forward-maybe)
	   (go-left-maybe)
	   (turn-around))))
