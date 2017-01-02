
{-|
 - Generate a random permutation of the elements of a list.
 - Example:
 -    rnd_permu "abcdef"
 -    => "badcef"
|-} 

import System.Random
import Data.List

rnd_permu :: [a] -> IO [a]
rnd_permu []   = return []
rnd_permu list = do
  gen <- newStdGen
  return $ map (\index -> list!!index) $ take (length list) $ nub $ randomRs (0, length list - 1) gen
  

main = do
  rnd_permu "abcdef" >>= (\x -> return $ "rnd_permu \"abcdef\": " ++ (show x)) >>= putStrLn
  rnd_permu ""       >>= (\x -> return $ "rnd_permu \"\"      : " ++ (show x)) >>= putStrLn

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/25
