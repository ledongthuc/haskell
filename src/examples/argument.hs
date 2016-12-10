import System.Environment
import Data.List

main = do
  args <- getArgs
  progName <- getProgName
  putStrLn "The arguments are: "
  mapM (\arg -> putStrLn (" - " ++ arg)) args
  putStr "The program name is: "
  putStrLn progName
