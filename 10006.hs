solve :: Int -> [String] -> String
solve n (x:ss)
      | head ss == "0" = "Case " ++ (show n) ++ ": " ++ x
      | otherwise = "Case " ++ (show n) ++ ": " ++ x ++ "\n" ++ solve (n+1) ss
 
main = do
     ss <- getContents
     putStrLn $ solve 1 $ lines ss
