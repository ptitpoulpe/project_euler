
main = print $ sum $ filter (eqfact) [3..10^maxlen]
       where  maxlen = length $ takeWhile (\n -> (fact!!9)*n > (10^n-1)) [1..]

eqfact i = i == (sum (map (\x -> fact!!x) (base 10 i)))

base i n = map (`mod` i) $ takeWhile (/=0) $ iterate (`div` i) n

fact = [1] ++ scanl (*) 1 [2..]
