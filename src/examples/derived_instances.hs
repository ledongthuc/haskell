data Car = Car { company :: String
                 , model :: String
                 , year :: Int } deriving(Eq, Show, Read)

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
  deriving (Show, Enum, Bounded)

main = do
  -- Usage of Eq derived
  let ford = Car { company="Ford", model="Mustang", year=1967}
      honda = Car { company="Honda", model="A123", year=1990} 
      listOfCar = [ford, honda]
  putStrLn $ show $ ford == honda -- false
  putStrLn $ show $ ford /= honda -- true
  putStrLn $ show $ ford `elem` listOfCar -- true

  -- Usage of Show derived
  putStrLn $ show $ Car { company="Ford", model="Mustang", year=1967}

  -- Usage of Read derived
  putStrLn $ show $ read "Car { company=\"Ford\", model=\"Mustang\", year=1967}" == Car { company="Ford", model="Mustang", year=1967} -- True
  
  -- Usage of Ord derived
  putStrLn $ show $ True `compare` False -- GT
  putStrLn $ show $ True > False -- True
  putStrLn $ show $ True < False -- False
  putStrLn $ show $ Nothing < Just (-100000) -- True
  putStrLn $ show $ Just 0 < Just (-100000) -- False

  -- Usage of Enum derived
  putStrLn $ show $ [Monday .. Sunday] -- [Monday,Tuesday,Wednesday,Thursday,Fireday,Saturday,Sunday]
  putStrLn $ show $ [Tuesday .. Friday] -- [Tuesday,Wednesday,Thursday,Fireday]
  putStrLn $ show $ succ Monday -- Tuesday
  putStrLn $ show $ pred Friday -- Thursday

  -- Usage of Bound derived
  putStrLn $ show $ ([minBound .. maxBound]::[Day]) -- [Monday,Tuesday,Wednesday,Thursday,Fireday,Saturday,Sunday]
  putStrLn $ show $ (minBound::Day) -- Monday
  putStrLn $ show $ (maxBound::Day) -- Sunday
