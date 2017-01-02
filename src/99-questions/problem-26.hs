{-|
 - Generate the combinations of K distinct objects chosen from the N elements of a list
 - Example:
 -    combinations 3 "abcdef"
 -    => ["abc","abd","abe",...]
 -
|-} 

import Data.List (tails)

-- Use comprehension (monad) and Data.List.tails
combinations :: Int -> [a] -> [[a]]
combinations 0 _  = [ []  ]
combinations n xs = [ y:ys | y:xs' <- tails xs
                           , ys <- combinations (n-1) xs' ]

-- Use comprehension (monad) without Data.List.tails
combinations' :: Int -> [a] -> [[a]]
combinations' 0 _ = [[]]
combinations' n xs = [ xs !! i : x | i <- [0..(length xs)-1]
                                  , x <- combinations' (n-1) (drop (i+1) xs) ]

-- Without comprehension
combinations'' :: Int -> [a] -> [[a]]
combinations'' 0 _  = [[]]
combinations'' _ [] = []
combinations'' n [x]
  | n > 1     = []
  | otherwise = [[x]]
combinations'' n list@(x:xs)
  | n < 0     = []
  | otherwise = (helper x xs) ++ (combinations'' n xs)
  where helper _ []      = []
        helper m subList = map (\y -> m : y) (combinations'' (n-1) subList)

main = do
  putStrLn $ "combinations 1    \"abcdef\" : " ++ ( show $ combinations 1    "abcdef"   )
  putStrLn $ "combinations 3    \"abcdef\" : " ++ ( show $ combinations 3    "abcdef"   )
  putStrLn $ "combinations 4    \"abcdef\" : " ++ ( show $ combinations 4    "abcdef"   )
  putStrLn $ "combinations 0    \"abcdef\" : " ++ ( show $ combinations 0    "abcdef"   )
  putStrLn $ "combinations 7    \"abcdef\" : " ++ ( show $ combinations 7    "abcdef"   )
  putStrLn $ "combinations 4    []       : " ++ ( show $ combinations 4    ([]::[Int]))
  putStrLn $ "combinations (-1) \"abcdef\" : " ++ ( show $ combinations (-1) "abcdef"   )
  putStrLn ""

  putStrLn $ "combinations' 1    \"abcdef\" : " ++ ( show $ combinations' 1    "abcdef"   )
  putStrLn $ "combinations' 2    \"abcdef\" : " ++ ( show $ combinations' 2    "abcdef"   )
  putStrLn $ "combinations' 3    \"abcdef\" : " ++ ( show $ combinations' 3    "abcdef"   )
  putStrLn $ "combinations' 4    \"abcdef\" : " ++ ( show $ combinations' 4    "abcdef"   )
  putStrLn $ "combinations' 0    \"abcdef\" : " ++ ( show $ combinations' 0    "abcdef"   )
  putStrLn $ "combinations' 7    \"abcdef\" : " ++ ( show $ combinations' 7    "abcdef"   )
  putStrLn $ "combinations' 4    []       : " ++ ( show $ combinations' 4    ([]::[Int]))
  putStrLn $ "combinations' (-1) \"abcdef\" : " ++ ( show $ combinations' (-1) "abcdef"   )
  putStrLn ""

  putStrLn $ "combinations'' 0    \"abcdef\" : " ++ ( show $ combinations'' 0    "abcdef"   )
  putStrLn $ "combinations'' 1    \"abcdef\" : " ++ ( show $ combinations'' 1    "abcdef"   )
  putStrLn $ "combinations'' 2    \"abcdef\" : " ++ ( show $ combinations'' 2    "abcdef"   )
  putStrLn $ "combinations'' 3    \"abcdef\" : " ++ ( show $ combinations'' 3    "abcdef"   )
  putStrLn $ "combinations'' 4    \"abcdef\" : " ++ ( show $ combinations'' 4    "abcdef"   )
  putStrLn $ "combinations'' 0    \"abcdef\" : " ++ ( show $ combinations'' 0    "abcdef"   )
  putStrLn $ "combinations'' 7    \"abcdef\" : " ++ ( show $ combinations'' 7    "abcdef"   )
  putStrLn $ "combinations'' 4    []       : " ++ ( show $ combinations'' 4    ([]::[Int]))
  putStrLn $ "combinations'' (-1) \"abcdef\" : " ++ ( show $ combinations'' (-1) "abcdef"   )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/25
