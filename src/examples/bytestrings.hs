import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as L

main = do
  putStrLn $ show $ B.pack [99, 97, 110]
  putStrLn $ show $ B.pack [97 .. 122]
  putStrLn $ show $ B.pack [97 .. 122]
  putStrLn $ show $ B.unpack $ B.pack [97 .. 122]
  putStrLn $ show $ L.fromChunks [B.pack [40, 41, 42], B.pack [43, 44, 45], B.pack [46, 47, 48]]
