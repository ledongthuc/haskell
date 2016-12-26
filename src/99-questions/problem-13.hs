{-|
 - Run-length encoding of a list (direct solution)
 - Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem 9, but only count them. As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.
 - Example:
 -    encodeDirect "aaaabccaadeeee"
 -    => [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']
|-}

import Data.List

data ItemCounter a = Single a | Multiple Int a deriving (Show)

encodeDirect :: (Eq a) => [a] -> [ItemCounter a]
encodeDirect list = map tupleToItemCounter $ foldr appendPrevious [] list
  where appendPrevious x [] = [(x, 1)]
        appendPrevious x xs@((value, l):ys)
          | x == value = (value, l + 1):ys
          | otherwise  = (x, 1):xs

tupleToItemCounter :: (a, Int) -> ItemCounter a
tupleToItemCounter (a, 1) = Single a
tupleToItemCounter (a, l) = Multiple l a

main = do
 putStrLn $ "encodeDirect [1,2,3,4,5,5,5]      : " ++ ( show $ encodeDirect [1,2,3,4,5,5,5] )
 putStrLn $ "encodeDirect \"aaaabccaadeeee\"     : " ++ ( show $ encodeDirect "aaaabccaadeeee" )
 putStrLn $ "encodeDirect \"aaabcaaadddddeee\"   : " ++ ( show $ encodeDirect "aaabcaaadddddeee" )
 putStrLn $ "encodeDirect \"\"                   : " ++ ( show $ encodeDirect "" )
 putStrLn $ "encodeDirect \"a\"                  : " ++ ( show $ encodeDirect "a" )
 putStrLn $ "encodeDirect [1,2,2,3,3,3,4,4,4,4,5,5,5,5,5,6,6,6,6,6,6]     : " ++ ( show $ encodeDirect [1,2,2,3,3,3,4,4,4,4,5,5,5,5,5,6,6,6,6,6,6] )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/11
