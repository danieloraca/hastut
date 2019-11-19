--Pattern matching

data Date = Date Int Int Int -- Year, Month, Day
showDate :: Date -> String
showDate (Date y m d) = show y ++ "-" ++ show m ++ "-" ++ show d

--16.4.2 Introduction to records
data Foo2 = Bar2 | Baz2 {bazNumber::Int, bazName::String}
h :: Foo2 -> Int
h Baz2 {bazName=name} = length name
h Bar2 {} = 0

x = Baz2 1 "Hask"
y = Baz2 {bazName = "Curry", bazNumber = 2}