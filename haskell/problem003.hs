import Data.Numbers.Primes

main = print $ last $ factors 600851475143

factors n = factors' n 0
factors' n x  
    | cp*cp > n = [n]
    | ((mod n cp) == 0) = cp : (factors' (div n cp) x)
    | otherwise = (factors' n (x+1))
    where cp = primes!!x
