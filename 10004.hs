import Data.List
 
solve :: [Int] -> String
solve xs =
      let [x,y,z] = take 3 $ sort xs
      in show x ++ " " ++ show y ++ " " ++ show z
 
main = do
     s <- getLine
     let xs = map read . words $ s
     putStrLn $ solve xs
