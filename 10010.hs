calc :: Int -> [String] -> String
calc n ss
    | ss !! (3*n+1) == "+" = show(read (ss !! (3*n)) + read (ss !! (3*n+2))) ++ "\n" ++ calc (n+1) ss
    | ss !! (3*n+1) == "-" = show(read (ss !! (3*n)) - read (ss !! (3*n+2))) ++ "\n" ++ calc (n+1) ss
    | ss !! (3*n+1) == "*" = show(read (ss !! (3*n)) * read (ss !! (3*n+2))) ++ "\n" ++ calc (n+1) ss
    | ss !! (3*n+1) == "/" = show(div (read (ss !! (3*n))) (read (ss !! (3*n+2)))) ++ "\n" ++ calc (n+1) ss
    | otherwise = ""
 
main = do
    xx <- getContents
    let xs = words xx
    putStr $ calc 0 xs
