⍝ It's a start, anyway
ctz←{2|⍵:1+3×⍵⋄2×⍵}       ⍝ Next in Collatz seq for ⍵
ctzLen←{⍵=1:⍺⋄(⍺+1)∇ctz⍵} ⍝ Length of seq for ⍵

