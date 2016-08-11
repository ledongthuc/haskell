take' :: Int -> [a] -> [a]
take' _ [] = []
take' no (x:xs) 
  | no <= 0   = []
  | otherwise = x : take' (no-1) xs

main = do
  putStrLn(show(take' 3 testList))
  putStrLn(show(take' 0 testList))
  putStrLn(show(take' 3 emptyList))
  where emptyList = []::[Double]
        testList = [1,2,3,4,5]
