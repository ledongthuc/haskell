elem'::(Eq a)=>a->[a]->Bool
elem' _ [] = False
elem' x (y:ys)
  | x == y = True
  | otherwise = elem' x ys

main = do
  putStrLn (show (elem' 5 [1,2,3,4]))
  putStrLn (show (elem' 5 [1,2,5,4]))
  putStrLn (show (elem' 5 [5,2,1,4]))
  putStrLn (show (elem' 5 [1,2,1,5]))
  putStrLn (show (elem' 5 [1,5,1,5]))
  putStrLn (show (elem' 5 []))
