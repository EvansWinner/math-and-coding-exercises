! SPOJ #12177: "CPTTRN2"
! No input validation to be seen here...

subroutine stars(n)
  implicit none
  integer :: n,i
  do i = 1,n-1
    write (*,"(A)",advance="no") "*"
  end do
    write(*,"(A)") "*"
  end subroutine

subroutine spaces(n)
  implicit none
  integer :: n,i
  do i = 1,n
    write (*,"(A)",advance="no") " "
  end do
  end subroutine

program CPTTRN2
  integer :: w=0,h=0
  write(*,*) "Make a W x H box."
  write(*,*) "Please enter width and height in that order"
  write(*,*) "eg., For 2 x 3 enter 2 3"
  read(*,*) w,h
  do i = 1,h
    if (i==1 .and. w>0) then
      call stars(w)
    else if (i==h .and. w>0) then
      call stars(w)
    else if (w>1) then
      write (*,"(A)",advance="no") "*"
      call spaces(w-2)
      write (*,"(A)") "*"
    else if (w==1) then
      write(*,*) "*"
    end if
  end do
end program CPTTRN2
