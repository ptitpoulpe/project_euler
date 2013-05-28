import Data.List

main = print $ sum $ takeWhile (<=1001^2) $ scanl (+) 1 $ suite

suite = concat $ map (replicate 4) [2,4..]
suite' x = x:x+3:(suite' (x+4))

