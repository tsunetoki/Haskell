func :: Integer -> Integer
func n = (n * n) * n

main = do
  x <- readLn
  print $ func x
