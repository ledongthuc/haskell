{-|
 - Extract a given number of randomly selected elements from a list.
 - Example:
 -    rnd_select "abcdefgh" 3 >>= putStrLn
 -    => "eda"
|-} 

import System.Random
import Control.Monad
import Control.Applicative

rnd_select :: [a] -> Int -> IO [a]
rnd_select _ 0 = return []
rnd_select [] _ = return []
rnd_select list n = replicateM n helper
  where helper = do
          randomIndex <- randomRIO (0, length list - 1)
          return (list!!randomIndex)

-- Before knowing replicateM
rnd_select' :: [a] -> Int -> IO [a]
rnd_select' [] _ = return []
rnd_select' list n
  | n <= 0    = return []
  | otherwise = do randomIndex <- randomRIO (0, length list - 1)
                   fmap ((:) (list!!randomIndex)) (rnd_select' list (n-1))

main = do
  rnd_select "abcdefgh" 3 >>= (\x -> return $ "rnd_select \"abcdefgh\" 3: " ++ (show $ x)) >>= putStrLn
  rnd_select "abcdefgh" 8 >>= (\x -> return $ "rnd_select \"abcdefgh\" 8: " ++ (show $ x)) >>= putStrLn
  rnd_select "abcdefgh" 0 >>= (\x -> return $ "rnd_select \"abcdefgh\" 0: " ++ (show $ x)) >>= putStrLn
  rnd_select "abcdefgh" (-1) >>= (\x -> return $ "rnd_select \"abcdefgh\" (-1): " ++ (show $ x)) >>= putStrLn

  rnd_select' "abcdefgh" 3 >>= (\x -> return $ "rnd_select' \"abcdefgh\" 3: " ++ (show $ x)) >>= putStrLn
  rnd_select' "abcdefgh" 8 >>= (\x -> return $ "rnd_select' \"abcdefgh\" 8: " ++ (show $ x)) >>= putStrLn
  rnd_select' "abcdefgh" 0 >>= (\x -> return $ "rnd_select' \"abcdefgh\" 0: " ++ (show $ x)) >>= putStrLn
  rnd_select' "abcdefgh" (-1) >>= (\x -> return $ "rnd_select' \"abcdefgh\" (-1): " ++ (show $ x)) >>= putStrLn

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/23
