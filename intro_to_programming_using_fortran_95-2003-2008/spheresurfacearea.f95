! Calculate the surface area of a sphere given its radius

program spheresurfacearea
  real, parameter :: pi = 3.141596
  real :: r

  write (*,*) "Calculate the surface area of a sphere given its radius"
  write (*,*)
  write (*,*) "Please enter the radius: "
  read (*,*) r

  write (*,*) 4.0 * pi * r * r
end program spheresurfacearea
