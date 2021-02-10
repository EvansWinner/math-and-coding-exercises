nth :: [a] -> Int -> a
nth [x] 1 = x
nth (x:xs) 1 = x
nth (x:xs) n = nth xs (n-1) 


main :: IO ()
main = do
  print (nth [1,2,3] 2) -- Should = 2
  print (nth "haskell" 5) -- Should = 'e' 
