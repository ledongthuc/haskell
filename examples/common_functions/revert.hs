revert'::[a]->[a]
revert' [] = []
revert' (x:xs) = (revert' xs) ++ [x]

main = do
  putStrLn( show( revert' [1,2,3,4,5] ))
  putStrLn( show( revert' [1..10] ))
  putStrLn( show( revert' []::[Double] ))
