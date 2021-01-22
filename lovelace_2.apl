⍝ #100DaysOfCode D3 #ProjectLovelace #2 in APL
⍝ using tryapl.org
⍝ Time in seconds for light to travel given
⍝ distance d in meters.
c←299792458 ⍝ Speed of light in m/s
t←{⍵÷c}
t 376291900 ⍝ Test 1 => 1.255174672
t 299792458 ⍝ Test 1 => 1