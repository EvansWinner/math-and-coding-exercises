\* Exercises from the book, Functional Programming in Qi, written in *\
\* Shen *\

\* I don't know if there is a less inelegant way of doing this in Shen *\
\* (cd "c") *\
\* (load "m-lib.shen") *\
(tc -)				\* not sure why I need this *\

\* 2.3 *\
(define cent->fahr
  {number --> number}
  C -> (+ (* C (/ 9 5.0)) 32))

(define fahr->cent 
  F -> (* (- F 32) (/ 5 9.0)))


\* 2.4 *\
(define and-gate
  1 1 -> 1
  _ _ -> 0)

(define or-gate
  0 0 -> 0
  _ _ -> 1)

(define inverter
  0 -> 1
  _ -> 0)


\* 2.5 *\
(define circuit
  X Y ->
  (and-gate 
   (inverter (and-gate X Y))
   (inverter (or-gate X Y))))

\* The optimized version.  Basically, it's a nor gate. *\
(define nor-gate
  0 0 -> 1
  _ _ -> 0)


\* 2.6 *\
(define neuron
  I1 W1 I2 W2 K ->
  (if (< K
	 (+ (* I1 W1) (* I2 W2)))
      0
      1))


\* 2.7  *\
\* T = time spent traveling; V = fraction of speed of light, therefore 0 < V < 1 *\
(define time-dilation
  T V -> (/ T (sqrt (- 1 (expt V 2)))))


\* 2.8 Neglecting air resistance... *\
  \* T = time falling in seconds *\
(define distance-fallen
  T -> (* .5 30 T T))

\* 2.9 *\
(define seconds-to-distance
  D V -> (/ (ly->miles D) (mph->mps V)))

  \* Convert light-years to miles *\
(define ly->miles
  Ly -> (* 186282 3600 24 365.25)) \* could look up a more exact *\
				    \* constant *\

(define mph->mps
  Mph -> (/ Mph 3600.0))

\* (define format-seconds-to-distance *\
\*   D=Distance in light-years; V=speed in miles-per-hour *\
\*   D V ->  *\
\*   (output "~A weeks, ~A days, ~A hours and ~A minutes." *\
\* 	  (mod seconds-to-distance  *\
