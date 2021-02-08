! Calculate the distance flown by a thrown ball at
! five-degree increments. Assume flat Earth and zero
! air resistance.
program ball
  implicit none

  ! Gravity g as a constant
  real, parameter :: g = -9.81 ! meters / second
  real, parameter :: pi = 3.14159
  real :: v0 = 0, theta = 0
  integer :: degrees = 0
  real :: range = 0 ! Return value of calculation -- in meters
  ! Obtain initial velocity v0 from user
  write (*,*) "Please enter intialy velocity in meters / second"
  write (*,*) "without the units: "
  read (*,*) v0

  do degrees = 5, 85, 1
     theta = real(degrees) * pi / 180
     range = -1 * 2 * v0**2 / g * cos(theta) * sin(theta)
     write (*,*) "Range for ", degrees, "degrees: ", range, " meters."
  end do

end program ball
