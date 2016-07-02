import Control.Applicative as C
import Data.List           as D
import Data.Set            as S
 
nubOrd :: Ord a => [a] -> [a]
nubOrd xs = go S.empty xs where
    go s (x:xs)
     | x `S.member` s = go s xs
     | otherwise        = x : go (S.insert x s) xs
    go _ _              = []
 
main = do
    n <- getLine
    s <- getLine
    q <- getLine
    t <- getLine
    let s' = fromList $ nubOrd $ read C.<$> words s
    let t' = nubOrd $ read C.<$> words t :: [Int]
    print $ length $ D.filter (`S.member` s') t'
