⍝ #100DaysOfCode D10
⍝ (also worked on selection sort in Python today)
⍝ Euler's Totient function in GNU #APL
⍝ and the first 1000 values plotted.
⍝ I thought it would be a lot harder,
⍝ but APL has a GCF primitive which
⍝ makes it trivial. As for the deeper mathematical
⍝ meaning of it, I have no idea.
phi←{+/1=⍵∨⍳⍵}
⎕plot phi¨(⍳1000)
