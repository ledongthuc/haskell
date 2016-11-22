{-|
 - Find the last element of a list.
 - Example in Haskell: 
 -   myLast [1,2,3,4] => 4
 -   myLast ['x','y','z'] => 'z'
|-}

myLast :: [a] -> Maybe a
myLast [] = Nothing
myLast (x:[]) = Just x
myLast (x:xs) = myLast xs

main = do
  putStrLn $ "myLast [1, 2, 3, 4]    : " ++ ( show $ myLast [1, 2, 3, 4] )
  putStrLn $ "myLast ['x', 'y', 'z'] : " ++ ( show $ myLast ['x', 'y', 'z'] )
  putStrLn $ "myLast [1..999999]     : " ++ ( show $ myLast [1..999999] )
  putStrLn $ "myLast [100]           : " ++ ( show $ myLast [100])
  putStrLn $ "myLast []              : " ++ ( show $ myLast ( []::[Char]  ))
