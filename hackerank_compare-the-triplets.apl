⍝ #100DaysOfCode D24: HackerRank
⍝ "Compare the Triplets"
⍝ https://www.hackerrank.com/challenges/compare-the-triplets/problem
⍝ in beginner  APL. Works on
⍝ arbitrary sized arrays, though
ctt←{(+/¯1=s),+/1=s←×⍺-⍵}
1 2 3 ctt 3 2 1 ⍝ yields 1 1 
