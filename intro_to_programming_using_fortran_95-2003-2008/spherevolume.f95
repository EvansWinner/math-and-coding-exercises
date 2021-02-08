! Calculate the volume of a sphere givn its radius

program spherevolume
  real, parameter :: pi = 3.141596
  real :: r

  write (*,*) "Calulcate the volume of a sphere given its radius"
  write (*,*)
  write (*,*) "Please enter the radius: "
  read (*,*) r

  write (*,*) 4.0 * pi / 3 * r * r * r
end program spherevolume
