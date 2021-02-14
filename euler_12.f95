program euler12
  implicit none

  integer(2), parameter :: target = 500 ! From problem definition
  integer(8) :: add = 0     ! Incrimenting to find the next triangular number; skip 1
  integer(8) :: i = 0       ! Count var for divisors search 
  integer(8) :: t = 0       ! Current triangular number
  integer(2) :: ds = 0      ! Count of current number of divisors found
  integer(4) :: chkmax = 0

  do while (.TRUE.)
    ds = 1 
    add = add + 1
    t = t + add
    chkmax = int(ceiling(real(t)/2.0))
    do i = 1, chkmax
      if (mod(t, i) == 0) then
        ds = ds + 2
        if (i == 2) then
          ds = ds - 1 ! don't count it twice 
        end if
        chkmax = int(ceiling(real(t)/real(i)))
        if (chkmax <= i) then; exit; end if
      end if
      if (ds > target) then
        write(*,*) "Final answer: ", t ," with ", ds, "divisors."
        stop
      end if 
    end do
  end do
end program

