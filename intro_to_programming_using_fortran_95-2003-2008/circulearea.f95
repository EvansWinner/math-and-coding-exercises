! Calculate the circumfrence of a circle given its area

program circulearea
  real, parameter :: pi = 3.141596
  real :: a

  write (*,*) "Calculate the Cicumfrence of a Circle Given its Area"
  write (*,*)
  write (*,*) "Please enter the area of the circle: "
  read (*,*) a

  write (*,*) 2 * sqrt(pi * a)
end program circulearea
