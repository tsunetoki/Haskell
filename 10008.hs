-- まさか、(/) 1 100000 が 0.99998e-6 と表示されるとはビビったね

import Control.Applicative
import Numeric
 
xdiv :: Int -> Int -> String
xdiv x y
    | y==0 = "0"
    | otherwise = show $ (div x y)
 
xmod :: Int -> Int -> String
xmod x y
    | y==0 = "0"
    | otherwise = show $ (mod x y)
 
xans :: Double -> Double -> String
xans x y
    | y==0 = "0"
    | otherwise = showFFloat Nothing ((/) x y) ""
 
main = do
    [x,y] <- map read . words <$> getLine
    putStrLn $ (xdiv x y) ++ " " ++ (xmod x y) ++ " " ++ (xans (fromIntegral x) (fromIntegral y))
