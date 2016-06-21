import Data.Char (chr, ord)
import Data.List
 
count :: [Int] -> Int -> Int -> Int -> String
count ss cnt n x
    | n==26 = ""
    | ss!!x==n = "" ++ count ss (cnt+1) n (x+1)
    | otherwise = [chr ( n + ord 'a')] ++ " : " ++ show cnt ++ "\n" ++ count ss 0 (n+1) x
 
toNum :: Char -> Int
toNum s
    | ('A'<=s)&&(s<='Z') = ord s - ord 'A'
    | ('a'<=s)&&(s<='z') = ord s - ord 'a'
    | otherwise = 26
 
toNumStr :: String -> [Int]
toNumStr = map toNum
 
main = do
    ss <- getContents
    putStr $ count (sort $ toNumStr (ss ++ ".")) 0 0 0
