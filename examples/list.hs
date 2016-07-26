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
result = list1 !! 2 `elem` list2 

main = print(result)
