map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : (map' f xs)

main = print (map' (+ 5) [1,2,3,4])
