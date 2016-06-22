--ここらへんから関数型言語の強みが出始める

import Control.Monad
import Data.List
 
main = do
    n <- getLine
    s <- replicateM (read n) getLine
    putStrLn $ minimum s
