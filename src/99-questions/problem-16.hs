{-|
 - Drop every N'th element from a list.
 - Example:
 -    dropEvery "abcdefghik" 3
 -    => "abdeghk"
|-} 

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery _  0 = []
dropEvery list l
  | l < 0     = list
  | otherwise = left ++ dropEvery (tailWithEmpty right) l
      where (left, right) = splitAt l list

tailWithEmpty :: [a] -> [a]
tailWithEmpty [] = []
tailWithEmpty (_:xs) = xs


main = do
  putStrLn $ "dropEvery [1,2,3,4,5] 0   : " ++ ( show $ dropEvery [1,2,3,4,5] 0 )
  putStrLn $ "dropEvery [1,2,3,4,5] 1   : " ++ ( show $ dropEvery [1,2,3,4,5] 1 )
  putStrLn $ "dropEvery [1,2,3,4,5] 2   : " ++ ( show $ dropEvery [1,2,3,4,5] 2 )
  putStrLn $ "dropEvery [1,2,3,4,5] (-1): " ++ ( show $ dropEvery [1,2,3,4,5] (-1))
  putStrLn $ "dropEvery [1,2,3,4,5] 4   : " ++ ( show $ dropEvery [1,2,3,4,5] 4 )
  putStrLn $ "dropEvery [1,2,3,4,5] 5   : " ++ ( show $ dropEvery [1,2,3,4,5] 5 )
  putStrLn $ "dropEvery [1,2,3,4,5] 6   : " ++ ( show $ dropEvery [1,2,3,4,5] 6 )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/16
