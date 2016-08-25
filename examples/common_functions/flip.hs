flip' :: (a -> b -> c) -> b -> a -> c
flip' f x y = f y x

main = print (flip' (-) 3 5)
