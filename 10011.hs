rss :: Int -> [String] -> String
rss s xs
    | s==1 = show (read (head xs) :: Int)
    | otherwise = show (read (xs !! (s-1)) :: Int) ++ " " ++ rss (s-1) xs
 
main = do
    s <- getLine
    ss <- getLine
    let xs = words ss
    putStrLn $ rss (read s) xs
