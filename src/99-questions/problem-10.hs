{-|
 - Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.
 - Example in Haskell: 
 -   encode "aaaabccaadeeee"
 -   => [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
|-}

encode :: (Eq a) => [a] -> [(Integer, a)]
encode []        = []
encode list = packLoop $ wrap list

wrap :: [a] -> [(Integer, a)]
wrap [] = []
wrap (x:xs) = (1, x) : wrap xs 

packLoop :: (Eq a) => [(Integer, a)] -> [(Integer, a)]
packLoop [] = []
packLoop list 
  | compareList list repackedList = list
  | otherwise          = packLoop repackedList
  where repackedList = packItem list

packItem :: (Eq a) => [(Integer, a)] -> [(Integer, a)]
packItem [] = []
packItem (a:[]) = [a]
packItem (a:b:xs)
  | (snd a) == (snd b) = ((fst a + fst b), snd a) : (packItem xs)
  | otherwise = a : (packItem (b : xs))

compareList :: (Eq a) => [(Integer, a)] -> [(Integer, a)] -> Bool
compareList [] [] = True
compareList [] _ = False
compareList _ [] = False
compareList (a:as) (b:bs) = ((snd a) == (snd b)) && compareList as bs

main = do
  putStrLn $ "encode [1, 2, 3, 4]         : " ++ ( show $ encode [1, 2, 3, 4] )
  putStrLn $ "encode \"aaaabccaadeeee\"     : " ++ ( show $ encode "aaaabccaadeeee" )
  putStrLn $ "encode \"aaabcaaadddddeee\"   : " ++ ( show $ encode "aaabcaaadddddeee" )
  putStrLn $ "encode \"\"                   : " ++ ( show $ encode "" )
  putStrLn $ "encode \"a\"                  : " ++ ( show $ encode "a" )
  putStrLn $ "encode [1,2,2,3,3,3,4,4,4,4,5,5,5,5,5,6,6,6,6,6,6]     : " ++ ( show $ encode [1,2,2,3,3,3,4,4,4,4,5,5,5,5,5,6,6,6,6,6,6] )
