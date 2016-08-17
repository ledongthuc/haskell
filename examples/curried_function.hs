main = do
  putStrLn (show ((max 5) 2))
  putStrLn (show (partialMax 2))
  putStrLn (show (partialMax 12))
  putStrLn (show (partialMax 11))
  where partialMax = max 11
