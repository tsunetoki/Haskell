--repを定義して回したほうが早かったんじゃないかシリーズ第1弾ですね

import Control.Applicative
import Control.Monad
 
ans :: Int -> Int -> Int -> Int -> String
ans h w hs ws
    | h==hs = tb w ++ "\n" ++ ans (h-1) w hs ws
    | h==1  = tb w ++ "\n\n"
    | otherwise = mid w ws ++ "\n" ++ ans (h-1) w hs ws
 
mid :: Int -> Int -> String
mid w ws
    | w==ws = "#" ++ mid (w-1) ws
    | w==1  = "#"
    | otherwise = "." ++ mid (w-1) ws
 
tb :: Int -> String
tb w
    | w==0 = ""
    | otherwise = "#" ++ tb (w-1)
 
main = do
    [h,w] <- map read.words <$> getLine
    unless ((h*h+w*w) == 0) $
      do putStr $ ans h w h w
         main
