\ -*-Mode:forth;-*-
\ 1.1
: gift ." land war in Asia! " ;
: giver ." Alexander T. Great" ;
: thanks cr ." Dear " giver ." ," cr ." thanks for the " gift ." ." ;

\ 1.2
: ten-less -10 + ;

\ 1.3
: giver ." Tamerlane" ;
\ I guess because whe you define "thanks" it compiles it along with
\ all the words it calls into a single execuable blob, so redefining a
\ word it calls does't recompile the version of that word that was
\ compiled into "thanks."

\ 2 quiz 2-a
: a 1 ;
: b 2 ;
: c 3 ;
: n 4 ;
: x 5 ;

\ 1
a b + c *
\ 2
3 a * b - c 4 + /
\ 3
a b 0.5 * * 100 /
\ 4
n 1 + n /
\  5
7 x * 5 + * x
\ 6 => (b-a)/(b+a)
\ 7 => 10b/a