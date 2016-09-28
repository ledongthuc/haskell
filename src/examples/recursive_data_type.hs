type Pair a = (a, a)
data List x = Empty | x `X` (List x) 
  deriving (Show, Read, Eq, Ord)

joinPairs :: List a -> List a -> List a
joinPairs Empty y = y
joinPairs (x `X` xs) y = x `X` (joinPairs xs y)

headPair :: List (Pair a) -> Pair a
headPair (x `X` xs) =  x

main = do
  putStrLn $ show $ (Empty::List Int)                               -- Empty
  putStrLn $ show $ (1,2) `X` Empty                                 -- (1,2) :-: Empty
  putStrLn $ show $ (1,2) `X` ((3,4) `X` ((5,6) `X` Empty))         -- (1,2) `X` ((3,4) `X` ((5,6) `X` Empty))
  putStrLn $ show $ joinPairs ((1,2) `X` Empty) ((3,4) `X` ((5,6) `X` Empty))     -- (1,2) `X` ((3,4) `X` ((5,6) `X` Empty))
  putStrLn $ show $ headPair ((1,2) `X` ((3,4) `X` ((5,6) `X` Empty)))            -- (1,2)
