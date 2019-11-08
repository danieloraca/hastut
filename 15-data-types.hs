
data OldAnniversary = OldBirthday String Int Int Int       --name, year, month, day
                | OldWedding String String Int Int Int -- spouse name 1, spouse name 2, year, month, day

oldJohnSmith :: OldAnniversary
oldJohnSmith = OldBirthday "John Smith" 1950 10 11

oldSmithsWedding :: OldAnniversary
oldSmithsWedding = OldWedding "Florence" "Gal" 1960 11 12

oldAnniversariesOfJohnSmith ::[OldAnniversary]
oldAnniversariesOfJohnSmith = [oldJohnSmith, oldSmithsWedding]
--or declared like this
anniversariesOfJohnSmith2 = [OldBirthday "John Smith" 1950 10 11, OldWedding "Florence" "Gal" 1960 11 12]

oldShowDate :: Int -> Int -> Int -> String
oldShowDate y m d = show y ++ " " ++ show m ++ " " ++ show d

oldShowAnniversary :: OldAnniversary -> String
oldShowAnniversary (OldBirthday name year month day) = 
    name ++ " born " ++ oldShowDate year month day

oldShowAnniversary (OldWedding name1 name2 year month day) =
    name1 ++ " married " ++ name2 ++ " on " ++ oldShowDate year month day
     
--types
type OldName = String
user :: OldName
user = "Daniel"

type AnniversaryRecord = [Anniversary]

--complete one::
type Name = String

data Anniversary = 
    Birthday Name Date
    | Wedding Name Name Date

data Date = Date Int Int Int -- Year, Month, Day
johnSmith :: Anniversary
              
johnSmith = Birthday "John Smith" (Date 1968 7 3)

smithWedding :: Anniversary

smithWedding = Wedding "John Smith" "Jane Smith" (Date 1987 3 4)

type AnniversaryBook = [Anniversary] 

anniversariesOfJohnSmith :: AnniversaryBook
anniversariesOfJohnSmith = [johnSmith, smithWedding]

showDate :: Date -> String
showDate (Date y m d) = show y ++ "-" ++ show m ++ "-" ++ show d

showAnniversary :: Anniversary -> String
showAnniversary (Birthday name date) =
   name ++ " born " ++ showDate date
showAnniversary (Wedding name1 name2 date) =
   name1 ++ " married " ++ name2 ++ " on " ++ showDate date
