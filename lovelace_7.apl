⍝ #100DaysOfCode D4 #ProjectLovelace #7 in APL
⍝ Calculate mean and SD
mean←{(+/⍵)÷⍴⍵}
sd←{((+/(⍵-mean ⍵)*2)÷⍴⍵)*.5}
test←4.4 4.2 7.0 12.9 18.5 23.5 26.4 26.3 22.5 16.6 11.2 7.3
mean test ⍝ should = 15.06666667
sd test ⍝ should = 8.021048698