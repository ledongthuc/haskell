repeat'::a->[a]
repeat' x = x:repeat' x

main = print(take 5 (repeat' "a"))
