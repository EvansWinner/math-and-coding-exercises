Project Euler #19 in Dyalog APL
================================

## Introduction

I thought [Project Euler problem #19](https://projecteuler.net/problem=19) was a good little problem for someone new to APL. This is a chatty walk-through of my process. 

Briefly, the idea of the problem is to calculate the number of months in the 20th century the 1st day of which fell on a Sunday.

I have played a little with APL, like it, and flatter myself that I'm starting to get some feel for the idea behind it, but am still very new with it. I'm also not doing anything fancy or spphisticated here, and I think just about any APL would work, though my use of the @ operator at one point would have to be replaced with something else for, eg., GNU APL.

It's obvious that there is a simple closed-form answer for this problem, further, there are obvious ways to go about finding a solution by Fortran-like looping and accumlators; but as I am trying to learn APL the goal here is to find an array-based, "wholemeal" solution to the problem.

## 1. Sanity Check

First, for the sake of later sanity checking, let's figure out a ballpark idea of what our answer should be.

We know that there are 1200 months in 100 years. We expect Sunday to fall on very close to one seventh of that:


```APL
(100×12)÷7
```




<span style="white-space:pre; font-family: monospace">171.429
</span>



So we expect our final answer to fall somewhere around 171.

## 2. Create a days-of-the-week bitmask vector

How many days are in the 20th century? We know that there are 365 days in a normal year, and one more every four years, and we know that the year 2000, even though it was divisible by 100 was a leap year anyway, because it is also divisible by 400 as well.

That means that the year 2000 was not an exception to the rule of leap year every four years, which means that there were exactly 365.25 days average per year over the whole century. That makes 36525 total days in the century. Let's use the same logic as above, but to create a list of all the days of the week for the whole century. Once we do that, we can use a predicate checking for the day 7 (Sunday) and end up with a bit mask of 36525 values that are 0 where it is not Sunday, and 1 where it is. We also need to rotate the arrray by 1 (from Monday to Tuesday) because we know that January 1st, 1901 was a Tuesday. (The problem statement said we were allowed to look that up. But you can also work it out easily from the starting day of the year before, 1900, which they do give.) To do that, we will generate a vector one day longer than we need, and then drop the first (Monday) value.

We will check only the first and last few values.


```APL
'First 25 days:',25↑days←7=1↓36526⍴⍳7
' Last 25 days:',((⍴days)-25)↓days
```




<span style="white-space:pre; font-family: monospace">First 25 days: 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0
</span>






<span style="white-space:pre; font-family: monospace"> Last 25 days: 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1
</span>



## 3 Create a firsts-of-the-months bitmask vector

Ok, that was the easy part. The game plan is now to create a new mask the exact same length, but which contains a 1 only where the day is the first of a month. Once we've created that, we can simply `and` them together (or multiply them, which amounts to the same thing) to get a vector showing all those days which are both the first of a month and a Sunday. Then we just tot up all the ones in the vector and Bob's your uncle.

Let's build up the solution from parts. We will start by creating a vector where we calculate all the firsts of the months as Julian dates of one year -- that is, as the nth day of the year. We'll do that based on the rhyme of "Thirty days hath September," etc. The idea here is we enter in the lengths of all the months, do a running sum with `+\`, then add one to them to get the next day (the first of the next month) take `↑` only the first eleven, since we don't need the first of the next year, and finally add a 1 to the front of the array  with `,` to represent the first month, January.


```APL
⎕←yearFirsts←1,11↑1++\31 28 31 30 31 30 31 31 30 31 30 31
```




<span style="white-space:pre; font-family: monospace">1 32 60 91 121 152 182 213 244 274 305 335
</span>



Let's just make a modified copy of that to represent leap years. I think this could be done lots of ways, but I will add one to all but the first two values (the first of Jan and of Feb) sort of manually:


```APL
⎕←leapFirsts←(2↑yearFirsts),1+2↓yearFirsts
```




<span style="white-space:pre; font-family: monospace">1 32 61 92 122 153 183 214 245 275 306 336
</span>



Let's generate a bit mask for just one normal year. I will use the @ operator from Dyalog here, which took me forever for me to figure out how to use. It turns out "at" isn't very Googlable. Anyway, there is probably a more portable way to do it, but I don't know it yet. We'll show the first three months of firsts to verify the leap year looks different. Let's wrap them in blocks to make them look better.


```APL
'Normal year:'⋄2 32⍴64↑yearMask←(1@yearFirsts)365⍴0
'Leap year:'⋄2 32⍴64↑leapyearMask←(1@leapFirsts)366⍴0
```




<span style="white-space:pre; font-family: monospace">Normal year:
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
</span>






<span style="white-space:pre; font-family: monospace">Leap year:
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
</span>



So now, it might not be very elegant, but let's just concatenate three of the normal years together, and then concatenate a leap year on to that. Once that's done, let's repeat that four-year vector 25 times and get the whole century.


```APL
fourYearsOfFirsts←yearMask,yearMask,yearMask,leapyearMask
```


```APL
⍝ A whole century...
firsts←36525⍴fourYearsOfFirsts
```

Just as a sanity check, let's make sure firsts and days are the same length. 1 means success:


```APL
(⍴days)=⍴firsts
```




<span style="white-space:pre; font-family: monospace">1
</span>



## 4. Uncle Bob

Ok, so, without further ado, let's multiply the days vector and the firsts vector, and count the number of 1s in the resut. That should be our answer:


```APL
+/days×firsts
```




<span style="white-space:pre; font-family: monospace">171
</span>



Ta-da! That matches the estimate we had at the beginning pretty well.

It seems to me that one nice advantage of the APL approach to this is that it does not as easily get trapped in weird off-by-one errors. If I'd had to do this in Fortran or Python or whatever else, in a loopy style, I am sure I would have spent most of my time debugging errors to do with whether the last week in the century had a Sunday in it or how the days of the week offset from one year to the next and so on, and if statements about the leap year. This solution is nice because we can generate the entire century of days and of firsts of months and just overlay the two vectors. So... in conclusion... rah for APL!
