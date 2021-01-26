⍝ 100DaysOfCode Factorial, superfactorial, and hyperfactorial
⍝ in GNU #APL. Plot is ridiculous as they're not comperable
⍝ in scale but I don't know how to control the plot function
⍝ yet.
fact←{×/⍳⍵} 
sfact←{×/fact¨⍳⍵}
hfact←{×/(⍳⍵)*¨⍳⍵}
⎕plot 3 10⍴(fact¨⍳10),(sfact¨⍳10),hfact¨⍳10
