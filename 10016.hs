import Control.Applicative
import Control.Monad
 
solve :: Int -> Int -> Int -> String
solve a b c
    | a == -1 || b == -1 = "F"
    | a + b >= 80 = "A"
    | a + b >= 65 = "B"
    | a + b >= 50 = "C"
    | a + b <  30 = "F"
    | c >= 50 = "C"
    | otherwise = "D"
 
main = do
    [a,b,c] <- map read . words <$> getLine
    unless (a+b+c == -3) $
      do putStrLn (solve a b c)
         main
