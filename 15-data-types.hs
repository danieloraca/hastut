
data Anniversary = Birthday String Int Int Int       --name, year, month, day
                | Wedding String String Int Int Int -- spouse name 1, spouse name 2, year, month, day

johnSmith :: Anniversary
johnSmith = Birthday "John Smith" 1950 10 11

smithsWedding :: Anniversary
smithsWedding = Wedding "Florence" "Gal" 1960 11 12

anniversariesOfJohnSmith ::[Anniversary]
anniversariesOfJohnSmith = [johnSmith, smithsWedding]
--or declared like this
anniversariesOfJohnSmith2 = [Birthday "John Smith" 1950 10 11, Wedding "Florence" "Gal" 1960 11 12]

showDate :: Int -> Int -> Int -> String
showDate y m d = show y ++ " " ++ show m ++ " " ++ show d

showAnniversary :: Anniversary -> String
showAnniversary (Birthday name year month day) = 
    name ++ " born " ++ showDate year month day

showAnniversary (Wedding name1 name2 year month day) =
    name1 ++ " married " ++ name2 ++ " on " ++ showDate year month day
     
--types
type Name = String
user :: Name
user = "Daniel"

type AnniversaryRecord = [Anniversary]