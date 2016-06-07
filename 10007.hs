import Data.List
 
solve :: [String] -> String
solve (s:ss) =
      if s == "0 0" then ""
      else let [x,y] = sort $ map (\ss -> read ss :: Int) $ words s
      in show x ++ " " ++ show y ++ "\n" ++ (solve ss)
 
main = do
     ss <- getContents
     putStr $ solve $ lines ss
