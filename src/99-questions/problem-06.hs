{-|
 - Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
 - Example in Haskell: 
 -   isPalindrome "madamimadam" => true
|-}

myReverse :: [a] -> [a]
myReverse list = foldl (\ys y -> y : ys) [] list

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome list = (list == (myReverse list))

main = do
  putStrLn $ "isPalindrome [1, 2, 3, 4]         : " ++ ( show $ isPalindrome [1, 2, 3, 4] )
  putStrLn $ "isPalindrome ['x', 'y', 'z']      : " ++ ( show $ isPalindrome ['x', 'y', 'z'] )
  putStrLn $ "isPalindrome [100]                : " ++ ( show $ isPalindrome [100] )
  putStrLn $ "isPalindrome ( []::[Char] )       : " ++ ( show $ isPalindrome ( []::[Char] ) )
  putStrLn $ "isPalindrome [1,2,3,4,5]          : " ++ ( show $ isPalindrome [1,2,3,4,5] )
  putStrLn $ "isPalindrome [1,2,3,2,1]          : " ++ ( show $ isPalindrome [1,2,3,2,1] )
  putStrLn $ "isPalindrome ['z','x','z']          : " ++ ( show $ isPalindrome ['z','x','z'] )
  -- putStrLn $ "isPalindrome [1..]             : " ++ ( show $ isPalindrome [1..] )
  --
-- More solutions: https://wiki.haskell.org/99_questions/Solutions/6
