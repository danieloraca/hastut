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

