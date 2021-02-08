! Calculate anamortization table based on the principal,
! the annual interest rate, and the loan term in months.

program amort
   implicit none

! We will need a counter variable for months, m
! and an accumulator to show total paid so far, acc
   integer :: m
   real :: acc

! We will need a new variable for monthly interest paid, which
! whill be calculated.
   real :: mint = 0.0

! Input variables are the principle, p; the annual interest rate, r;
! and the loan term, t, in months

   real :: p = 0, r = 0
   integer :: t = 0

! The basic output variable is the monthly bill, b

   real :: b

! The formula for determining the amortized payment per unit time
! is b = p(rm*(1+rm^t/((1+rm)^t)-1), where rm is r/1200 to convert
! from a yearly percentage to a monthly absolute value.

   real :: rm

! We will also calcuate the numerator and denominator of the formula
! separately.

   real :: num, den

! Let's write some instructions for the user, and then query for the loan
! information:

   write (*, *) "Please enter the loan principal, the interest rate as a per-"
   write (*, *) "cent (without a percent sign) and the loan term as a number"
   write (*, *) "of months. Please enter this information with spaces separ-"
   write (*, *) "ating each item on a single line."
   write (*, *)
   write (*, *) "Example, for a loan with a $525.25 principal, 10% anual"
   write (*, *) "interest, and a 12 month term, enter 525.25 10 12"
   write (*, *)
   write (*, *) "Loan amount must be maximum of $250,000.00; term maximum"
   write (*, *) "360 months."
   write (*, *)
   write (*, '(a)', advance="no") "Please enter your information here: "
   read (*, *) p, r, t

   if (p > 250000.0 .or. p < 1.0 .or. r > 99 &
       .or. r < 1 .or. t > 360 .or. t < 1) then
      write (*, *) "Input out of range"
      call exit(1)
   end if

! Let's calulate the monthly rate

   rm = r/1200.0

! Then we'll calculate the numerator and denominator once now

   num = (1.0 + rm)**real(t)
   den = num - 1.0

! Let's go ahead and calculate the payment, b, now:
   b = p*rm*num/den

! Print key
   write (*, *)
   write (*, *) "    KEY"
   write (*, *) "Mn:      Month Number"
   write (*, *) "Pmt:     Payment this month"
   write (*, *) "Tot:     Total paid so far"
   write (*, *) "MonInt:  Interest amount paid this month"
   write (*, *) "MonPrin: Principal paid this month"
   write (*, *)
   write (*, *) "Mon", "     Pmt", "      Tot", &
                "     MonInt", "   MonPrin"
   acc = 0
   do m = 1, t
      acc = acc + b
      mint = rm*p
      p = p - mint
      write (*, '(i3.3, f9.2, f10.2, f10.2, f10.2)') &
              m, b, acc, mint, b - mint
   end do

end program amort

