program CHZ
  implicit none
  ! Units for luninosity in reference to the sun = 1
  ! Units for distance are AU
  real, parameter :: ric = 1.1  ! Constant for computing inner bound of radius
  real, parameter :: roc = 0.54 ! Same for outer bound
  real            :: ri  = 0    ! Inner radius
  real            :: ro  = 0    ! Outer radius
  real            :: L   = 0    ! Luminosity in ratio to sun gotten interactively
  real            :: d   = 0    ! Distance of planet from star also interactive
  
  write(*,*) "Input luminosity in sols and distance from"
  write(*,*) "star in AUs, on one line, separated by a space:"
  read(*,*) L,d
  
  ri = sqrt(L/ric)
  ro = sqrt(L/roc)
  if (d < ri) then; write(*,*) "too hot"; end if
  if (d > ro) then; write(*,*) "too cold"
  else; write(*,*) "just right"; end if
end program CHZ
