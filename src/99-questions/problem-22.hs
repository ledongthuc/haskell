{-|
 - Create a list containing all integers within a given range.
 - Example:
 -    range 4 9
 -    => [4,5,6,7,8,9]
|-} 

range x y= [x..y]

-- Try without existed
range' :: Int -> Int -> [Int]
range' from to
  | from == to = [to]
  | from <  to = from:(range' (from + 1) to)
  | from >= to = []

main = do
  putStrLn $ "range 4    9   : " ++  ( show $ range 4    9   )
  putStrLn $ "range 4    4   : " ++  ( show $ range 4    4   )
  putStrLn $ "range (-4) 4   : " ++  ( show $ range (-4) 4   )
  putStrLn $ "range (-4) (-1): " ++  ( show $ range (-4) (-1))
  putStrLn $ "range 9    4   : " ++  ( show $ range 9    4   )
  putStrLn $ "range (-1) (-4): " ++  ( show $ range (-1) (-4))

  putStrLn $ "range' 4    9   : " ++  ( show $ range' 4    9   )
  putStrLn $ "range' 4    4   : " ++  ( show $ range' 4    4   )
  putStrLn $ "range' (-4) 4   : " ++  ( show $ range' (-4) 4   )
  putStrLn $ "range' (-4) (-1): " ++  ( show $ range' (-4) (-1))
  putStrLn $ "range' 9    4   : " ++  ( show $ range' 9    4   )
  putStrLn $ "range' (-1) (-4): " ++  ( show $ range' (-1) (-4))

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/22
