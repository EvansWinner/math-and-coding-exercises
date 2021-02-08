! Output compound interest given rate, principal, and term

program interest
  implicit none

  real :: rate = 0, princ = 0
  integer :: term = 0
  write (*, '(a)', advance="no") "Enter principal: "
  read(*, *) princ
  write (*, *) "Enter interest rate as a percent"
  write (*, '(a)', advance="no") "E.g. 10 for ten percent: "
  read (*, *) rate
  write (*, '(a)', advance="no") "Enter term in whole years: "
  read (*, *) term

  write (*, *) "Total to pay: ", &
                princ * (1.0 + (rate / 100))**real(term)

end program interest

