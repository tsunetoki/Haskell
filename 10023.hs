import Control.Monad
 
main = do
    s <- getLine
    unless (s=="-") $
        do
            let ss = s ++ s
            n <- getLine
            ns <- replicateM (read n) getLine
            let nsum = mod (sum (map read ns :: [Int])) (length s)
            putStrLn $ take (length s) $ drop nsum ss
            main
