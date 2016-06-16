import Data.List
  
check :: [String] -> Int -> Int -> [Int] -> [Int]
check xx x n ans
    | n==x = calc xx 0:ans
    | otherwise = calc xx n:ans ++ check xx x (n+1) ans
  
calc :: [String] -> Int -> Int
calc xx n
    | (xx !! (2*n)) == "S" = read (xx !! (2*n+1)) +  0
    | (xx !! (2*n)) == "H" = read (xx !! (2*n+1)) + 13
    | (xx !! (2*n)) == "C" = read (xx !! (2*n+1)) + 26
    | (xx !! (2*n)) == "D" = read (xx !! (2*n+1)) + 39
    | otherwise = 0
  
trans :: [Int] -> String
trans xs
    | null xs = ""
    | head xs > 39 = "D " ++ show (head xs - 39) ++ "\n" ++ trans (tail xs)
    | head xs > 26 = "C " ++ show (head xs - 26) ++ "\n" ++ trans (tail xs)
    | head xs > 13 = "H " ++ show (head xs - 13) ++ "\n" ++ trans (tail xs)
    | otherwise = "S " ++ show (head xs) ++ "\n" ++ trans (tail xs)
  
  
main = do
    let ss = [1..52]
    x <- readLn
    xin <- getContents
    let xx = words xin
    let xs = ss \\ check xx (x+0) 0 []
    putStr $ trans xs
