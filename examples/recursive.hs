getMaximum :: (Ord a) => [a] -> a
getMaximum [] = error "Maximum of empty list"
getMaximum [x] = x
getMaximum (x:xs) = max x (getMaximum xs)

main = print("Maximum number of [4,2,7,1] is " ++ show(getMaximum([4,2,7,1])))
