-- result = [ x * 2 | x <- [1..10] ]
-- result = [ x * 2 | x <- [1..10] , x * 2 >= 12 ]
-- result = [ x | x <- [50..100] , x `mod` 2 == 0 ]
-- result = [ if x < 10 then "Big" else "Bang" | x <- [5..20] , odd x, x /= 11 ]
result = [ x+y | x <- [1..3], y <- [5..7]]

main = print( result )
