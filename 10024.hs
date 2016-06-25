import Control.Applicative
 
main = do
    [x1, y1, x2, y2] <- map read.words <$> getLine
    print $ sqrt ((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1))
