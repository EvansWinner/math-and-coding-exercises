! SPOJ #2730: "EXPECT"
program EXPECT
  integer :: input = 0
  do while (input /= 42)
    read (*,*) input
    if (input /= 42) then
      write (*,*) input
    end if
  end do
end program EXPECT
