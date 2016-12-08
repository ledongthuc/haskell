import System.IO

{-|
main = do
  handle <- openFile "README.md" ReadMode
  contents <- hGetContents handle
  putStr contents
  hClose handle
|-}


main = withFile "README.md" ReadMode (\handle -> do
    contents <- hGetContents handle
    putStr contents
  )
