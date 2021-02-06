⍝ #100DaysOfCode #ProjectLovelace #5 for tryapl.org
⍝ The haversine formula, hav, takes two coordinate pairs as 2-length
⍝ vectors: ϕ1 λ1 and ϕ1 λ1, given as degrees latitude and longitude
⍝ yielding the overland shortest distance between the two points,
⍝ ϕ1 λ1 being point 1, and ϕ1 λ1 being point 2.
⍝ This is write-only code that shows my inexperience in APL

R←6372.1                   ⍝ Radius of idealized Earth in Kilometers
rad←{(○⍵)÷180}             ⍝ Degrees->Radians
term1←{(1○((1↑⍵)-1↑⍺)÷2)*2}
term2←{(2○(1↑⍵))×(2○(1↑⍺))×(1○((1↓⍵)-1↓⍺)÷2)*2}
hav←{2×R×¯1○((⍺term1⍵)+⍺term2⍵)*.5}

⍝ Test should = 17760.054
(rad 46.283 86.667)hav(rad ¯48.877 ¯123.393)
