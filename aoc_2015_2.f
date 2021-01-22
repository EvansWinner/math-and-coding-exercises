\ #100DaysOfCode D5 #AdventOfCode 2015 Day 2
\ in three lines of really ugly Forth
: sort2 2dup > if swap then ;
: sort3 sort2 rot rot sort2 rot sort2 ;
: wrap ( l w h -- p ) 2dup * 2over * 4 pick 3 pick * sort3 + over + 2 * + nip nip nip ;
2 3 4 wrap ( test should = 58 )
