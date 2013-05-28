
main = print $ snd $ head $ dropWhile ((<m).fst) $ zip fibs [0..]
       where m = 10^999

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
