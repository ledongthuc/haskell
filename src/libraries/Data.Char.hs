import qualified Data.Char as C
 
main = do
  putStrLn "\n\n--- Data.Char.chr ---"
  putStrLn $ show $ C.chr 97 -- a
  putStrLn $ show $ map C.chr [97..122] --  "abcdefghijklmnopqrstuvwxyz"

  putStrLn "\n\n--- Data.Char.digitToInt ---"
  putStrLn $ show $ C.digitToInt '2' -- 2
  putStrLn $ show $ C.digitToInt 'A' -- 11 

  putStrLn "\n\n--- Data.Char.ord ---"
  putStrLn $ show $ C.ord 'a' -- 97
  putStrLn $ show $ map C.ord ['a'..'z'] -- [97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122]
  putStrLn $ show $ map C.ord ['A'..'Z'] -- [65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90]
