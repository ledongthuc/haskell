filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (s:sx)
  | f s = s : (filter' f sx)
  | otherwise = filter' f sx

main = print (filter' even [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
