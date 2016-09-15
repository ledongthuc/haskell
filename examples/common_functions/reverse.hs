reverse'::[a]->[a]
reverse' [] = []
reverse' (x:xs) = (reverse' xs) ++ [x]

reverse2'::[a]->[a]
reverse2' xs = foldl (\x y -> y : x) [] xs

reverse3'::[a]->[a]
reverse3' xs = foldl ( flip (:) ) [] xs

main = do
  putStrLn( show( reverse' [1,2,3,4,5] ))
  putStrLn( show( reverse' [1..10] ))
  putStrLn( show( reverse' []::[Double] ))
  putStrLn( show( reverse2' [1,2,3,4,5] ))
  putStrLn( show( reverse2' [1..10] ))
  putStrLn( show( reverse2' []::[Double] ))
  putStrLn( show( reverse3' [1,2,3,4,5] ))
  putStrLn( show( reverse3' [1..10] ))
  putStrLn( show( reverse3' []::[Double] ))
