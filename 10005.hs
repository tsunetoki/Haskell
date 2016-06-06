solve :: Int -> String
solve n
      | n==1 = "Hello World"
      | otherwise = "Hello World\n" ++ solve (n-1)

main = putStrLn $ solve 1000
