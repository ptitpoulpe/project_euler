
main = print $ maximum $ map (\x -> (se x, x)) [1..1000000]

s n | even n    = n `div` 2
    | otherwise = 3 * n + 1 

se 1 = 1
se n = 1 + (se (s n))
