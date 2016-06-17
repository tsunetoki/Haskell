--3重ループなんだけど、もっと簡潔に書けるはずなんだ
--rep定義すれば簡単にできるのかな

import Control.Applicative
import Control.Monad
 
ansc :: Int -> Int -> Int -> Int -> Int -> Int
ansc a b c n x
    | c==n || a+b+c>x = 0
    | a+b+c==x = 1
    | otherwise = ansc a b (c+1) n x + ansb a b c n x
 
ansb :: Int -> Int -> Int -> Int -> Int -> Int
ansb a b c n x
    | b==c || a+b+c>x = 0
    | a+b+c==x = 1
    | otherwise = ansb a (b+1) c n x + ansa a b c n x
 
ansa :: Int -> Int -> Int -> Int -> Int -> Int
ansa a b c n x
    | a==b || a+b+c>x = 0
    | a+b+c==x = 1
    | otherwise = ansa (a+1) b c n x
 
main = do
    [n,x] <- map read.words <$> getLine
    unless (n == 0) $
      do print $ ansc 1 2 3 (n+1) x
         main
