import Data.Char (chr, ord)
 
isLowAlpha :: Char->Bool
isLowAlpha s = ('a'<=s)&&(s<='z')
 
isHighAlpha :: Char->Bool
isHighAlpha s = ('A'<=s)&&(s<='Z')
 
toUpper :: Char -> Char
toUpper s
    | isLowAlpha s = chr(ord s + ord 'A' - ord 'a')
    | isHighAlpha s = chr(ord s - ord 'A' + ord 'a')
    | otherwise = s
 
toUpperStr :: String -> String
toUpperStr ss = map toUpper ss
 
main = do
    ss <- getLine
    putStrLn $ toUpperStr ss
