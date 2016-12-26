{-|
 - Find the last but one element of a list. 
 - Example in Haskell: 
 -   myButLast [1,2,3,4] => 3
|-}

findButLast :: [a] -> (Maybe a)
findButLast (x:[xs]) = Just x
findButLast (_:xs) = findButLast xs
findButLast _ = Nothing 

main = do
  putStrLn $ "findButLast [1, 2, 3, 4]    : " ++ ( show $ findButLast [1, 2, 3, 4] )
  putStrLn $ "findButLast ['x', 'y', 'z'] : " ++ ( show $ findButLast ['x', 'y', 'z'] )
  putStrLn $ "findButLast [1..999999]     : " ++ ( show $ findButLast [1..999999] )
  putStrLn $ "findButLast [100]           : " ++ ( show $ findButLast [100])
  putStrLn $ "findButLast []              : " ++ ( show $ findButLast ( []::[Char]  ))

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/2
