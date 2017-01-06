--removeStringFromSlice :: (Eq a) => a -> [a] -> [a]
removeStringFromSlice _          []     = []
removeStringFromSlice removeItem (x:xs) = if removeItem == x 
                                          then removeStringFromSlice removeItem xs
                                          else x : removeStringFromSlice removeItem xs
main = do
  putStrLn $ show $ removeStringFromSlice 'c' "abcd"
  putStrLn $ show $ removeStringFromSlice 'c' "acbc"
  putStrLn $ show $ removeStringFromSlice 'a' "abcd"
  putStrLn $ show $ removeStringFromSlice 'x' "abcd"
  putStrLn $ show $ removeStringFromSlice 'x' ""
