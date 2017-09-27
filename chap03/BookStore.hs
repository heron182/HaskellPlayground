data BookInfo = Book Int String [String]
                deriving Show

data MagazineInfo = Magazine Int String [String]
                    deriving Show

data BookReview = BookReview BookInfo CustomerID ReviewBody
                  deriving Show

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving Show

type CustomerID = Int
type ReviewBody = String
type BookRecord = (BookInfo, BookReview)
type CardHolder = String
type CardNumber = String
type Address = [String]

myInfo = Book 8767 "Memórias Póstumas de B. Cubas" ["Machado de Assis"]
