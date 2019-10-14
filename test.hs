s = 1.0
a = 2.0

t = areaRectangle 2 3

areaCircle r = pi * r * r
areaRectangle l w = l * w
areaTriangle b h = (b * h) / 2
areaCillinder r h = (areaCircle r) * h

heron a b c = sqrt (s * (s - a) * (s - b) * (s - c))
    where
    s = (a + b + c) / 2

areaTriangleTrig a b c = c * height / 2
    where
    cosa = (b ^ 2 + c ^ 2 - a ^ 2) / (2 * b * c)
    sina = sqrt(1 - cosa^ 2)
    height = b * sina

areaTriangleHeron a b c = result
    where 
    result = sqrt (s * (s - a) * (s - b) * (s - c))
    s = (a + b + c) / 2

{-
absolute x
    | x < 0 = 0 - x  
    | otherwise = x
-}

numOfRealSolutions a b c
    | disc > 0  = 2
    | disc == 0 = 1
    | otherwise = 0
        where
        disc = b^2 - 4*a*c

{- :m Data.Char0 -}

{- function to negate a value -}
my_negate x = -1 * x
