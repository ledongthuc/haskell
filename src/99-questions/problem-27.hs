{-|
 - Group the elements of a set into disjoint subsets.o
 - a) In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons? Write a function that generates all the possibilities and returns them in a list.
 - Example:
 -    (group3 '(aldo beat carla david evi flip gary hugo ida))')
 -    => ( ( (ALDO BEAT) (CARLA DAVID EVI) (FLIP GARY HUGO IDA) ) )
 - b) Generalize the above predicate in a way that we can specify a list of group sizes and the predicate will return a list of groups.
 - Example:
 -    (group '(aldo beat carla david evi flip gary hugo ida) '(2 2 5))
 -    => ( ( (ALDO BEAT) (CARLA DAVID) (EVI FLIP GARY HUGO IDA) ) )
 - Note that we do not want permutations of the group members; i.e. ((ALDO BEAT) ...) is the same solution as ((BEAT ALDO) ...). However, we make a difference between ((ALDO BEAT) (CARLA DAVID) ...) and ((CARLA DAVID) (ALDO BEAT) ...).
 - You may find more about this combinatorial problem in a good book on discrete mathematics under the term "multinomial coefficients".
 - Example:
 -    group [2,3,4] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"] 
 -                  [[["aldo","beat"],["carla","david","evi"],["flip","gary","hugo","ida"]],...]
 -    => (altogether 1260 solutions)
 -
 -    group [2,2,5] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]
 -                  [[["aldo","beat"],["carla","david"],["evi","flip","gary","hugo","ida"]],...]
 -    => (altogether 756 solutions)
|-} 

combination :: Int -> [a] -> [([a],[a])]
combination 0 xs     = [([],xs)]
combination n []     = []
combination n (x:xs) = ts ++ ds
  where
    ts = [ (x:ys,zs) | (ys,zs) <- combination (n-1) xs  ]
    ds = [ (ys,x:zs) | (ys,zs) <- combination  n    xs  ]
 
group :: [Int] -> [a] -> [[[a]]]
group [] _ = [[]]
group (n:ns) xs =
    [ g:gs | (g,rs) <- combination n xs
           ,  gs    <- group ns rs  ]

main = do
  putStrLn $ "group [2,3,4] [\"aldo\",\"beat\",\"carla\",\"david\",\"evi\",\"flip\",\"gary\",\"hugo\",\"ida\"]: " ++ (show $ group [2,3,4] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"])
-- More solutions: https://wiki.haskell.org/99_questions/Solutions/27
