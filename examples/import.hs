import qualified Data.List as L

numUniques :: (Eq a) => [a] -> Int
numUniques = length . L.nub

main = do
  putStrLn $ show $ L.nub [1, 1, 3, 3, 4, 5, 1, 3, 2, 2, 5 ,1, 1, 2, 4, 5]
  putStrLn $ show $ L.sort $ L.nub [1, 1, 3, 3, 4, 5, 1, 3, 2, 2, 5 ,1, 1, 2, 4, 5]
  putStrLn $ show $ numUniques [1, 1, 3, 3, 4, 5, 1, 3, 2, 2, 5 ,1, 1, 2, 4, 5]
