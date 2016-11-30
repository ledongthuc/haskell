{-|
 - Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.
 - Example in Haskell: 
 -   pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 
 -                'a', 'd', 'e', 'e', 'e', 'e']
 -   => ["aaaa","b","cc","aa","d","eeee"]
|-}

pack :: (Eq a) => [a] -> [[a]]
pack []        = []
pack list = packLoop $ wrap list

wrap :: [a] -> [[a]]
wrap [] = []
wrap (x:xs) = [x] : wrap xs 

packLoop :: (Eq a) => [[a]] -> [[a]]
packLoop [] = []
packLoop list
  | list == repackList = list
  | otherwise          = packLoop repackList
  where repackList = packItem list

packItem :: (Eq a) => [[a]] -> [[a]]
packItem [] = []
packItem (a:[]) = [a]
packItem (a:b:xs)
  | a!!0 == b!!0 = (a ++ b) : (packItem xs)
  | otherwise = a : (packItem (b : xs))


main = do
  putStrLn $ "pack [1, 2, 3, 4]         : " ++ ( show $ pack [1, 2, 3, 4] )
  putStrLn $ "pack \"aaaabccaadeeee\"     : " ++ ( show $ pack "aaaabccaadeeee" )
  putStrLn $ "pack \"aaabcaaadddddeee\"   : " ++ ( show $ pack "aaabcaaadddddeee" )
  putStrLn $ "pack \"\"                   : " ++ ( show $ pack "" )
  putStrLn $ "pack \"a\"                  : " ++ ( show $ pack "a" )
