x :: Integer
y :: Integer
z :: Integer
w :: Integer

x = 5 + 7 -- infix function
y = x * 2
z = succ y -- prefix function
w = min 10 5 + max 5 10

main = print(z `div` 2)
