import Control.Applicative
 
solve :: Int -> Int -> String
solve a b
      | a > b = "a > b"
      | a < b = "a < b"
      | otherwise = "a == b"
 
main = do
     [a, b] <- map read . words <$> getLine
     putStrLn $ solve a b
