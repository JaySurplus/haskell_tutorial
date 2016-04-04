data BookInfo = Book Int String [String]
 deriving (Show)

data MagazineInfo = Magazine Int String [String]
 deriving (Show)


data BookReview = BookReview BookInfo CustomerID String

type CustomerID = Int
type ReviewBody = String

data BetterReview = BetterReview BookInfo CustomerID ReviewBody


--data Bool = False | True
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


flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f y x = f x y

map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x : acc) [] xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
 | p x = x : filter' p xs
 | otherwise = filter' p xs

largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000, 99999..])
 where p x = x `mod` 3289 == 0 

chain :: (Integral a) => a -> [a]  
chain 1 = [1]  
chain n  
 | even n =  n:chain (n `div` 2)  
 | odd n  =  n:chain (n*3 + 1)  

numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))

sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []

reverse2' :: [a] -> [a]
reverse2' = foldr (\x acc -> acc ++ [x]) []

product' :: (Num a) => [a] -> a
product' = foldl1 (*)  