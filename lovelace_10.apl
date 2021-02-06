⍝ #100DaysOfCode D19: #ProjectLovelace #10: Definite Integrals:
⍝ Too easy in APL:
di←{+/⍺×⍵}
1.5 di 0 1 2 3 4 5 ⍝ Test 1 should = 22.5
2 di ¯1 2 ¯3 4 ¯5 ⍝ Test 2 should = -6
