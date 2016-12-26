{-|
 - Decode a run-length encoded list.
 - Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.
 - Example in Haskell: 
 -    decodeModified [Multiple 4 'a', Single 'b', Multiple 2 'c',  Multiple 2 'a', Single 'd', Multiple 4 'e']
 -    => "aaaabccaadeeee"
|-}

import Data.List

data ItemCounter a = Single a | Multiple Int a deriving (Show)

{-
 - Hack brain version

decodeModified :: (Eq a) => [ItemCounter a] -> [a]
decodeModified [] = []
decodeModified list = foldr (\x init -> (convertItemCounter x) ++ init) [] list

-}

decodeModified :: (Eq a) => [ItemCounter a] -> [a]
decodeModified = concatMap convertItemCounter

convertItemCounter :: ItemCounter a-> [a]
convertItemCounter (Single a) = [a]
convertItemCounter (Multiple l a) = replicate l a

main = do
   putStrLn $ "decodeModified [Multiple 4 'a', Single 'b', Multiple 2 'c',  Multiple 2 'a', Single 'd', Multiple 4 'e']      : " ++ ( show $ decodeModified [Multiple 4 'a', Single 'b', Multiple 2 'c',  Multiple 2 'a', Single 'd', Multiple 4 'e'])
   putStrLn $ "decodeModified []                    : " ++ ( show $ decodeModified ([]::[ItemCounter Integer]))
   putStrLn $ "decodeModified [Multiple 4 'a']      : " ++ ( show $ decodeModified [Multiple 4 'a'])
   putStrLn $ "decodeModified [Multiple 1 5]        : " ++ ( show $ decodeModified [Multiple 1 5])
   putStrLn $ "decodeModified [Single True]         : " ++ ( show $ decodeModified [Single True])

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/12
