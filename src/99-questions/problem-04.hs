{-|
 - Find the number of elements of a list.
 - Example in Haskell: 
 -   myLength "Hello, world!" => 13
|-}

myLength :: [a] -> Integer
myLength list = foldr (\_ y -> y + 1) 0 list

main = do
  putStrLn $ "myLength [1, 2, 3, 4]         : " ++ ( show $ myLength [1, 2, 3, 4] )
  putStrLn $ "myLength ['x', 'y', 'z']      : " ++ ( show $ myLength ['x', 'y', 'z'] )
  putStrLn $ "myLength [1..999999]          : " ++ ( show $ myLength [1..999999] )
  putStrLn $ "myLength [100]                : " ++ ( show $ myLength [100] )
  putStrLn $ "myLength ( []::[Char] )       : " ++ ( show $ myLength ( []::[Char] ) )
  putStrLn $ "myLength [1,2,3,4,5]          : " ++ ( show $ myLength [1,2,3,4,5] )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/4
