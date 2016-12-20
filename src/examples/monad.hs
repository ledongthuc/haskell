import Control.Monad

main = do
  -- Monad Maybe
  putStrLn $ "Monad maybe"
  putStrLn $ show $ ((return "WHAT") :: Maybe String)
  putStrLn $ show $ Just 9 >>= (\x -> return (x * 10))
  putStrLn $ show $ Nothing >>= (\x -> return (x * 10))
  putStrLn $ show $ do
    x <- Just 9
    return (x * 10)

  -- Monad List 
  putStrLn $ "\nMonad list"
  putStrLn $ show $ ((return 1) :: [Integer])
  putStrLn $ show $ [9] >>= (\x -> return (x * 2))
  putStrLn $ show $ [9,2,3,4,5] >>= (\x -> return (x * 2))
  putStrLn $ show $ [1,2,3,4,5] >>= \x -> return (True, False) >>= \y -> return (x, fst y)
  putStrLn $ show $ Nothing >>= (\x -> return (x * 10))
  putStrLn $ show $ do
    x <- [9,10,11]
    return (x * 10)
