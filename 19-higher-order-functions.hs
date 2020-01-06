
quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x : xs) = (quickSort less) ++ (x : equal) ++ (quickSort more)
    where
        less = filter (< x) xs
        equal = filter (== x) xs
        more = filter (>x) xs

-- *Main> quickSort [3,4,2]

