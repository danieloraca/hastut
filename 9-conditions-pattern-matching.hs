{-9 - if else condition -}
mySignum x = 
    if x < 0
        then -1
        else if x > 0
            then 1
            else 0

mySignumWithGuards x
    | x < 0     = -1
    | x > 0     = 1
    | otherwise = 0

{-9 - pattern matching -}

pts::Int -> Int
pts 1 = 10
pts 2 = 6
pts x
    | x <= 6    = 7 - x
    | otherwise = 0

{-pattern matching with booleans-}
(||) :: Bool -> Bool -> Bool
False || False = False
_     || _     = True

{-The following function, however, does the same thing as fst -}
fst' :: (a, b) -> a
fst' (x, _) = x