
main = print $ sum $ filter f [1..b]
       where f n = (n==((amicable . amicable) n)) && 
                   ((amicable n) < b) &&
                   ((amicable n) /= n)
             b = 10000

amicable :: Int -> Int
amicable = sum . proper

proper n = filter ((==0).(n `mod`)) [1..(n `div` 2)]
