{- factorial -}
factorial 0 = 1
factorial n = n * factorial (n - 1)

{-multiplication-}
mult _ 0 = 0
mult n m = (mult n (m - 1)) + n

{- ex: power-}
pow n 1 = n
pow n m = n ^ m

{- The recursive definition of length -}
lengthy :: [a] -> Int
lengthy [] = 0
lengthy (x:xs) = 1 + lengthy xs
