import Data.Numbers.Primes
import Data.List

main = print $ head $ dropWhile fil $ map (\x -> (x, divs x)) triangles
       where fil (i,ds) = ds<500
             divs x = foldl (\x y -> x * (length y + 1)) 1 $ group $ primeFactors x

triangles = scanl (+) 1 [2..]
