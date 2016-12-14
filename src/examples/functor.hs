main :: IO()
main = do
  putStrLn $ show $ fmap (*2) [1..3]
  putStrLn $ show $ map (*2) [1..3]
  putStrLn $ show $ fmap (++ "seriuous") (Just "Are you ")
  line <- fmap reverse getLine
  putStrLn $ line
  putStrLn $ show $ (fmap (+5) (*10)) 5
