import Control.Applicative
import Control.Monad
 
ave :: [String] -> Double -> Double
ave ns = (/) (sum (map read ns :: [Double]))
 
dsum :: [String] -> Double -> Int -> Int -> Double
dsum ns m n x
    | x==n = 0
    | otherwise = (read (ns!!x)-m)*(read (ns!!x)-m)+dsum ns m n (x+1)
 
main = do
    n <- getLine
    unless (read n==0) $
        do
            ns <- words <$> getLine
            let m = ave ns (read n)
            print $ sqrt ((dsum ns m (read n) 0) / read n)
            main
