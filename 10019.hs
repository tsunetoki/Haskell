import Control.Monad
 
trans :: String -> [Int]
trans ss = map (read.return) ss :: [Int]
 
main = do
    ss <- getLine
    unless (ss=="0") $
        do  print $ sum $ trans ss
            main
