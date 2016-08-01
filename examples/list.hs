list1 = [4,5,6] : [[1,2,3],[4,6,4]]
list2 = [[4,5,6]] ++ [[1,2,3],[4,5,10]]

-- result = list1 !! 1 < list2 !! 1 
-- result = list1 !! 2 < list2 !! 2
-- result = list1 !! 2 <= list2 !! 2
--
-- result = head list1
-- result = last list2
-- result = init list2
-- result = tail list2
-- result = length list2
-- result = reverse list1 
-- result = take 2 list1 
--
-- result = null list2
-- result = null [] 
-- result = drop 2 list1 
--
-- result = maximum list1
-- result = minimum list1
-- result = sum [1,2,3,4] 
-- result = product [1,2,3,4] -- multiple
-- result = list1 !! 0 `elem` list2 
-- result = list1 !! 2 `elem` list2 

-- result = [1,3..11]
-- result = [20..1]
-- result = [3,6..5*3]
-- result = take 10 ( cycle [1,2] )
-- result = take 10 ( repeat 5 )
result = take 10 ( replicate 5 3 )

main = print(result)
