import Data.Numbers.Primes
import Data.List
-- TODO

main = print $ filter (sta) [1..28123]
       where sta n = not $ any id [n==(x+y)| 
                      x <- (takeWhile (<n) abons),
                      y <- (takeWhile (<(n-x)) (dropWhile (<x) abons))]
             sta' = nub $ [x+y | x <- abons, y <- filter (>=x) abons]
             abons = filter abondant [1..28123]



abondant x = (sum (properDivs x)) > x

properDivs x = init $ sort $ nub $ fx $ 1:(primeFactors x)
               where fx []= []
                     fx (x:xs) = x:fxs ++ map (*x) fxs where fxs = fx xs
