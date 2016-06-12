import Control.Applicative
import Control.Monad
 
ans :: Int -> Int -> String
ans h w
    | h==0||w==0 = "\n"
    | otherwise = anss w ++ "\n" ++ ans (h-1) w
 
anss :: Int -> String
anss w
    | w==0 = ""
    | otherwise = "#" ++ anss (w-1)
 
main = do
    [h,w] <- map read.words <$> getLine
    unless ((h*h+w*w) == 0) $
      do putStr $ ans h w
         main
