import Data.List
 
play :: [String] -> [String] -> [String] -> [String]
play ss now ans
    | head ss=="quit" = reverse ans
    | head ss=="push" = play (tail (tail ss)) ((ss!!1):now) ans
    | otherwise = play (tail ss) (tail now) (head now:ans)
 
main = do
    ns <- getContents
    let ss = words ns
    mapM_ putStrLn $ play ss [] []
