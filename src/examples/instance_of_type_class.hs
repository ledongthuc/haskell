data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where
  Red == Red = True
  Green == Green = True
  Yellow == Yellow = True
  _ == _ = False

main = do
  putStrLn $ show $ Red == Red
  putStrLn $ show $ Red == Yellow 
  putStrLn $ show $ Yellow == Yellow 
