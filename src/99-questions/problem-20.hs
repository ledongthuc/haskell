{-|
 - Remove the K'th element from a list.
 - Example:
 -    removeAt 2 "abcd"
 -    => ('b',"acd")
|-} 

removeAt :: Int -> [a] -> ([a], [a])
removeAt no list  = (leftList, rightList)
  where leftList  = [ value | (subNo, value) <- zip [1..] list, no == subNo ]
        rightList = [ value | (subNo, value) <- zip [1..] list, no /= subNo ]

main = do
  putStrLn $ "removeAt 1    ['a', 'b', 'c', 'd'] : " ++  ( show $ removeAt 1    ['a', 'b', 'c', 'd'] )
  putStrLn $ "removeAt 2    ['a', 'b', 'c', 'd'] : " ++  ( show $ removeAt 2    ['a', 'b', 'c', 'd'] )
  putStrLn $ "removeAt 4    ['a', 'b', 'c', 'd'] : " ++  ( show $ removeAt 4    ['a', 'b', 'c', 'd'] )
  putStrLn $ "removeAt 0    ['a', 'b', 'c', 'd'] : " ++  ( show $ removeAt 0    ['a', 'b', 'c', 'd'] )
  putStrLn $ "removeAt (-1) ['a', 'b', 'c', 'd'] : " ++  ( show $ removeAt (-1) ['a', 'b', 'c', 'd'] )
  putStrLn $ "removeAt 10   ['a', 'b', 'c', 'd'] : " ++  ( show $ removeAt 10   ['a', 'b', 'c', 'd'] )

  putStrLn $ "removeAt 2    ([]::[Int]) : " ++  ( show $ removeAt 2    ([]::[Int]) )
  putStrLn $ "removeAt 0    ([]::[Int]) : " ++  ( show $ removeAt 0    ([]::[Int]) )
  putStrLn $ "removeAt (-1) ([]::[Int]) : " ++  ( show $ removeAt (-1) ([]::[Int]) )
  putStrLn $ "removeAt 10   ([]::[Int]) : " ++  ( show $ removeAt 10   ([]::[Int]) )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/20
