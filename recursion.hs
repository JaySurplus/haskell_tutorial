data Token
data Expression

tokenizer :: String -> [Token]
tokenizer = undefined

parse :: [Token] -> Expression
parse = undefined

evaluate :: Expression -> Double
evaluate = undefined


loop :: Int -> IO ()
loop n = do
	if n < 5
	then do
		putStrLn( show n )
		loop ( n + 1)
	else
		return ()
main :: IO ()
main = do
	putStrLn "Enter a number"
	str <- getLine
	print (if read str >= 1 then 1 else 0)
	
	loop 0