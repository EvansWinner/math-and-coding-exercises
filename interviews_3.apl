⍝ From https://codeburst.io/100-coding-interview-questions-for-programmers-b1cf74885fb7
⍝ Find the number of occurrences of a given character in a string:

nChar←{+/~(⍺⍳⍵)-1}
'a' nChar 'abracadabra' ⍝ Test => 5

