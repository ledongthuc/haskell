import qualified Data.List as L

main :: IO()
main = do
  putStrLn "\n\n--- Data.List.group ---"
  putStrLn $ show $ L.group "Hello World ! We are one! hehe" -- ["H","e","ll","o"," ","W","o","r","l","d"," ","!"," ","W","e"," ","a","r","e"," ","o","n","e","!"," ","h","e","h","e"]
  putStrLn $ show $ L.group [1, 1,    1, 1, 2, 2, 3,    3, 3, 4, 5, 6, 6, 6] -- [[1,1,1,1],[2,2],[3,3,3],[4],[5],[6,6,6]]
  putStrLn $ show $ L.group [1, 1, 2, 1, 1, 2, 2, 3, 1, 3, 3, 4, 5, 6, 6, 6] -- [[1,1],[2],[1,1],[2,2],[3],[1],[3,3],[4],[5],[6,6,6]]

  putStrLn "\n\n--- Data.List.sort ---"
  putStrLn $ show $ L.sort [1, 1, 2, 1, 1, 2, 2, 3, 1, 3, 3, 4, 5, 6, 6, 6] -- [1,1,1,1,1,2,2,2,3,3,3,4,5,6,6,6]
  putStrLn $ show $ L.group . L.sort $ [1, 1, 2, 1, 1, 2, 2, 3, 1, 3, 3, 4, 5, 6, 6, 6] -- [[1,1,1,1,1],[2,2,2],[3,3,3],[4],[5],[6,6,6]]
  putStrLn $ show $ L.sort "Hello World ! We are one! hehe" -- "      !!HWWadeeeeeehhlllnooorr"

  putStrLn "\n\n--- Data.List.words ---"
  putStrLn $ show $ L.words "Hello World ! We are one! hehe" -- ["Hello","World","!","We","are","one!","hehe"]
  putStrLn $ show $ L.words "Hello World !        We are one! hehe" -- ["Hello","World","!","We","are","one!","hehe"]
