quickSort::(Ord a)=>[a]->[a]
quickSort []     = []
quickSort (x:xs) = (quickSort lessList) ++ [x] ++ (quickSort greaterList)
                 where lessList = [z | z<-xs, z <= x]
                       greaterList = [z | z<-xs, z > x]

main = print(quickSort [1,5,7,9,0,2,3,4,6,3,1,4,7,7,3,2,45,6,87])
