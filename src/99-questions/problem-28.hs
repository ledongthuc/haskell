{-|
 - Sorting a list of lists according to length of sublists
 - a) We suppose that a list contains elements that are lists themselves. The objective is to sort the elements of this list according to their length. E.g. short lists first, longer lists later, or vice versa.
 -  Example:
 -    lsort ["abc","de","fgh","de","ijkl","mn","o"]
 -    => ["o","de","de","mn","abc","fgh","ijkl"]
|-} 

import Data.Foldable
import Data.List (groupBy)
import Data.Function (on)

-- Question a
lsort :: (Foldable t, Eq a) => [t a] -> [t a]
lsort []   = []
lsort list = let item = helper list
             in  item : (lsort $ delete'' item list)
  where
    delete'' :: (Foldable t, Eq a) => t a -> [t a] -> [t a]
    delete'' item (x:xs)
      | equal'' item x = xs
      | otherwise = x : delete'' item xs

    equal'' :: (Foldable t, Eq a) => t a -> t a -> Bool
    equal'' x y = toList x == toList y

    helper :: Foldable t => [t a] -> t a
    helper [a]     = a
    helper (x:xs)
      | isFine x xs = x
      | otherwise   = helper xs

    isFine :: Foldable t => t a -> [t a] -> Bool
    isFine x list = and $ map (\y -> length x <= length y) list

-- Question b
lfsort :: (Eq a) => [[a]] -> [[a]]
lfsort = concat . lsort . groupBy ((==) `on` length) . lsort
 

main = do
  putStrLn $ "lsort [\"abc\",\"de\",\"fgh\",\"de\",\"ijkl\",\"mn\",\"o\"] : " ++ ( show $ lsort ["abc","de","fgh","de","ijkl","mn","o"] )
  putStrLn $ "lsort []                                      : "               ++ ( show $ lsort ([]::[[Int]])                           )
  putStrLn $ "lsort [[]]                                    : "               ++ ( show $ lsort ([[]]::[[Int]])                         )
  putStrLn $ "lsort [[1,2,3], [4,5,6]]                      : "               ++ ( show $ lsort [[1,2,3], [4,5], [1,2,3]]               )

  putStrLn $ "lfsort [\"abc\",\"de\",\"fgh\",\"de\",\"ijkl\",\"mn\",\"o\"] : " ++ ( show $ lfsort ["abc","de","fgh","de","ijkl","mn","o"] )
  putStrLn $ "lfsort []                                      : "               ++ ( show $ lfsort ([]::[[Int]])                           )
  putStrLn $ "lfsort [[]]                                    : "               ++ ( show $ lfsort ([[]]::[[Int]])                         )
  putStrLn $ "lfsort [[1,2,3], [4,5,6]]                      : "               ++ ( show $ lfsort [[1,2,3], [4,5], [1,2,3]]               )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/27
