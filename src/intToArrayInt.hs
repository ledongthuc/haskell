import qualified Data.Char

convertFirstToNegative :: [Int] -> [Int]
convertFirstToNegative []      = []
convertFirstToNegative (x:xs)
  | x >= 0    = (-x):xs
  | otherwise = x:xs     -- When the first character is negative, we don't need convert it again

intToArray :: Int -> [Int]
intToArray number
  | number >= 0 =                          map Data.Char.digitToInt $ show number
  | otherwise   = convertFirstToNegative . map Data.Char.digitToInt $ show . abs $ number -- Handle negative number

main = do
  putStrLn $ show $ intToArray 0
  putStrLn $ show $ intToArray 123
  putStrLn $ show $ intToArray 1234
  putStrLn $ show $ intToArray 9223372036854775807
  putStrLn $ show $ intToArray (-9223372036854775807)
