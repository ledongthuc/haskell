import qualified Data.List

main = do
  putStrLn $ show $ Just "hello" -- Just "hello"
  putStrLn $ show $ Just 1 -- Just 1
  putStrLn $ show $ Data.List.find odd [2, 4, 6, 8, 7, 4] -- Just 7
  putStrLn $ show $ Data.List.find (=='e') "Hello how are you" -- Just e
  putStrLn $ show $ Data.List.find (=='z') "Hello how are you" -- Nothing
