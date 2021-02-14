-- No check for n > len list. Maybe will fix that tonight...
nth :: [a] -> Int -> a
nth [] _v = error "Empty list"
nth [x] 1 = x
nth (x:xs) 1 = x
nth (x:xs) n = nth xs (n-1)

main :: IO ()
main = do
  print (nth [1,2,3] 2) -- Should = 2
  print (nth "haskell" 5) -- Should = 'e' 
