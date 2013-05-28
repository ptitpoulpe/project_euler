import Data.List

main = print $ length $ filter (==(1,1)) $ drop 365 $ zip days years

expand l = concat $ map (\x -> [1..x]) l

days = drop 1 $ cycle [1..7]
years = concat $ map bis [1900..2000]
        where bis x = if ((mod x 4)==0) && (((mod x 100)/=0) || ((mod x 400)==0))
                      then months_bis
                      else months_nor

months_nor = expand [31,28,31,30,31,30,31, 31,30,31,30,31]
months_bis = expand [31,29,31,30,31,30,31, 31,30,31,30,31]

