lastButOne :: [a] -> a
lastButOne [] = error "Too few elements"
lastButOne [x] = error "Too few elements"
lastButOne [x,y] = x
lastButOne (x:xs) = lastButOne xs 

main :: IO ()
main = do
  print (lastButOne [1,2,3,4])  -- Should = 3
  print (lastButOne ['a'..'z']) -- Should = 'y'


