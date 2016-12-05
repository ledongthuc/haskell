import Data.Char
import Control.Monad

main :: IO ()
main = do
  colorPicker
  forever $ do
    putStr "Hello, "
    putChar 'w'
    putChar 'h'
    putChar 'a'
    putChar 't'
    putChar '\''
    putChar 's'
    putStrLn "your name!!!"
    print True
    print 2
    name <- getLine

    when ((map toLower name) == "admin") $ do
      putStrLn "Hello admin guy!!"

    when ((map toLower name) == "mapm") $ do
      putStrLn "Begin run MapM_"
      mapM_ print [1,2,3]

    if null name
    then return ()
    else do
      let bigName = map toUpper name
      testParam <- testReturn
      putStrLn ("Hey " ++ ( reverseWords bigName ) ++ ", you rock! " ++ testParam)

reverseWords :: String -> String
reverseWords = unwords . map reverse .  words

testReturn :: IO String
testReturn = do
  return "Yalo"
  return "Haha"

colorPicker = do
  colors <- forM [1,2,3,4] (\a -> do
    putStrLn $ "Which color do you associate with the number " ++ show a ++ "?"
    color <- getLine
    return color)
  putStrLn "The colors that you associate with 1,2,3 and 4 are: "
  mapM putStrLn colors
