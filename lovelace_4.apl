⍝ #100DaysOfCode D4 #ProjectLovelace #4 in APL
⍝ Given temp Ta in C & wind speed v in km/h
⍝ give wind chill index, Twc. Formula:
⍝ Twc = 13.12 + 0.6215Ta - 11.37v^0.16 +0.3965Tav^0.16
Twc←{(.6215×⍺)+(.3965×⍺×⍵*.16)+13.12-(11.37×⍵*.16)}
¯25 Twc 30 ⍝Test should=¯39.0918177