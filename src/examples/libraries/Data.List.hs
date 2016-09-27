import qualified Data.List as L

main :: IO()
main = do
  putStrLn "\n\n--- Data.List.any ---"
  putStrLn $ show $ L.any (> 2) [1, 1, 2, 1, 1, 2, 2, 3, 1, 3, 3, 4, 5, 6, 6, 6] -- True
  putStrLn $ show $ L.any (> 6) [1, 1, 2, 1, 1, 2, 2, 3, 1, 3, 3, 4, 5, 6, 6, 6] -- False

  putStrLn "\n\n--- Data.List.group ---"
  putStrLn $ show $ L.group "Hello World ! We are one! hehe" -- ["H","e","ll","o"," ","W","o","r","l","d"," ","!"," ","W","e"," ","a","r","e"," ","o","n","e","!"," ","h","e","h","e"]
  putStrLn $ show $ L.group [1, 1,    1, 1, 2, 2, 3,    3, 3, 4, 5, 6, 6, 6] -- [[1,1,1,1],[2,2],[3,3,3],[4],[5],[6,6,6]]
  putStrLn $ show $ L.group [1, 1, 2, 1, 1, 2, 2, 3, 1, 3, 3, 4, 5, 6, 6, 6] -- [[1,1],[2],[1,1],[2,2],[3],[1],[3,3],[4],[5],[6,6,6]]

  putStrLn "\n\n--- Data.List.isInfixOf ---"
  putStrLn $ show $ L.isInfixOf "World" "Hello World ! We are one! hehe" -- True 
  putStrLn $ show $ L.isInfixOf "Hello" "Hello World ! We are one! hehe" -- True
  putStrLn $ show $ L.isInfixOf "Welcome" "Hello World ! We are one! hehe" -- False

  putStrLn "\n\n--- Data.List.isPrefixOf ---"
  putStrLn $ show $ L.isPrefixOf "World" "Hello World ! We are one! hehe" -- False
  putStrLn $ show $ L.isPrefixOf "Hello" "Hello World ! We are one! hehe" -- True

  putStrLn "\n\n--- Data.List.isSuffixOf ---"
  putStrLn $ show $ L.isSuffixOf "World" "Hello World ! We are one! hehe" -- False
  putStrLn $ show $ L.isSuffixOf "Hello" "Hello World ! We are one! hehe" -- False
  putStrLn $ show $ L.isSuffixOf "ehe" "Hello World ! We are one! hehe" -- True

  putStrLn "\n\n--- Data.List.sort ---"
  putStrLn $ show $ L.sort [1, 1, 2, 1, 1, 2, 2, 3, 1, 3, 3, 4, 5, 6, 6, 6] -- [1,1,1,1,1,2,2,2,3,3,3,4,5,6,6,6]
  putStrLn $ show $ L.group . L.sort $ [1, 1, 2, 1, 1, 2, 2, 3, 1, 3, 3, 4, 5, 6, 6, 6] -- [[1,1,1,1,1],[2,2,2],[3,3,3],[4],[5],[6,6,6]]
  putStrLn $ show $ L.sort "Hello World ! We are one! hehe" -- "      !!HWWadeeeeeehhlllnooorr"

  putStrLn "\n\n--- Data.List.tails ---"
  putStrLn $ show $ L.tails "Hello World ! We are one! hehe" -- ["Hello World ! We are one! hehe","ello World ! We are one! hehe","llo World ! We are one! hehe","lo World ! We are one! hehe","o World ! We are one! hehe"," World ! We are one! hehe","World ! We are one! hehe","orld ! We are one! hehe","rld ! We are one! hehe","ld ! We are one! hehe","d ! We are one! hehe"," ! We are one! hehe","! We are one! hehe"," We are one! hehe","We are one! hehe","e are one! hehe"," are one! hehe","are one! hehe","re one! hehe","e one! hehe"," one! hehe","one! hehe","ne! hehe","e! hehe","! hehe"," hehe","hehe","ehe","he","e",""]
  putStrLn $ show $ L.any (L.isPrefixOf "World") . L.tails $ "Hello World ! We are one! hehe" -- True

  putStrLn "\n\n--- Data.List.words ---"
  putStrLn $ show $ L.words "Hello World ! We are one! hehe" -- ["Hello","World","!","We","are","one!","hehe"]
  putStrLn $ show $ L.words "Hello World !        We are one! hehe" -- ["Hello","World","!","We","are","one!","hehe"]
