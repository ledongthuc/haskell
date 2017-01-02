{-|
 - Insert an element at a given position into a list.
 - Example:
 -    insertAt 'X' "abcd" 2
 -    => "aXbcd"
|-} 

insertAt :: a -> [a] -> Int -> [a]
insertAt item []   _        = [item]
insertAt item list position = concat [left, [item], right]
  where (left, right)       = splitAt (position-1) list

{-|
 - Imporve performance

insertAt :: a -> [a] -> Int -> [a]
insertAt x ys     1 = x:ys
insertAt x (y:ys) n = y:insertAt x ys (n-1)

|-}

main = do
  putStrLn $ "insertAt 'X' \"abcd\" 2: " ++  ( show $ insertAt 'X' "abcd" 2 )
  putStrLn $ "insertAt 'X' \"abcd\" 1: " ++  ( show $ insertAt 'X' "abcd" 1 )
  putStrLn $ "insertAt 'X' \"abcd\" 0: " ++  ( show $ insertAt 'X' "abcd" 0 )
  putStrLn $ "insertAt 'X' \"abcd\" 4: " ++  ( show $ insertAt 'X' "abcd" 4 )
  putStrLn $ "insertAt 'X' \"abcd\" 5: " ++  ( show $ insertAt 'X' "abcd" 5 )
  putStrLn $ "insertAt 'X' \"abcd\" (-1): " ++  ( show $ insertAt 'X' "abcd" (-1) )

  putStrLn $ "insertAt 'X' ([]::Char)  2: " ++  ( show $ insertAt 'X' "abcd" 2 )
  putStrLn $ "insertAt 'X' ([]::Char)  1: " ++  ( show $ insertAt 'X' "abcd" 1 )
  putStrLn $ "insertAt 'X' ([]::Char)  0: " ++  ( show $ insertAt 'X' "abcd" 0 )
  putStrLn $ "insertAt 'X' ([]::Char)  4: " ++  ( show $ insertAt 'X' "abcd" 4 )
  putStrLn $ "insertAt 'X' ([]::Char)  5: " ++  ( show $ insertAt 'X' "abcd" 5 )
  putStrLn $ "insertAt 'X' ([]::Char)  (-1): " ++  ( show $ insertAt 'X' "abcd" (-1) )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/21
