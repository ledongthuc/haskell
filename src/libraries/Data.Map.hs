import qualified Data.Map

main = do
  putStrLn "\n\n--- Data.Map.fromList ---"
  putStrLn $ show $ Data.Map.fromList [(1, "a"), (2, "b")] -- fromList [(1,"a"),(2,"b")]
  putStrLn $ show $ Data.Map.fromList [(1, "a"), (1, "b")] -- fromList [(1,"a")]


  putStrLn "\n\n--- Data.Map.fromList ---"
  putStrLn $ show $ Data.Map.fromListWith (++) [(1, "a"), (1, "b")] -- fromList [(1,"aa")]
  putStrLn $ show $ Data.Map.fromListWith (/) [(1, 5), (1, 5)] -- fromList [(1,1.0)]

  putStrLn "\n\n--- Data.Map.insert ---"
  putStrLn $ show $ Data.Map.insert 3 "c" $ Data.Map.fromList [(1, "a"), (2, "b")] -- [(1, "a"), (2, "b"), (3, "c")]

  putStrLn "\n\n--- Data.Map.map ---"
  putStrLn $ show $ Data.Map.map ("yeah-" ++) $ Data.Map.fromList [(1, "a"), (2, "b")] -- fromList [(1,"yeah-a"),(2,"yeah-b")]
  putStrLn $ show $ Data.Map.map (subtract 5) $ Data.Map.fromList [(1, 1), (2, 2)] -- fromList [(1,-4),(2,-3)]

  putStrLn "\n\n--- Data.Map.lookup ---"
  putStrLn $ show $ Data.Map.lookup 1 $ Data.Map.fromList [(1, "a"), (2, "b")] -- "a"
  putStrLn $ show $ Data.Map.lookup 2 $ Data.Map.fromList [(1, "a"), (2, "b")] -- "b"

  putStrLn "\n\n--- Data.Map.size ---"
  putStrLn $ show $ Data.Map.size $ Data.Map.fromList [(1, "a"), (2, "b")] -- 2
  putStrLn $ show $ Data.Map.size $ Data.Map.empty -- 0

  putStrLn "\n\n--- Data.Map.toList ---"
  putStrLn $ show $ Data.Map.toList $ Data.Map.fromList [(1, "a"), (2, "b")] -- [(1, "a"), (2, "b")]
