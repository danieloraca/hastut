{-10. input - output-}
main = do
    putStrLn "Name:"
    name <- getLine
    putStrLn("Hello, " ++ name)

{- after :l(oading) the file do `main` to call the function -}

{-app to read two entries and calculate area with them-}
myR :: String -> Double
myR widthR = read widthR

calculateArea :: Num a => (a, a) -> a
calculateArea(a, b) = a * b

getSizes = do
    putStrLn "Rectangle width: "
    widthR <- getLine
    putStrLn("")

    putStrLn "Rectangle Height: "
    heightR <- getLine
    putStrLn("")

    let a = calculateArea(myR(widthR), myR(heightR))
    putStrLn(show(a))

-- putting all results into a variable
mainPutResultsInVariable = do
    --x <- "Your name:"
    name <- getLine
    putStrLn("Hey, " ++ name)

-- 10.2.2 Controlling actions
doGuessing num = do
    putStrLn "Enter your guess:"
    guess <- getLine
    if (read guess) < num
        then do putStrLn "Too Low!"
                doGuessing num
        else if (read guess) > num
            then do putStrLn "Too High!"
                    doGuessing num
        else putStrLn "You Win!"

---

-- 10.2.2 - exercise:
-- Write a program that asks the user for his or her name. 
-- If the name is one of Simon, John or Phil, tell the user that you think Haskell is a great programming language. 
-- If the name is Koen, tell them that you think debugging Haskell is fun 
-- (Koen Classen is one of the people who works on Haskell debugging); 
-- otherwise, tell the user that you don't know who he or she is. 
-- (As far as syntax goes there are a few different ways to do it; write at least a version using if / then / else.)

greatNames = ["Simon", "Phil", "John"]
-- elem :: Eq a => a -> [a] -> Bool

revWords :: String -> String
revWords input = (unwords . reverse . words) input

