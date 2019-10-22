{- 8. Building Vocabulary -}
title = "8. Building Vocabulary"

{- 8.1 Function Composition -}
f x = x + 3
square x = x ^ 2
{- valid example: squareOfF x = square(f(x)) -}
{- valid example: squareOfF x = (square . f) x-}
squareOfF = square . f
{- above 3 functions are similar, the last one is reducing the `x` like in maths -}

{- 8.3. Prelude and the libraries -}
{-import Data.List-}
{- :m +Data.List 
use that in Prelude console -}

testPermutations = permutations "Prelude"

{-8.4 reverse words order-}
{- revWords input = (unwords . reverse . words) input -}

{-
*** Good resources ***
1. https://en.wikibooks.org/wiki/
2. http://www.haskell.org/onlinereport/standard-prelude.html
3. http://www.haskell.org/ghc/docs/latest/html/libraries/index.html
4. http://www.haskell.org/hoogle
5. https://hackage.haskell.org/
6. http://www.haskell.org/cabal/users-guide/
7. http://holumbus.fh-wedel.de/hayoo/hayoo.html
-}