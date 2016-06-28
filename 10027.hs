asolve :: [String] -> Int -> Int -> Int ->Int
asolve ss n x ans
    | n==x = ans
    | (ss!!(2*x))==(ss!!(2*x+1)) = 1+asolve ss n (x+1) ans
    | (ss!!(2*x))>(ss!!(2*x+1))  = 3+asolve ss n (x+1) ans
    | otherwise = 0+asolve ss n (x+1) ans
 
bsolve :: [String] -> Int -> Int -> Int ->Int
bsolve ss n x ans
        | n==x = ans
        | (ss!!(2*x))==(ss!!(2*x+1)) = 1+bsolve ss n (x+1) ans
        | (ss!!(2*x))<(ss!!(2*x+1))  = 3+bsolve ss n (x+1) ans
        | otherwise = 0+bsolve ss n (x+1) ans
 
main = do
    n <- getLine
    xs <- getContents
    let ss = words xs
    putStrLn $ show(asolve ss (read n) 0 0) ++" "++ show(bsolve ss (read n) 0 0)
