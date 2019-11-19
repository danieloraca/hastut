{-if then else-}

describeLetter :: Char -> String
describeLetter c
    | c >= 'a' && c <= 'z' = "Lower Case"
    | c >= 'A' && c <= 'Z' = "Upper Case"
    | otherwise           = "Not a letter!"

-- *Main> describeLetter 'a'

subst13 0 = 1
subst13 1 = 2
subst13 x = x - 13

subst14 x = 
    case x of
        0 -> 1
        1 -> 2
        _ -> x - 14

describeString :: String -> String
describeString str =
    case str of
        (x:xs) -> "The first character of the string is: " ++ [x] ++ "; and " ++
                  "there are " ++ show (length xs) ++ " more characters in it."
        []     -> "This is an empty string."

--
data Colour = Black | White | RGB Int Int Int
describeBlackOrWhite c = 
    "This color is "
    ++ case c of
        Black           -> "black"
        White           -> "white"
        RGB 0 0 0       -> "black"
        RGB 255 255 255 -> "white"
        _               -> "something else"
    ++ ", ok?"

--

doGuessing num = do
    putStrLn "Enter your guess:"
    guess <- getLine
    if (read guess) < num
        then do putStrLn "Too low!"
                doGuessing num
    else if (read guess) > num
        then do putStrLn "Too high!"
                doGuessing num
        else do putStrLn "Got it!"
--
doGuessingC num = do
    putStrLn "Enter your guess:"
    guess <- getLine
    case compare (read guess) num of
        LT -> do putStrLn "Too low!"
                 doGuessingC num
        GT -> do putStrLn "Too high!"
                 doGuessingC num
        EQ -> putStrLn "You win"
--