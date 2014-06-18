: guess 
    2dup > if ." too low" drop else
	2dup < if ." too high" drop else
	    drop drop ." correct" then then ;

: speller
    dup 0 < if ." negative " then abs
    dup 1 = if ." one" exit then
    dup 2 = if ." two" exit then
    dup 3 = if ." three" exit then
    dup 4 = if ." four" exit then
    ." out of range" ;

: within  
    over > rot rot >= and ;

: between
    

