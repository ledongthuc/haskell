import Control.Applicative

main = do
  putStrLn $ show $ getZipList $ (+) <$> ZipList [1,2,3] <*> ZipList [5,6,7]
