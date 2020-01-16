
import Text.Read

interactiveDoubling = do
    putStrLn "Number: "
    s <- getLine
    let mx = readMaybe s :: Maybe Double
    case mx of
        Just x -> putStrLn ("The double is " ++ show(2*x))
        Nothing -> do
            putStrLn "Invalid No"
            interactiveDoubling

interactiveDoubling2 = do
    putStrLn "Number: "
    s <- getLine
    let mx = readMaybe s :: Maybe Double
    case fmap (2*) mx of
        Just d -> putStrLn ("The double is " ++ show d)
        Nothing -> do
            putStrLn "Invalid No"
            interactiveDoubling2

interactiveSumming = do
    putStrLn "Choose numbers"
    sx <- getLine
    sy <- getLine
    let mx = readMaybe sx :: Maybe Double
        my = readMaybe sy
    case mx of
        Just x -> case my of
            Just y -> putStrLn ("The sum is " ++ show (x+y))
            Nothing -> retry
        Nothing -> retry
    where
    retry = do
        putStrLn "Invalid. Retrying..."
        interactiveSumming

---
interactiveSummingEnhanced = do
    putStrLn "Number:"
    sx <- getLine
    sy <- getLine
    let mx = readMaybe sx :: Maybe Double
        my = readMaybe sy
    case (+) <$> mx <*> my of
        Just z -> putStrLn ("The sum is " ++ show z)
        Nothing -> do
            putStrLn "Invalid Number, retrying..."
            interactiveSummingEnhanced

---
interactiveSummingIO :: IO ()
interactiveSummingIO = do
    putStrLn "Choose two numbers:"
    mx <- readMaybe <$> getLine --- equivalently: fmap readMaybe getLine
    my <- readMaybe <$> getLine
    case (+) <$> mx <*> my :: Maybe Double of
        Just z -> putStrLn ("The sum is " ++ show z)
        Nothing -> do
            putStrLn "Invalid. Retrying.."
            interactiveSummingIO

---
interactiveConcatenatingSimple :: IO ()
interactiveConcatenatingSimple = do
    putStrLn "Choose two strings:"
    sx <- getLine
    sy <- getLine
    putStrLn "Them concatenated: "
    putStrLn (sx ++ sy)
---
interactiveConcatenating :: IO ()
interactiveConcatenating = do
    putStrLn "Choose two strings:"
    sz <- (++) <$> getLine <*> getLine
    putStrLn "Them concatenated: "
    putStrLn sz
---
interactiveConcatenatingShort :: IO ()
interactiveConcatenatingShort = do
    putStrLn "Choose two strings:"
    sz <- (++) <$> getLine <*> getLine
    putStrLn "Them concatenated: " *> putStrLn sz
---
interactiveConcatenatingShorter :: IO ()
interactiveConcatenatingShorter = do
    sz <- putStrLn "Choose two strings: " *> ((++) <$> getLine <*> getLine)
    putStrLn "Them concatenated: " *> putStrLn sz
---