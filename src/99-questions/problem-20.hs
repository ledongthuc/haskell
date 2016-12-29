{-|
 - Remove the K'th element from a list.
 - Example:
 -    removeAt 2 "abcd"
 -    => ('b',"acd")
|-} 

removeAt :: Int -> [a] -> (a, [a])
removeAt no list
    | no <= 0 || no > length list = error "Index is not correct"
    | no > 0  = (list!!(no-1), rightList)
      where rightList = [ value | (subNo, value) <- zip [1..] list, no /= subNo ]

main = do
  putStrLn $ "removeAt 1    ['a', 'b', 'c', 'd'] : " ++  ( show $ removeAt 1    ['a', 'b', 'c', 'd'] )
  putStrLn $ "removeAt 2    ['a', 'b', 'c', 'd'] : " ++  ( show $ removeAt 2    ['a', 'b', 'c', 'd'] )
  putStrLn $ "removeAt 4    ['a', 'b', 'c', 'd'] : " ++  ( show $ removeAt 4    ['a', 'b', 'c', 'd'] )
  -- putStrLn $ "removeAt 0    ['a', 'b', 'c', 'd'] : " ++  ( show $ removeAt 0    ['a', 'b', 'c', 'd'] )
  -- putStrLn $ "removeAt (-1) ['a', 'b', 'c', 'd'] : " ++  ( show $ removeAt (-1) ['a', 'b', 'c', 'd'] )
  -- putStrLn $ "removeAt 10   ['a', 'b', 'c', 'd'] : " ++  ( show $ removeAt 10   ['a', 'b', 'c', 'd'] )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/20
