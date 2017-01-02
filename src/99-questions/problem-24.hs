{-|
 - Draw N different random numbers from the set 1..M.
 - Example:
 -    diff_select 6 49
 -    => [23,1,17,33,21,37]
|-} 

import System.Random
import Data.List
import Control.Monad

diff_select :: Int -> Int -> [Int]
diff_select _ 0 = []
diff_select 0 _ = []
diff_select n max
  | max < n   = diff_select max max
  | otherwise = take n $ nub $ randomRs (1, max) (mkStdGen max)

-- Change the Std generator
diff_select' :: Int -> Int -> IO [Int]
diff_select' _ 0   = return []
diff_select' 0 _   = return []
diff_select' n max
  | max < n   = diff_select' max max
  | otherwise = do
      gen <- newStdGen
      return $ take n $ nub $ randomRs (1, max) gen

main = do
  putStrLn $ "diff_select 6 49: " ++  ( show $ diff_select 6 49 )
  putStrLn $ "diff_select 0 49: " ++  ( show $ diff_select 0 49 )
  putStrLn $ "diff_select 6 0: " ++  ( show $ diff_select 6 0 )
  putStrLn $ "diff_select 6 1: " ++  ( show $ diff_select 6 1 )
  putStrLn $ "diff_select 6 6: " ++  ( show $ diff_select 6 6 )

  diff_select' 6 49 >>= (\x -> return $ "diff_select' 6 49: " ++ (show x)) >>= putStrLn
  diff_select' 0 49 >>= (\x -> return $ "diff_select' 0 49: " ++ (show x)) >>= putStrLn
  diff_select' 6 0  >>= (\x -> return $ "diff_select' 6 0 : " ++ (show x)) >>= putStrLn
  diff_select' 6 1  >>= (\x -> return $ "diff_select' 6 1 : " ++ (show x)) >>= putStrLn
  diff_select' 6 6  >>= (\x -> return $ "diff_select' 6 6 : " ++ (show x)) >>= putStrLn

-- More solutions: https://wiki.haskell.org/99_questions/Solutions/24
