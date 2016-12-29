{-|
 - Rotate a list N places to the left.
 - Example:
 -    rotate ['a','b','c','d','e','f','g','h'] 3
 -    => "defghabc"
 -    rotate ['a','b','c','d','e','f','g','h'] (-2)
 -    => "ghabcdef"
|-} 

split :: [a] -> Int -> ([a], [a])
split list 0 = ([], list)
split [] _ = ([], [])
split list size = (left, right)
  where left = [xValue | (xIndex, xValue) <- (zip [0..] list), xIndex < size]
        right = [yValue | (yIndex, yValue) <- (zip [0..] list), yIndex >= size ]

rotate :: [a] -> Int -> [a]
rotate list size = right ++ left
  where modSize = if size < 0 then (length list) + size else  size
        (left, right) = split list modSize 

main = do
  putStrLn $ "rotate ['a','b','c','d','e','f','g','h'] 3    : " ++  ( show $ rotate ['a','b','c','d','e','f','g','h'] 3    )
  putStrLn $ "rotate ['a','b','c','d','e','f','g','h'] 0    : " ++  ( show $ rotate ['a','b','c','d','e','f','g','h'] 0    )
  putStrLn $ "rotate ['a','b','c','d','e','f','g','h'] (-1) : " ++  ( show $ rotate ['a','b','c','d','e','f','g','h'] (-1) )
  putStrLn $ "rotate ['a','b','c','d','e','f','g','h'] (-2) : " ++  ( show $ rotate ['a','b','c','d','e','f','g','h'] (-2) )
  putStrLn $ "rotate ['a','b','c','d','e','f','g','h'] (-8) : " ++  ( show $ rotate ['a','b','c','d','e','f','g','h'] (-8) )
  putStrLn $ "rotate ['a','b','c','d','e','f','g','h'] (-10): " ++  ( show $ rotate ['a','b','c','d','e','f','g','h'] (-10))
  putStrLn $ "rotate ['a','b','c','d','e','f','g','h'] 10   : " ++  ( show $ rotate ['a','b','c','d','e','f','g','h'] 10   )

  putStrLn $ "rotate ([]::[Int]) 3    : " ++  ( show $ rotate ([]::[Int]) 3    )
  putStrLn $ "rotate ([]::[Int]) 0    : " ++  ( show $ rotate ([]::[Int]) 0    )
  putStrLn $ "rotate ([]::[Int]) (-1) : " ++  ( show $ rotate ([]::[Int]) (-1) )
  putStrLn $ "rotate ([]::[Int]) (-2) : " ++  ( show $ rotate ([]::[Int]) (-2) )
  putStrLn $ "rotate ([]::[Int]) (-8) : " ++  ( show $ rotate ([]::[Int]) (-8) )
  putStrLn $ "rotate ([]::[Int]) (-10): " ++  ( show $ rotate ([]::[Int]) (-10))
  putStrLn $ "rotate ([]::[Int]) 10   : " ++  ( show $ rotate ([]::[Int]) 10   )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/18
