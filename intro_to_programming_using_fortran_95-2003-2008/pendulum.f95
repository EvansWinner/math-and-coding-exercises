program pendulum
  implicit none

  real*8, parameter :: pi = 3.141596, g = 980.0
  real*8 :: L = 0.0
  real*8 :: a = 0.0
  real*8 :: result = 0.0

  write (*,*) "Calculate the period of a pendulum"
  write (*,*) "given the pendulum length and the"
  write (*,*) "angle of displacement."
  write (*,*)
  write (*,*) "Please enter the length in centimeters: "
  read (*,*) L
  write (*,*) "Please enter the angle in degrees: "
  read (*,*) a

  a = a * pi / 180.0 ! Convert degrees to radians
  result = 2.0*pi * sqrt(L/g) * (1.0 + (1.0/4.0) * sin(a/2.0)**2)

  write (*,*) "Result: ", result

end program pendulum
