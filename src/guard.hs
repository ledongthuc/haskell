bmiCheck :: Double -> Double -> String
bmiCheck weight height 
  | bmi <= 18.5 = "Eat more"
  | bmi <= 25.0 = "Good"
  | bmi <= 30.0 = "Overweight"
  | otherwise   = "Go to dockor now"
  where bmi = weight / height ^ 2

main :: IO()
main = do
 putStrLn("Your bmi is 17 mean: " ++ (bmiCheck 73.5 65.0))
