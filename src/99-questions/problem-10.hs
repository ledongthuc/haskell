{-|
 - Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.
 - Example in Haskell: 
 -   encode "aaaabccaadeeee"
 -   => [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
|-}
import Data.List

encode :: (Eq a) => [a] -> [(a, Int)]
encode xs        = map (\x ->  (x!!0, length x) ) (group' xs)

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
  putStrLn $ "encode [1, 2, 3, 4]         : " ++ ( show $ encode [1, 2, 3, 4] )
  putStrLn $ "encode \"aaaabccaadeeee\"     : " ++ ( show $ encode "aaaabccaadeeee" )
  putStrLn $ "encode \"aaabcaaadddddeee\"   : " ++ ( show $ encode "aaabcaaadddddeee" )
  putStrLn $ "encode \"\"                   : " ++ ( show $ encode "" )
  putStrLn $ "encode \"a\"                  : " ++ ( show $ encode "a" )
  putStrLn $ "encode [1,2,2,3,3,3,4,4,4,4,5,5,5,5,5,6,6,6,6,6,6]     : " ++ ( show $ encode [1,2,2,3,3,3,4,4,4,4,5,5,5,5,5,6,6,6,6,6,6] )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/10
