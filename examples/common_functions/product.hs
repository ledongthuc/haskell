product' :: (Num a) => [a] -> a
product' = foldl (*) 1

main :: IO()
main = print (product' [1,2,3,4,5])

