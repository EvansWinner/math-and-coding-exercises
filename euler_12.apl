⍝ #100DaysOfCode, #ProjectEuler #12 in APL
tri←{+\⍳⍵} ⍝ Generate first ⍵ triangular numbers
ds←{⍸(⌊ds)=ds←⍵÷⍳⍵} ⍝ Find divisors of ⍵
⍝ The first triangular number with more than ⍺ divisors
⍝ Have to just guess on an upper bound, ⍵ being
⍝ the nth triangular number
⍝ Takes too long to run on tryapl.org
⍝ This never worked out. Did it in Fortran instead.
euler12←{1↑(∊(⍺<⍴¨ds¨tris)×tris←tri ⍵)~0}
