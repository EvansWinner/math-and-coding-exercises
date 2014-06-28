⍝ Project Euler problem 1

⍝ Works in NARS2000 APL

⍝ This is ugly and not the kind of points free thing
⍝ I would like, but what I know about APL could fit on a
⍝ postage stamp.

+/(((3|a)=0)∨((5|a)=0))∧a←⍳1000

⍝ ==> 234168