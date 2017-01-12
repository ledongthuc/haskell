{-|
 - Determine whether a given integer number is prime.
 - Example:
 -    isPrime 7
 -    => True
|-} 

isPrime :: (Integral a) => a -> Bool
isPrime x
  | x < 2     = False
  | x <= 3    = True
  | otherwise = length [y | y <- [2..(helper x)], x `mod` y == 0] == 0
      where helper = ceiling . sqrt . fromIntegral

main = do
  putStrLn $ "isPrime 7   : " ++ ( show $ isPrime 7    )
  putStrLn $ "isPrime 10  : " ++ ( show $ isPrime 10   )
  putStrLn $ "isPrime 0   : " ++ ( show $ isPrime 0    )
  putStrLn $ "isPrime -1  : " ++ ( show $ isPrime (-1) )
  putStrLn $ "isPrime 2   : " ++ ( show $ isPrime 2    )
  putStrLn $ "isPrime 3   : " ++ ( show $ isPrime 3    )
  putStrLn $ "isPrime 17   : " ++ ( show $ isPrime 17    )
  putStrLn $ "isPrime 49   : " ++ ( show $ isPrime 49    )
  putStrLn $ "isPrime 100   : " ++ ( show $ isPrime 100    )
  putStrLn $ "isPrime 33   : " ++ ( show $ isPrime 33    )
  putStrLn $ "isPrime 97   : " ++ ( show $ isPrime 97    )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/27
