{-System Info-}
{-
import System.Info
main = do
    print os
    print arch
    print compilerName
    print compilerVersion
-}

{-System Environment-}
{-
import System.Environment
main = do
    getArgs >>= print
    getProgName >>= print
    getEnvironment >>= print
-}

{-Directories-}
{-
import System.Directory
main = do
    getCurrentDirectory >>= print 
    getHomeDirectory >>= print
    getUserDocumentsDirectory >>= print
-}

{- Current date and time -}
{-
import Data.Time
main = do
    getCurrentTime >>= print
    getCurrentTime >>= print
    getCurrentTime >>= print
-}

{-Simple HTTP conduit-}
{-
import Network.HTTP.Conduit
import qualified Data.ByteString.Lazy as L

main = simpleHttp "http://www.winsoft.sk" >>= L.putStr
-}

{-Lists-}
{-
list = [1, 2, 3, 4, 5]

main = do
    print list

    print $ head list
    print $ tail list
    print $ last list
    print $ init list

    print $ list !! 3
    print $ elem 3 list

    print $ length list
    print $ null list
    print $ reverse list

    print $ take 2 list
    print $ drop 2 list

    print $ minimum list
    print $ maximum list

    print $ sum list
    print $ product list

    print [1..10]
    print ['A'..'Z']
    print [2,4..20]

    print $ take 10 $ cycle [1..4]
    print $ map (+1) list

    print $ filter (>3) list
    print $ all even list
    print $ any odd list

    print $ foldr (+) 0 list
    print $ foldr1 (+) list

    print $ foldl (+) 0 list
    print $ foldl1 (+) list

    print $ scanr (+) 0 list
    print $ scanr1 (+) list

    print $ scanl (+) 0 list
    print $ scanl1 (+) list

    print $ take 10 $ repeat 0
    print $ replicate 10 0
    print $ drop 3 list

    print $ ['a', 'b'] ++ ['c']
    print $ zip [1, 2, 3] ['a', 'b', 'c']
    print $ unzip [(1, 'a'), (2, 'b'), (3, 'c')]
    print $ zipWith (+) [1, 2, 3] [4, 5, 6]
    print $ [(x, y) | x <- [1..5], y <- ['a'..'e']]

    print $ words "Hello world"
    print $ unwords ["Hello", "world"] 
-}

{- Tuples -}
{-
tuple = (1, 2)

tuple3 = (1, 2, 3)

first (a, _, _) = a
second (_, b, _) = b
third (_, _, c) = c
doubleFirst (a,_,_) = 2 * a

main = do
    print tuple
    print $ fst tuple
    print $ snd tuple

    print tuple3
    print $ first tuple3
    print $ second tuple3
    print $ third tuple3
    print $ doubleFirst tuple3
-}

{-Data List-}
{-
import Data.List

main = do
    print $ permutations "superb"
    print $ intersperse '.' "Erik"
    print $ intercalate " " ["abc","efg","x"]
    print $ transpose ["abc","efg"]
    print $ subsequences "abc"
    print $ permutations "abc"

    print $ foldl' (+) 0 [1..1000000]
    print $ foldl1' (+) [1..1000000]

    print $ concat ["abc","efg"]
    print $ any (== 'a') "abcd"
    print $ all (== 'a') "abcd"
    print $ take 10 $ iterate (+1) 5
    print $ replicate 10 'x'
    print $ splitAt 3 "abcdefgh"
    print $ takeWhile (< 30) [1..]
    print $ span (< 3) [1..10]
    print $ break (> 3) [1..10]
    print $ stripPrefix "ab" "abcdefg"
    print $ isPrefixOf "ab" "abcdefg"
    print $ elem 'c' "abcdefg"
    print $ lookup 'c' [('a', 1), ('b', 2), ('c', 3)]
    print $ find (> 2) [1..]
    print $ partition (> 2) [1..10]
    print $ nub [1, 1, 3, 2, 1, 2, 4, 6]
    print $ sort [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    print $ elemIndex 4 [1, 2, 3, 4, 2]
    print $ elemIndices 2 [1, 2, 3, 4, 2]
    print $ findIndex (< 3) [1, 2, 3, 4, 2]
    print $ findIndices (< 3) [1, 2, 3, 4, 2]
-}

{-Data.Char-}
{-
import Data.Char

main = do
    print $ isAlpha 'c'
    print $ isDigit '4'
    print $ toUpper 'a'
    print $ toLower 'E'
    print $ digitToInt '2'
    print $ intToDigit 9
    print $ intToDigit 12
    print $ ord('A')
    print $ chr(61)
    print $ intToDigit 15
-}

{-Data Map-}
{-
import qualified Data.Map as Map

phoneBook = Map.fromList [(1234, "Erik"), (5678, "Patrik")]

main = do
    print phoneBook
    print $ Map.lookup 1234 phoneBook
    print $ (Map.empty :: Map.Map Int Int)
    print $ Map.singleton 3 5
    print $ Map.insert 1 "abc" Map.empty
    print $ Map.null phoneBook
    print $ Map.size phoneBook
    print $ Map.toList phoneBook
    print $ Map.keys phoneBook
    print $ Map.elems phoneBook
-}

{-Data.Set-}
{-
import qualified Data.Set as Set

set = Set.fromList "erik salaj"

main = do
    print set
    print $ Set.null set
    print $ Set.size set
    print $ Set.member 'a' set
-}

{-Data.Array-}
{-
import Data.Array

myArray = array (1, 3) [(1, "a"), (2, "b"), (3, "c")]

main = do
    print myArray
    print $ myArray ! 2
    print $ bounds myArray
    print $ indices myArray
    print $ elems myArray
    print $ assocs myArray
-}

{-CPU Time-}
{-import System.CPUTime

main = do
    print cpuTimePrecision
    getCPUTime >>= print
-}
{-Javascript Parser-}
{-import Language.JavaScript.Parser

main = do
    source <- readFile "main.js"
    print $ parse source "main.js"

    let result = parse source "main.js"
    case result of
        Left error -> print error
        Right ast -> putStrLn $ renderToString ast
-}
