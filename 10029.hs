import           Data.List
 
sort' :: [String] -> [String]
sort' ss = map show (sort $ map read ss :: [Int])
 
main = do
    n <- getLine
    ns <- getLine
    let ss = words ns
    putStrLn $ unwords $ sort' ss
