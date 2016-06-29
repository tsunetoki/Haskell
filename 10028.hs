import Data.List
 
trans :: [Int] -> Int -> Int -> String
trans xx n x
    | n==(x+1) = show (xx !! x) ++ "\n"
    | otherwise = show (xx !! x) ++ " " ++ trans xx n (x+1)
 
main = do
    n <- getLine
    ss <- getLine
    let ns = words ss
    putStr $ trans (sort (map read ns :: [Int])) (read n) 0
