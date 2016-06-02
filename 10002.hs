main = do
     s <- getLine
     let [x, y] = map read . words $ s
     let ans = show (x * y) ++ " " ++ show (2 * (x + y))
     putStrLn ans
