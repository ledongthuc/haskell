import qualified Data.Char

caesarEncode :: Int -> String -> String
caesarEncode shift = map $ Data.Char.chr . ((+) shift) . Data.Char.ord

caesarDecode :: Int -> String -> String
caesarDecode = caesarEncode . negate

main :: IO()
main = do
  putStrLn $ show $ caesarEncode 3 "abc" -- "def"
  putStrLn $ show $ caesarEncode 7 "My name is Le Dong Thuc" -- "T\128'uhtl'pz'Sl'Kvun'[o|j"

  putStrLn $ show $ caesarDecode 3 "def" -- "abc"
  putStrLn $ show $ caesarDecode 7 "T\128'uhtl'pz'Sl'Kvun'[o|j" --"My name is Le Dong Thuc"
