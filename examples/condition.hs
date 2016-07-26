getDiscount numberOfProduct = if numberOfProduct > 100 
                              then 0.5 
                              else 0.1
main = print(getDiscount 101)
