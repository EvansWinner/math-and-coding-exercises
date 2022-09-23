⍝ 99 k problems done in APL

⍝ from https://github.com/kevinlawler/kona/wiki/K-99%3A-Ninety-Nine-K-Problems
⍝ which was itself inspired by the famous 99 Prolog problems.

⍝ "List" here is usually taken to mean "array," and all the other obvious mutati mutandi. 
⍝ We're going for the spirit of the thing, not being boringly literal.
⍝ They're all extensively tested. -- Ha ha! Not!
⍝ Shamelessly just renaming primitives when that's all that's necessary.

⍝ 1. Last elt
last←⊃⌽

⍝ 2. Last but one elt
lb1←1↓2↑⌽

⍝ 3. kth elt
kth←{1↑(⍺-1)↓⍵}

⍝ 4. Length
len←⍴

⍝ 5. Reverse
rev←⌽

⍝ 6. Palendrome check
palendromep←{⍵≡⌽⍵}

⍝ 7. Flatten a nested structure
flat←∊

⍝ 8. Eliminate consecutive duplicates
compr←{(~⍵=1↓⍵,0)/⍵}

⍝ 9. Pack consecutive duplicates into items
pack←{(¯1⌽~⍵=1↓⍵,0)⊂⍵}

⍝ 10. Run-length encode
rle1←{⊂(⍴⍵),⊃⍵} ⍝ Run-length encode a single item
rle←{rle1¨pack ⍵}

⍝ 11. Run-length encode different version?
⍝ Boring. Already solved this. Skipping.

⍝ 12. Decode a run-length encoded vec
rld1←{(⊃⊃x)⍴1↓⊃x} ⍝ Run-length decode a single item
rld←{∊rld1¨⍵}

⍝ 13. Boring variant of 12. Not going to bother

⍝ 14. Duplicate elts of vec
dup←∊(2⍴⊃)¨

⍝ 15. Duplicate elts k times
dupk←/

⍝ 16. Drop every nth elt
rmnth←{((⍴⍵)⍴((⍺-1)⍴1),0)/⍵}

⍝ 17. Split vec into two parts given length of the first part
split←{(⊂⍺↑⍵),⊂⍺↓⍵}

⍝ 18. Extract slice from vec
⍝ E.g. 2 4 slice 'abcdef' => bcd
rng←{(⍺-1)+⍳⍵-⍺} ⍝ range helper
slice←{⍵[(⊃⍺)rng 1↓⍺]}

⍝ 19. Rotate vec n places to left.
nrot←⊖

⍝ 20. Remove the kth elt of vec, but then prepend it to the list as separate item
dropk←{((⍺-1)↑⍵),(⍺↓⍵)}⍝ helper
removeat←{(⍵[⍺])(⍺ dropk ⍵)}

⍝ 21. Insert elt at nth pos into vec
insertat←{((⍺[2]-1)↑⍵),⍺[1],(⍺[2]↓⍵)}

⍝ 22. Give vec of all ints in range
