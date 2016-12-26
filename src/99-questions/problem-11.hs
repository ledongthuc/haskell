{-|
 - Modified run-length encoding.
 - Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.
 - Example in Haskell: 
 -      (encodeModified '(a a a a b c c a a d e e e e))')
 -      => ((4 A) B (2 C) (2 A) D (4 E))
|-}

import Data.List

data ItemCounter a = Single a | Multiple Int a deriving (Show)

encodeModified :: (Eq a) => [a] -> [ItemCounter a]
encodeModified xs        = map (\x -> composeResult (x!!0) (length x) ) (group' xs)
  where composeResult value l = if l == 1 then Single value else Multiple l value

group' :: (Eq a) => [a] -> [[a]]
group' [] = []
group' (x:xs) = ( x:ys ) : group' zs
  where (ys, zs) = span' (==x) xs

span' :: (Eq a) => (a -> Bool) -> [a] -> ([a], [a])
span' _ xs@[] = (xs, xs)
span' f xs@(x:xs')
  | f x = let (ys, zs) = span' f xs' in (x:ys, zs)
  | otherwise = ([], xs)

main = do
 putStrLn $ "encodeModified [1,2,3,4,5,5,5]      : " ++ ( show $ encodeModified [1,2,3,4,5,5,5] )
 putStrLn $ "encodeModified \"aaaabccaadeeee\"     : " ++ ( show $ encodeModified "aaaabccaadeeee" )
 putStrLn $ "encodeModified \"aaabcaaadddddeee\"   : " ++ ( show $ encodeModified "aaabcaaadddddeee" )
 putStrLn $ "encodeModified \"\"                   : " ++ ( show $ encodeModified "" )
 putStrLn $ "encodeModified \"a\"                  : " ++ ( show $ encodeModified "a" )
 putStrLn $ "encodeModified [1,2,2,3,3,3,4,4,4,4,5,5,5,5,5,6,6,6,6,6,6]     : " ++ ( show $ encodeModified [1,2,2,3,3,3,4,4,4,4,5,5,5,5,5,6,6,6,6,6,6] )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/11
