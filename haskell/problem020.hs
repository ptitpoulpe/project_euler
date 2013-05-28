main = print $ sum $ map (`mod` 10) $ takeWhile (/=0) $ iterate (`div` 10) $ fact 100

fact x = product [1..x] 

