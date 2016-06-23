import Data.Char (chr, ord)
import Data.List
 
toDowner :: Char -> Char
toDowner s
    | ('A'<=s)&&(s<='Z') = chr(ord s - ord 'A' + ord 'a')
    | otherwise = s
 
toDownerStr :: String -> String
toDownerStr ss = map toDowner ss
 
main = do
    x <- getLine
    ss <- getContents
    let xs = words (toDownerStr ss)
    print $ length $ intersect xs [x]
