import Data.List

main = print $ head $ dropWhile (not.(same 6)) [1..]

same i x = all (ok.(*x)) [2..i]
           where ok a = (sort(show a)) == (sort(show x))
