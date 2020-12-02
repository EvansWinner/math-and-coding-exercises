#!/usr/bin/apl 

⍝ A solution for Project Euler problem 1 in GNU APL. 

⍝ This is easy to solve as a single-line, but I prefer
⍝ a slightly more stepwise approach; though I'm a rank
⍝ beginner with APL.

⍝ First, let's define n as the number up to which we
⍝ are performing our calculation. That number sounds
⍝ like it might be 1000 based on the description, 
⍝ but it is the sum of all n "below" 1000 that are
⍝ evenly divisible by 3 or 5; so we will define n
⍝ as 999

n←⍳999

⍝ Now, let's create an array, a, of the same length
⍝ of zeros and ones, where the ones corespond 
⍝ to n where it is evenly divisible by 3:

a←(0=3|n)

⍝ and similar one, b, where n mod 5 = 0:

b←(0=5|n)

⍝ Now we will define m (for "mask") as as the logical
⍝ disjunction of a and b:

m←a∨b

⍝ Now, let's multiply n by m, and sum the result:

+/m×n

⍝ Note that this is all easily done in a single line:

+/((0=3|n)∨(0=5|n))×n←⍳999

)off

