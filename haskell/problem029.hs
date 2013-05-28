import Data.List

main = print $ length $ nub [a^b | a <- [2..n], b <- [2..n]]
       where n = 100
