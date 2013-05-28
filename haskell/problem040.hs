import Data.List

main = print $ product $ map (\x -> read ((val!!(10^x)):[])) [0..6]

val = concat $ map show [0..]
