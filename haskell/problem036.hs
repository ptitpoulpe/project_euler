
main = print $ sum [x | x <- [1..1000000], 
                        palindrome (base 10 x), 
                        palindrome (base 2 x)]

base i n = map (`mod` i) $ takeWhile (/=0) $ iterate (`div` i) n

palindrome n = reverse n == n
