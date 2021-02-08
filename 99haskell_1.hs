mylast :: [a] -> a
mylast [x] = x
mylast (x:xs) = mylast xs

main :: IO ()
main = do 
  print (mylast [1,2,3,4])    -- Should be 4
  print (mylast ['x','y','z']) -- Should be 'z'

