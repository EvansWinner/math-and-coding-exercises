⍝ Project Euler # 10. 
⍝ Probably could be a lot better....
sumPrimesLessThanN←{¯1++/(⍳⍵)×2>+/~((⌊t)=t←∘.÷⍨⍳⍵)⍲(~∘.=⍨⍳⍵)}
sumPrimesLessThanN 2000000