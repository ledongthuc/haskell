calculateCircleArea :: Double -> Double
calculateCircleArea r = let pi = 3.14 in r ^ 2 * pi

getComment :: Double -> String
getComment area = "Your circle is " ++ case area of 78.5 -> "Correctly"
                                                    _    -> "Incorrect"

main = print(getComment(area))
       where area = calculateCircleArea(5)
