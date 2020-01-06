addStr :: Float -> String -> Float
addStr x str = x + read str

sumStr :: [String] -> Float
sumStr = foldl addStr 2.0

sumStr2 :: [String] -> Float
sumStr2 = 
    let addStr2 x str = x + read str
    in foldl addStr2 3.0

sumStr3 :: [String] -> Float
sumStr3 = foldl addStr3 2.5
    where addStr3 x str = x + read str
--sumStr2 ["8"]

f x =
    if x > 0
        then (let lsq = (log x) ^ 2 in tan lsq) * sin x
        else 0
--

--by using lambda function
sumStrLambda :: [String] -> Float
sumStrLambda = foldl (\ x str -> x + read str) 2.5

-- Operators
-- 2 + 3
-- (+) 2 3

--(\\) :: (Eq a) => [a] -> [a] -> [a]
--xs \\ ys = foldl (\zs y -> delete y zs) xs ys

