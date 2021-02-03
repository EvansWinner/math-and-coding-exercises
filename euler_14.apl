⍝ It's a start, anyway
ctz←{2|⍵:1+3×⍵⋄⍵2}       ⍝ Next in Collatz seq for ⍵
ctzLenHelp←{⍵=1:⍺⋄(⍺+1)∇ctz⍵} ⍝ Recursive helper to find len of seq for ⍵
ctzLen←{1ctzLenHelp⍵} ⍝ Call to be monadic
⌈ctzLen¨⍳1000 ⍝ Find max value up to 1000