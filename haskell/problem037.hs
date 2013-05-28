import Data.List
import Data.Numbers.Primes

main = print $ sum $ take 11 $ filter truncatable $ dropWhile (<10) primes 

truncatable x = all (isPrime.read) $ (init (tails sx)) ++ (tail (inits sx))
    where sx = show x

