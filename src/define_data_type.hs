data Point = Point Float Float
  deriving (Show)

data Shape = Circle Point Float | Rectangle Point Point 
  deriving (Show)

area :: Shape -> Float
area (Circle _ r) = pi * r ^ 2
area (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 -x1) * (abs $ y2 - y1)

nudge :: Shape -> Float -> Float -> Shape
nudge (Circle (Point x y) r) x1 y1 = Circle (Point (x+x1) (y+y1)) r
nudge (Rectangle (Point x1 y1) (Point x2 y2)) x3 y3 = (Rectangle (Point (x1 + x3) (y1 + y3)) (Point (x2 + x3) (y2 + y3)))

main = do
  putStrLn $ show $ Circle (Point 10.0 20.0) 10.0 -- Circle (Point 10.0 20.0) 10.0
  putStrLn $ show $ Rectangle (Point 5.0 10.0) (Point 15.0 20.0) -- Rectangle (Point 5.0 10.0) (Point 15.0 20.0)
  putStrLn $ show $ area $ Circle (Point 10.0 20.0) 10.0 -- 314.15927
  putStrLn $ show $ area $ Rectangle (Point 5.0 10.0) (Point 15.0 20.0) -- 100
  putStrLn $ show $ nudge (Circle (Point 10.0 20.0) 10.0) 10.0 10.0 -- Circle (Point 20.0 30.0) 10.0
  putStrLn $ show $ nudge (Rectangle (Point 5.0 10.0) (Point 15.0 20.0)) 10.0 10.0 --Rectangle (Point 15.0 20.0) (Point 25.0 30.0)
