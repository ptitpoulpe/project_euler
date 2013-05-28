import Data.Numbers.Primes

main = print $ b*c
       where (a,b,c) = maximum $ [(nprime (quad a b), a, b)|
                                  a <- [-1000..1000],
                                  b <- (takeWhile (<1000) primes) ]

nprime f = length $ takeWhile (\x -> x == (head (dropWhile (<x) primes))) $ map f [0..]

quad a b n = n^2 + a*n +b
