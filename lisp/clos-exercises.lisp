(in-package :cl-user)

(defclass lock ()
  ((name :initarg :name :reader lock-name))
  (:documentation "The base class for locks."))

(defclass null-lock (lock)
  ()
  (:documentation "A lock that is always free."))

(defclass simple-lock (lock)
  ((owner :initform nil :accessor lock-owner))
  (:documentation "A lock that is either free or busy."))

(defun make-null-lock (name)
  "Produce an object of the null-lock class."
  (make-instance 'null-lock :name name))

(defun make-simple-lock (name)
  "Produce an object of the simple-lock class."
  (make-instance 'simple-lock :name name))

(defgeneric seize (lock)
  (:documentation 
"Seizes the lock.
Returns the lock when the operation succeeds.
Some locks simply wait until they can succeed, while
other locks return NIL if they fail."))

(defgeneric release (lock &optional failure-mode)
  (:documentation
"Releases the lock if it is currently owned by this process.
Returns T if the operation succeeds.
If unsuccessful and failure-mode is :no-error \(default\) returns NIL.
If unsuccessful and failure-mode is :error, returns error.
"))

(defmethod seize ((l null-lock))
  l)					;seize lock, no waiting

(defmethod release ((l null-lock) &optional failure-mode)
  (declare (ignore failure-mode))	;never fails for null locks
  t)
		    

(setq *null-lock* (make-null-lock "Null lock."))
(setq *simple-lock* (make-simple-lock "Simple lock."))

(lock-name *null-lock*)
(lock-name *simple-lock*)
(lock-owner *simple-lock*)
(setf (lock-owner *simple-lock*) 3030)
(type-of *simple-lock*)
(subtypep 'simple-lock 'null-lock)
