import Data.List

main = putStr $ unlines $ map archeo [1..(10000)]

archeo :: Int -> [Char]
archeo x = if (l==32) then "error" else show (l+1)
           where l = length $ takeWhile t bins
                 t y = not ( ((length (show x)) < (((length y)`div`2)+((length y)`mod`2))) &&
                             (isPrefixOf (show x) y) )

bins :: [[Char]]
bins = map (show.(2^)) [1..32]
