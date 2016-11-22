{-|
 - Flatten a nested list structure.
 - Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).
 - Example in Haskell: 
 -   flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) => [1,2,3,4,5]
|-}

data NestedList a = Elem a | List [NestedList a]

myFlatten :: NestedList a -> [a]
myFlatten (Elem a)      = [a]
myFlatten (List (x:xs)) = (myFlatten x) ++ (myFlattens xs)

myFlattens :: [NestedList a] -> [a]
myFlattens []     = []
myFlattens (x:xs) = (myFlatten x) ++ (myFlattens xs)

main = do
  putStrLn $ "myFlatten (Elem 1)                             : " ++ ( show $ myFlatten (Elem 1 ) )
  putStrLn $ "myFlatten (List [Elem 1])                      : " ++ ( show $ myFlatten (List [Elem 1 ] ) )
  putStrLn $ "myFlatten (List [Elem 1 Elem 2])               : " ++ ( show $ myFlatten (List [Elem 1, Elem 2] ) )
  putStrLn $ "myFlatten (List [Elem 1 List [Elem 2 Elem 3]]) : " ++ ( show $ myFlatten (List [Elem 1, List [Elem 2, Elem 3]] ) )
