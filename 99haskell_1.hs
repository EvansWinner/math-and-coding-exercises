mylast :: [a] -> a
mylast [x] = x
mylast (x:xs) = mylast xs

main :: IO ()
main = print (mylast [1,2,3,4,5])
