import Data.List(maximumBy)
import Data.Ord(comparing)

s n | even n    = n `div` 2
    | otherwise = 3 * n + 1

se 1 = 1
se n = 1 + se (s n)

ls n = zip [2..n] (map se [2..n])

maxi = maximumBy (comparing snd)

main = print $ fst (maxi $ ls 1000000)

