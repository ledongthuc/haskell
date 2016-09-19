replicate' :: Int -> a -> [a]
replicate' n o
  | n <= 0     = []
  | otherwise  = o : replicate' (n - 1) o

main = print(replicate' 3 5)
