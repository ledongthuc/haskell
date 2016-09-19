sum' :: (Num a) => [a] -> a
sum' l = foldl (\x y -> x  + y) 0 l

max' :: (Ord a, Num a) => [a] -> a
max' l = foldl (\x y -> max x y) 0 l

map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x y -> f x : y ) [] xs

map2' :: (a -> b) -> [a] -> [b]
map2' f xs = foldl (\x y -> f y : x ) [] xs

max1' :: (Ord a, Num a) => [a] -> a
max1' l = foldl1 (\x y -> max x y) l

main = do
  putStrLn $ show ( sum' [1,2,3,4])
  putStrLn $ show ( max' [11,7,10,9])
  putStrLn $ show ( max' [])
  putStrLn $ show ( max1' [11,7,10,9])
  -- putStrLn $ show ( max1' [])
  putStrLn $ show ( map' (\x -> x * 2) [1,2,3,4,5])
  putStrLn $ show ( map2' (\x -> x * 2) [1,2,3,4,5])
  
