module Test
where

x = 5
y = (6, "Hello")
z = x* fst y

square x = x * x 

signum x =
	if x < 0
		then -1
		else if x > 0
			then 1
			else 0

roots a b c = ((-b + sqrt(b*b-4*a*c)) / (2*a),
			(b + sqrt(b*b-4*a*c)) / (2*a))


exponent a 1 = a
--exponent a b = a * exponent a (b-1)


main = do
putStrLn "Hello Haskell"
putStrLn (show (roots 1 2 1))
--putStrLn (show (exponent 2 3))