module Main
	where

import System.IO
--import System.Random


main = do
	hSetBuffering stdin LineBuffering
	num <- 5
	putStrLn "I am thinking of a number between 1 and 100"
	doGuessing num

doGuessing num = do
  putStrLn "Enter your guess:"
  guess <- getLine
 

  -- we don't expect to get here if guess == num
  if (read guess < num)
    then do print "Too low!";
            doGuessing num
    else do print "Too high!";
            doGuessing num
