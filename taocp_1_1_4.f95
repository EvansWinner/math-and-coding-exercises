! Euclid's algorithm for finding greatest common factor
! Knuth, D., The Art oF Computer Programming, Vol 1,
! Exercise 1.1.4
! Requires two positive integers, m and n
! Knuth's question is for 6099 and 2166
! We will just read them interactively

program taocp_1_1_4
  implicit none
  integer :: m = 0
  integer :: n = 0
  integer :: r = 1 ! Initialize to a non-zero value
  
  read(*,*) m,n
  do while (r /= 0)
    r = mod(m, n)
      if (r == 0) then
        write (*,*) n
      end if
    m = n
    n = r
  end do
end program taocp_1_1_4
