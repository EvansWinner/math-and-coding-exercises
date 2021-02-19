⍝ #100DaysOfCode D30: #ProjectLovelace #11
⍝ "Rocket Science" in tryapl.org APL.
⍝ The "rocket equation."
ve←2550   ⍝ Exhaust velocity in m/s
M←250000  ⍝ Rocket mass in kg
m←{M×¯1+(*1)*⍵÷ve}
m 11186.0 ⍝ Should = 19843016.27
m 500.0   ⍝ Should = 54155.58074

