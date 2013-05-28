import Data.List
import System.IO

main = do
    withFile "triangle.txt" ReadMode (\handle -> do
        contents <- hGetContents handle
        let nums = map (map read.words) $ lines contents
        print $  maxpath $ reverse nums)


maxpath [x] = x
maxpath (x:y:ys) = maxpath $ my : ys
                   where my = zipWith3 (\y x x' -> y + (max x x')) y x (drop 1 x)


