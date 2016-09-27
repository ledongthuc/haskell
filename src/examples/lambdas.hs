doIt :: (a -> b -> c) -> a -> b -> c
doIt f a b = f a b

main = do
  putStrLn(show (doIt (\a b -> a + b) 5 7 ))
  putStrLn(show (doIt (\a b -> a - b) 5 7 ))
