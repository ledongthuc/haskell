zip'::[a]->[b]->[(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (a:as) (b:bs) = (a, b) : (zip' as bs)

main = do
  putStrLn (show (zip' [1, 2, 3] [4, 5, 6]))
  putStrLn (show (zip' [1, 2, 3, 4] ["a", "b", "c"]))
  putStrLn (show (zip' [1, 2, 3] ["a", "b", "c", "d"]))
  putStrLn (show (zip' emptyList ["a", "b", "c"]))
  putStrLn (show (zip' [1, 2, 3] emptyList))
  where emptyList = []::[Int]
