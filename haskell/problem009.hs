import Data.List


main = print $ product $ head [ [a,b,1000-a-b] | a <- [1..1000],
                                                 b <- [a..(667-a)],
                                 a*a + b*b == (1000-a-b)*(1000-a-b)]

