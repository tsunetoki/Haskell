import           Data.List
 
main = do
    n <- getLine
    s <- getLine
    q <- getLine
    t <- getLine
    print $ length $ intersect (nub $ sort $ words s) (nub $ sort $ words t)
