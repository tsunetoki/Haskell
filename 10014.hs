import Control.Applicative
import Control.Monad
 
ans :: Int -> Int -> Int -> String
ans hc h w
    | h==hc = "\n"
    | otherwise = anss 0 hc w ++ "\n" ++ ans (hc+1) h w
 
anss :: Int -> Int -> Int -> String
anss wc hc w
    | w==wc = ""
    | mod (hc+wc) 2 == 0 = "#" ++ anss (wc+1) hc w
    | otherwise = "." ++ anss (wc+1) hc w
 
main = do
    [h,w] <- map read.words <$> getLine
    unless ((h*h+w*w) == 0) $
      do putStr $ ans 0 h w
         main
