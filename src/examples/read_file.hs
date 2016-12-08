import System.IO
import Data.Char

{-|
main = do
  handle <- openFile "README.md" ReadMode
  contents <- hGetContents handle
  putStr contents
  hClose handle
|-}


{-|
main = withFile "README.md" ReadMode (\handle -> do
    contents <- hGetContents handle
    putStr contents
  )
|-}

main = do
  contents <- readFile "README.md"
  writeFile "README_CAP.md" (map toUpper contents)
