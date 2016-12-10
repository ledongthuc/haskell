import System.Random

main = do
  let (value, gen) = random (mkStdGen 101) :: (Int, StdGen)
  putStrLn $ show $ value
  gen2 <- newStdGen
  putStrLn $ take 20 (randomRs ('a', 'z') gen2)
  gen1 <- getStdGen
  putStrLn $ take 20 (randomRs ('a', 'z') gen1)
  gen2 <- newStdGen
  putStrLn $ take 20 (randomRs ('a', 'z') gen2)
