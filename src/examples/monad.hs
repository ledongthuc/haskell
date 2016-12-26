import Control.Monad

main = do -- Monad Maybe
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

  -- Monad Function
  putStrLn $ "\nMonad function"
  putStrLn $ show $ (+10) >>= (\x -> (\y -> x + y)) $ 3

  -- Monad Either
  putStrLn $ "\nMonad either"
  putStrLn $ show $ Left "boom" >>= \x -> return (x+1)
  putStrLn $ show $ (Right 1 >>= \x -> return (x+1) :: Either String Integer)

  -- liftM
  putStrLn $ "\nliftM"
  putStrLn $ show $ liftM (*2) (Just 5)
  putStrLn $ show $ liftM (*2) [1..3]
  putStrLn $ show $ map (*2) [1..3]
  putStrLn $ show $ liftM (++ "seriuous") (Just "Are you ")
  putStrLn $ show $ (liftM (+5) (*10)) 5

  -- ap
  putStrLn $ "\nap"
  putStrLn $ show $ pure (+3) `ap` Just 10
  putStrLn $ show $ pure (+) `ap` Just 10 `ap` Just 5
  putStrLn $ show $ pure (+) `ap` Just 10 `ap` Just 5

  -- join
  putStrLn $ "\njoin"
  putStrLn $ show $ join (Just (Just 9))
  putStrLn $ show $ join (Just (Just (Just 9)))
  putStrLn $ show $ join [[1,2,3], [4,5,6]]

  -- filterM
  putStrLn $ "\nfilterM"
  putStrLn $ show $ filterM (\x -> Just (x > 5)) [1,2,3,4,5,6,7,8,9,10]
  putStrLn $ show $ filterM (\x ->  [(x > 5)]) [1,2,3,4,5,6,7,8,9,10]


  -- foldM 
  putStrLn $ "\nfoldM"
  putStrLn $ show $ foldM (\x y -> Just  (y + x)) 0 [1,2,3,4,5]
