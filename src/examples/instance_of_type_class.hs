data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where
  Red == Red = True
  Green == Green = True
  Yellow == Yellow = True
  _ == _ = False

instance Show TrafficLight where
  show Red = "Light is RED"
  show Green = "Light is GREEN"
  show Yellow = "Light is Yellow"

class YesNo a where
  yesno :: a -> Bool

instance YesNo TrafficLight where
  yesno Red = False
  yesno Green = True
  yesno Yellow = False

main = do
  putStrLn $ show $ Red == Red
  putStrLn $ show $ Red == Yellow 
  putStrLn $ show $ Yellow == Yellow 
  putStrLn $ show $ [Red, Green, Yellow]
  putStrLn $ show $ yesno Red
  putStrLn $ show $ yesno Green
  putStrLn $ show $ yesno Yellow
