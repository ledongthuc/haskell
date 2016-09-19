productPrice :: Double
productPrice = 1
tax :: Double
tax = 0.1

calculateBill numberOfProduct = productPrice * numberOfProduct
calcuateTotalBill numberOfProduct = calculateBill(numberOfProduct) * (1 + tax)

main = print(calcuateTotalBill 100)


