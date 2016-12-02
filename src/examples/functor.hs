main :: IO()
main = do
  putStrLn $ show $ fmap (*2) [1..3]
  putStrLn $ show $ map (*2) [1..3]
  putStrLn $ show $ fmap (++ "seriuous") (Just "Are you ")
  putStrLn $ show $ (subtract 10) (5)
  putStrLn $ show $ (subtract) 10 5
