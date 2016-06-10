-- なんで不必要なものをインポートしているのだろうか

import Control.Monad
import Control.Applicative
import Numeric
 
len :: Double -> String
len r = showFFloat (Just 6) (2*r*pi) ""
 
men :: Double -> String
men r = showFFloat (Just 6) (r*r*pi) ""
 
main = do
    r <- readLn
    putStrLn $ (men r) ++ " " ++ (len r)
