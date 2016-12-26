{-|
 - Eliminate consecutive duplicates of list elements.
 - If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.
 - Example in Haskell: 
 -   compress "aaaabccaadeeee" => "abcade"
|-}

compress :: (Eq a) => [a] -> [a]
compress (x1:x2:xs)
  | x1 == x2  = compress (x2:xs)
  | otherwise = x1 : compress (x2:xs)
compress xs            = xs

main = do
  putStrLn $ "compress [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]   : " ++ ( show $ compress [1, 2, 2, 3, 3, 3, 4, 4, 4, 4] )
  putStrLn $ "compress ['x', 'y', 'z']                  : " ++ ( show $ compress ['x', 'x', 'y', 'y', 'y', 'z'] )
  putStrLn $ "compress [100]                            : " ++ ( show $ compress [100] )
  putStrLn $ "compress ( []::[Char] )                   : " ++ ( show $ compress ( []::[Char] ) )
  putStrLn $ "compress \"aaaabccaadeeee\"                 : " ++ ( show $ compress "aaaabccaadeeee" )
  putStrLn $ "compress \"\"                               : " ++ ( show $ compress "" )
  putStrLn $ "compress \"a\"                              : " ++ ( show $ compress "a" )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/8
