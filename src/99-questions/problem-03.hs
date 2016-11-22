{-|
 - Find the K'th element of a list. The first element in the list is number 1.
 - Example in Haskell: 
 -   elementAt [1,2,3] 2 => 2
|-}

elementAt :: [a] -> Integer -> (Maybe a)
elementAt [] _ = Nothing
elementAt _ 0 = Nothing
elementAt (x:_) 1 = Just x
elementAt (x:xs) number = elementAt xs (number-1)

main = do
  putStrLn $ "elementAt [1, 2, 3, 4] 3         : " ++ ( show $ elementAt [1, 2, 3, 4] 3 )
  putStrLn $ "elementAt ['x', 'y', 'z'] 3      : " ++ ( show $ elementAt ['x', 'y', 'z'] 3 )
  putStrLn $ "elementAt [1..999999] 999999     : " ++ ( show $ elementAt [1..999999] 999999 )
  putStrLn $ "elementAt [100] 1                : " ++ ( show $ elementAt [100] 1 )
  putStrLn $ "elementAt ( []::[Char] ) 0       : " ++ ( show $ elementAt ( []::[Char] ) 0 )
  putStrLn $ "elementAt [1,2,3,4,5] 1          : " ++ ( show $ elementAt [1,2,3,4,5] 1 )
  putStrLn $ "elementAt [1,2,3,4,5] 0          : " ++ ( show $ elementAt [1,2,3,4,5] 0 )
  putStrLn $ "elementAt [1,2,3,4,5] 5          : " ++ ( show $ elementAt [1,2,3,4,5] 5 )
  putStrLn $ "elementAt [1,2,3,4,5] 6          : " ++ ( show $ elementAt [1,2,3,4,5] 6 )
  putStrLn $ "elementAt [1..] 6          : " ++ ( show $ elementAt [1..] 10000000000000000000000 )
