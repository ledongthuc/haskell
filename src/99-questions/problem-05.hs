{-|
 - Reverse a list.
 - Example in Haskell: 
 -   myReverse [1,2,3,4] => [4,3,2,1]
|-}

myReverse :: [a] -> [a]
myReverse = foldl (\ys y -> y : ys) []

main = do
  putStrLn $ "myReverse [1, 2, 3, 4]         : " ++ ( show $ myReverse [1, 2, 3, 4] )
  putStrLn $ "myReverse ['x', 'y', 'z']      : " ++ ( show $ myReverse ['x', 'y', 'z'] )
  putStrLn $ "myReverse [100]                : " ++ ( show $ myReverse [100] )
  putStrLn $ "myReverse ( []::[Char] )       : " ++ ( show $ myReverse ( []::[Char] ) )
  putStrLn $ "myReverse [1,2,3,4,5]          : " ++ ( show $ myReverse [1,2,3,4,5] )
  -- putStrLn $ "myReverse [1..]             : " ++ ( show $ myReverse [1..] )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/5
