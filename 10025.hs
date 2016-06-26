import Control.Applicative
import Numeric
 
men :: Double -> Double -> Double -> String
men a b c = showFFloat Nothing ((b*a*sin (c*pi/180))/2) ""
 
len :: Double -> Double -> Double -> String
len a b c= showFFloat Nothing (sqrt(a*a+b*b-2*a*b*cos (c*pi/180))+a+b) ""
 
high :: Double -> Double -> String
high b c = showFFloat Nothing (b*sin (c*pi/180)) ""
 
main = do
    [a, b, c] <- map read.words <$> getLine
    putStrLn $ men a b c ++"\n"++ len a b c ++"\n"++ high b c
