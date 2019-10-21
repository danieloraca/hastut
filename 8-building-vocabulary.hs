{- 8. Building Vocabulary -}
title = "8. Building Vocabulary"

{- 8.1 Function Composition -}
f x = x + 3
square x = x ^ 2
{- valid example: squareOfF x = square(f(x)) -}
{- valid example: squareOfF x = (square . f) x-}
squareOfF = square . f
{- above 3 functions are similar, the last one is reducing the `x` like in maths -}