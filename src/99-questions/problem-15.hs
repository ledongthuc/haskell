{-|
 - Replicate the elements of a list a given number of times.
 - Example:
 -    repli "abc" 3 -    => "aaabbbccc" |-} 

repli :: [a] -> Int -> [a] 
repli list l = list >>= (replicate l)

{-
 - Non-monad solution
repli :: [a] -> Int -> [a]
repli list length = concatMap (replicate length) list
 -}

main = do
 putStrLn $ "repli [1,2,3,4,5]      : " ++ ( show $ repli [1,2,3,4,5] 3 )
 putStrLn $ "repli [1,2,3,4,5]      : " ++ ( show $ repli [1,2,3,4,5] 1 )
 putStrLn $ "repli [1,2,3,4,5]      : " ++ ( show $ repli [1,2,3,4,5] 0 )
 putStrLn $ "repli []               : " ++ ( show $ repli ([]::[Int]) 3 )
 putStrLn $ "repli []               : " ++ ( show $ repli ([]::[Int]) 1 )
 putStrLn $ "repli []               : " ++ ( show $ repli ([]::[Int]) 0 )
 putStrLn $ "repli [100]            : " ++ ( show $ repli [100] 3 )
 putStrLn $ "repli [100]            : " ++ ( show $ repli [100] 1 )
 putStrLn $ "repli [100]            : " ++ ( show $ repli [100] 0 )
 putStrLn $ "repli \"12345\"          : " ++ ( show $ repli "12345" 3 )
 putStrLn $ "repli \"12345\"          : " ++ ( show $ repli "12345" 1 )
 putStrLn $ "repli \"12345\"          : " ++ ( show $ repli "12345" 0 )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/15
