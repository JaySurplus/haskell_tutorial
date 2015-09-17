import Data.Char
-- #3.4
lowLen :: [Char] -> Int
lowLen list = length (filter isLower list)


-- #3.5
maxNumList :: [Int] -> Int
maxNumList list = foldl (max) 0 list

-- #3.6
fvalPair :: [(Int, Char)] -> Int
fvalPair list = fst (list !! 0)

-- #3.7
fib :: Int -> Int
fib 1 =1 
fib 2 = 2
fib n = fib(n-1) + fib(n-2)

-- #3.8
mult :: Integer -> Integer -> Integer
mult m 0 = 0
--mult m 1 = m 
mult m n = m + (mult m (n-1))

-- #3.9
mymap :: (a -> b) -> [a] -> [b]
mymap f [] = []
mymap f (a:as) = f a : map f as
--mymap f l = [ f x | x <- l ]

main = do
putStrLn ("Number of lower case char are : " ++ show (lowLen "This is Jay"))
putStrLn ("Max of list : " ++ show (maxNumList [1,2,3,10,4,5]))
putStrLn ("Problem 3.6 : " ++ show (fvalPair [(1,'a'), (2, 'b')]))
putStrLn ("Problem 3.7 : " ++ show (fib(5) ))
putStrLn ("Problem 3.8 : " ++ show (mult 10 10000))
putStrLn ("Problem 3.9 : " ++ show (mymap (+ 1) [2,3,4]))
