import System.IO
import Data.Char
import Data.List

main = do
    withFile "names.txt" ReadMode (\handle -> do
        contents <- hGetContents handle
        let names = map (tail.init) $ split ',' contents
        print $ sum $ scores names)
    

split :: (Eq a) => a -> [a] -> [[a]]
split _ [] = []
split c s = sa : (split c (drop 1 sb))
    where (sa, sb) = span (/=c) s

scores l =  zipWith (\x y -> (score x) * y) (sort l) [1..]

score = sum . map (\x -> (ord x) - (ord 'A') + 1)
