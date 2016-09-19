factorial :: Int -> Int
factorial 1 = 1 
factorial x = x * factorial(x-1)

lucky :: Int -> String
lucky 7 = "So lucky"
lucky x = "Sorry"
lucky 7 = "You think you lucky"

main :: IO()
main = do
  putStr "Factorial of 17 is: "
  putStrLn( show( factorial 17 ) )
  putStrLn("Lucky 1: " ++ lucky(1))
  putStrLn("Lucky 7: " ++ lucky(7))
