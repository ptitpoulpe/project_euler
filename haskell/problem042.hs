import System.IO
import Data.Char
import Data.List

main = do
    withFile "words.txt" ReadMode (\handle -> do
        contents <- hGetContents handle
        let names = map (tail.init) $ split ',' contents
        print $ length $ filter triangleWord names)

split :: (Eq a) => a -> [a] -> [[a]]
split _ [] = []
split c s = sa : (split c (drop 1 sb))
    where (sa, sb) = span (/=c) s

triangleWord w = elem wv $ takeWhile (<=wv) triangles
                 where wv = sum $ map (\c -> (ord c) - (ord 'A') + 1) w

triangles = map (\n -> (n*(n+1))`div`2) [1..]
