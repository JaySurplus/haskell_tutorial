data BookInfo = Book Int String [String]
 deriving (Show)

data MagazineInfo = Magazine Int String [String]
 deriving (Show)


data BookReview = BookReview BookInfo CustomerID String

type CustomerID = Int
type ReviewBody = String

data BetterReview = BetterReview BookInfo CustomerID ReviewBody


data Bool = False | True
type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
 | CashOnDelivery
 | Invoice CustomerID
 deriving (Show)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys
