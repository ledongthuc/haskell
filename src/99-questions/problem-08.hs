{-|
 - Eliminate consecutive duplicates of list elements.
 - If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.
 - Example in Haskell: 
 -   compress "aaaabccaadeeee" => "abcade"
|-}

compress :: (Eq a) => [a] -> [a]
compress []            = []
compress (x1:[])       = [x1]
compress (x1:x2:xs)
  | x1 == x2  = compress (x2:xs)
  | otherwise = x1 : compress (x2:xs)

main = do
  putStrLn $ "compress [1, 2, 3, 4]         : " ++ ( show $ compress [1, 2, 3, 4] )
  putStrLn $ "compress ['x', 'y', 'z']      : " ++ ( show $ compress ['x', 'y', 'z'] )
  putStrLn $ "compress [100]                : " ++ ( show $ compress [100] )
  putStrLn $ "compress ( []::[Char] )       : " ++ ( show $ compress ( []::[Char] ) )
  putStrLn $ "compress [1,2,3,4,5]          : " ++ ( show $ compress [1,2,3,4,5] )
  putStrLn $ "compress [1,2,3,2,1]          : " ++ ( show $ compress [1,2,3,2,1] )
  putStrLn $ "compress ['z','x','z']        : " ++ ( show $ compress ['z','x','z'] )
  putStrLn $ "compress \"aaaabccaadeeee\"     : " ++ ( show $ compress "aaaabccaadeeee" )
  putStrLn $ "compress \"\"                   : " ++ ( show $ compress "" )
  putStrLn $ "compress \"a\"                  : " ++ ( show $ compress "a" )
  -- putStrLn $ "compress [1..]             : " ++ ( show $ compress [1..] )
