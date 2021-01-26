⍝ 100DaysOfCode Factorial, superfactorial, and hyperfactorial
⍝ in GNU #APL. Plot is ridiculous as they're not comperable
⍝ in scale but I don't know how to control the plot function
⍝ yet.
fact←{×/⍳⍵} 
superfact←{×/fact¨⍳⍵}
hyperfact←{×/(⍳⍵)*¨⍳⍵}

⎕plot 3 10⍴(fact¨⍳10),(superfact¨⍳10),hyperfact¨⍳10
