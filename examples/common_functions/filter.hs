filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (s:sx)
  | f s = s : (filter' f sx)
  | otherwise = filter' f sx

filter1' :: (a -> Bool) -> [a] -> [a]
filter1' f = foldr (\x y -> if f x then x : y else y) []

main = do
  putStrLn $ show (filter' even [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  putStrLn $ show (filter1' even [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
