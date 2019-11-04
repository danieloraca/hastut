{-List comprehension-}
isEven :: Int -> Bool
isEven n = (mod n 2) == 0

retainEven :: [Int] -> [Int]
retainEven es = [n | n <- es, isEven n]

retainLargeEvens :: [Int] -> [Int]
retainLargeEvens es = [n | n <- es, isEven n, n > 100]

doubleTheEvens :: [Int] -> [Int]
doubleTheEvens es = [n*2 | n <- es, isEven n]

firstForEvenSeconds :: [(Int, Int)] -> [Int]
firstForEvenSeconds ps = [fst p | p <- ps, isEven (snd p)] -- here, p is for pairs.

firstForEvenSecondsWithPatterns ps = [x | (x, y) <- ps, isEven y]

doubleOfFirstForEvenSeconds :: [(Int, Int)] -> [Int]
doubleOfFirstForEvenSeconds ps = [2 * x | (x, y) <- ps, isEven y]

allPairs :: [(Int, Int)]
allPairs = [(x, y) | x <- [1..4], y <- [5..8]]

somePairs :: [(Int, Int)]
somePairs = [(x, y) | x <- [1..4], y <- [5..8], x + y > 8]