import Data.Monoid
import qualified Data.Foldable as F

main = do
  -- List monoid
  putStrLn "List monoid: "
  putStrLn $ show $ [1, 2, 3] `mappend` [4, 5, 6]
  putStrLn $ show $ "Hello" `mappend` "world"
  putStrLn $ show $ "One" `mappend` "Two" `mappend` "Three"
  putStrLn $ show $ ("One" `mappend` "Two") `mappend` "Three"
  putStrLn $ show $ "One" `mappend` ("Two" `mappend` "Three")
  putStrLn $ show $ "yolo" `mappend` mempty
  putStrLn $ show $ mconcat [[1,2],[3,4],[5,6],[7,8]]

  -- Sum monoid
  putStrLn "\n\nSum monoid: "
  putStrLn $ show $ Sum 5 `mappend` Sum 10
  putStrLn $ show $ Sum 5 `mappend` mempty
  putStrLn $ show $ mconcat [Sum 1, Sum 2, Sum 3]

  -- Product monoid
  putStrLn "\n\nProduct monoid: "
  putStrLn $ show $ Product 5 `mappend` Product 10
  putStrLn $ show $ Product 5 `mappend` mempty
  putStrLn $ show $ mconcat [Product 1, Product 2, Product 3]

  -- Any monoid
  putStrLn "\n\nAny monoid: "
  putStrLn $ show $ getAny $ Any True `mappend` Any False
  putStrLn $ show $ getAny $ Any True `mappend` mempty
  putStrLn $ show $ getAny $ mconcat . map Any $ [True, True, False, True]

  -- All monoid
  putStrLn "\n\nAll monoid: "
  putStrLn $ show $ getAll $ All True `mappend` All False
  putStrLn $ show $ getAll $ All True `mappend` mempty
  putStrLn $ show $ getAll $ mconcat . map All $ [True, True, False, True]

  -- Maybe monoid
  putStrLn "\n\nMaybe monoid: "
  putStrLn $ show $ mempty `mappend` Just "Hello world"
  putStrLn $ show $ Just (All True) `mappend` mempty
  putStrLn $ show $ Just (Sum 3) `mappend` Just (Sum 4)

  -- Folding monoid
  putStrLn "\n\nFolding monoid: "
  putStrLn $ show $ F.foldr (*) 1 [1, 2, 3]
  putStrLn $ show $ F.foldl (+) 2 (Just 9)
  putStrLn $ show $ F.foldr (||) False (Just True)
