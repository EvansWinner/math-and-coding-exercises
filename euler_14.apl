⍝ Works for small N on tryapl.org. Need to try on actual Dyalog at home
ctz←{2|⍵:1+3×⍵⋄⍵2}            ⍝ Next in Collatz seq for ⍵
ctzLenHelp←{⍵=1:⍺⋄(⍺+1)∇ctz⍵} ⍝ Recursive helper to find len of seq for ⍵
ctzLen←{1ctzLenHelp⍵}         ⍝ Make ctzLen monadic for Each operator
1↑⍸ls=⌈/ls←ctzLen¨⍳100000       ⍝ Find index of max value up to 100000