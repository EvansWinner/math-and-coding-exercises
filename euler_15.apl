⍝ #100DaysOfCode D2 Project Euler #15
⍝ This is just n choose k since you can't go back on either
⍝ axis you go 20 down / 20 over. So that's 40 moves of
⍝ which any 20 need to be down. APL has a factorial
⍝ primitive, so :)
nchoosek←{(!⍺)÷(!⍵)×!⍺-⍵}
40 nchoosek 20

