{- Here's a function that doubles every element from a list of integers: -}

doubleList :: [Integer] -> [Integer]
doubleList [] = []
doubleList (n:ns) = (2 * n) : doubleList ns

{-triple list-}
tripleList :: [Integer] -> [Integer]
tripleList [] = []
tripleList (n:ns) = (3 * n) : tripleList ns

{-multiply list-}
multiplyList :: Integer -> [Integer] -> [Integer]
multiplyList _ [] = []
multiplyList m (n:ns) = (m * n) : multiplyList m ns

{-takeInt 4 [11,21,31,41,51,61] returns [11,21,31,41]-}

{-sumInt returns the sum of the items in a list.-}
sumInt :: [Integer] -> Integer
sumInt [] = 0
sumInt (n:ns) = n + sumInt ns

{-generalizing it-}
applyToIntegers :: (Integer -> Integer) -> [Integer] -> [Integer]
applyToIntegers _ [] = []
applyToIntegers f (n:ns) = (f n) : applyToIntegers f ns