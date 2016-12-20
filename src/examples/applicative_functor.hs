import Control.Applicative

main = do
  putStrLn $ show $ pure (+3) <*> Just 10
  putStrLn $ show $ pure (+) <*> Just 10 <*> Just 5
  putStrLn $ show $ pure (+) <*> Just 10 <*> Just 5
  putStrLn $ show $ (+) <$> Just 10 <*> Just 5
  putStrLn $ show $ [(*0), (+5)] <*> [1, 2, 3]
  putStrLn $ show $ (+) <$> [1,2,3,4] <*> [5,6,7,8]
  combiledText <- (++) <$> getLine <*> getLine
  putStrLn $ show $ combiledText
  putStrLn $ show $ liftA2 (+) [1,2,3,4] [5,6,7,8]
