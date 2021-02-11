⍝ #100DaysOfCode D25: Generalized Euclidean distance, d
⍝ in APL. Inspired by SPOJ #25312, "DRNTEAGL"
⍝ LHS default is origin.
⍝ Not in beautiful, elegant, points-free style.
d←{⍺←(⍴⍵)⍴0⋄dels←|⍵-⍺⋄(+/dels*2)*.5}
7 4 3 d 17 6 2 ⍝ Test. Should = 10.24695077
d 3 4          ⍝ test. Should = 5
