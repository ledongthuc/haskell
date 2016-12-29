{-|
 - Extract a slice from a list.
 - Given two indices, i and k, the slice is the list containing the elements between the i'th and k'th element of the original list (both limits included). Start counting the elements with 1.
 - Example:
 -    slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
 -    => "cdefg"
|-} 

slice :: [a] -> Int -> Int -> [a]
slice list 0 0     = list
slice [] _ _       = []
slice list from to = [ value | (no, value) <- (zip [1..] list) , no >= from, no <= to ]

slice' :: [a] -> Int -> Int -> [a]
slice' list 0 0     = list
slice' [] _ _       = []
slice' list from to = get2ndElement $ foldr helper ([], [], []) list
    where sizeX = from
          sizeY = to - from + 1
          sizeZ = length list - to
          helper a (x, y, z)
            | length z < sizeZ = (x   , y   , a:z)
            | length y < sizeY = (x   , a:y , z  )
            | otherwise        = (a:x , y   , z  )

get2ndElement (x, y, z)= y

main = do
  putStrLn $ "slice ['a','b','c','d','e','f','g','h','i','k'] 3 7   : " ++ ( show $ slice ['a','b','c','d','e','f','g','h','i','k'] 3 7    )
  putStrLn $ "slice ['a','b','c','d','e','f','g','h','i','k'] 1 10  : " ++ ( show $ slice ['a','b','c','d','e','f','g','h','i','k'] 1 10   )
  putStrLn $ "slice ['a','b','c','d','e','f','g','h','i','k'] 0 11  : " ++ ( show $ slice ['a','b','c','d','e','f','g','h','i','k'] 0 11   )
  putStrLn $ "slice ['a','b','c','d','e','f','g','h','i','k'] -1 0  : " ++ ( show $ slice ['a','b','c','d','e','f','g','h','i','k'] (-1) 0 )
  putStrLn $ "slice ['a','b','c','d','e','f','g','h','i','k'] 9 11  : " ++ ( show $ slice ['a','b','c','d','e','f','g','h','i','k'] 9 11   )
  putStrLn $ "slice ['a','b','c','d','e','f','g','h','i','k'] 7 3  : " ++ ( show $ slice ['a','b','c','d','e','f','g','h','i','k'] 7 3   )
  putStrLn $ "slice [] 3 7   : " ++ ( show $ slice ([]::[Int]) 3 7    )
  putStrLn $ "slice [] 1 10  : " ++ ( show $ slice ([]::[Int]) 1 10   )
  putStrLn $ "slice [] 0 11  : " ++ ( show $ slice ([]::[Int]) 0 11   )
  putStrLn $ "slice [] -1 0  : " ++ ( show $ slice ([]::[Int]) (-1) 0 )
  putStrLn $ "slice [] 9 11  : " ++ ( show $ slice ([]::[Int]) 9 11   )
  putStrLn $ "slice [] 7 3   : " ++  ( show $ slice ([]::[Int]) 7 3    )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/18
