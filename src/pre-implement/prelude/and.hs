and' :: [Bool] -> Bool
and' = foldr (&&) True

check :: [Integer] -> Integer
check (x:xs) = x + check xs

main = do
  putStrLn $ show $ and' [True, True, True]
  putStrLn $ show $ and' [True, False, True]
  putStrLn $ show $ and' [False, True, True]
  putStrLn $ show $ and' [True, True, False]
  putStrLn $ show $ check (repeat 1)
