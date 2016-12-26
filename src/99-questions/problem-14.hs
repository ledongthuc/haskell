{-|
 - Duplicate the elements of a list.
 - Example:
 -    dupli [1, 2, 3]
 -    => [1,1,2,2,3,3]
|-}

dupli :: [a] -> [a]
dupli list = list >>= (replicate 2)

{-
 - Non-monad solution
dupli :: [a] -> [a]
dupli list = concatMap (replicate 2) list
 -}

main = do
 putStrLn $ "dupli [1,2,3,4,5]      : " ++ ( show $ dupli [1,2,3,4,5] )
 putStrLn $ "dupli []               : " ++ ( show $ dupli ([]::[Int]) )
 putStrLn $ "dupli [100]            : " ++ ( show $ dupli [100] )
 putStrLn $ "dupli \"12345\"          : " ++ ( show $ dupli "12345" )

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/14
