pds←{⍸(⌊ds)=ds←⍵÷⍳⍵-1} ⍝ Generate proper divisors of ⍵
⍝ Divisors of N up to 9999, plus those up to the
⍝ largest sum of divisors; then replace 1s with 0s 
d←1@(=∘0)(+/pds)¨⍳⌈/(+/pds)¨⍳9999
9999↑d×d[(9999↑d),((⍴d)-9999)⍴1]=d
