
main = print $ sum $ map (`mod` 10) $ takeWhile (/=0) $ iterate (`div` 10) $ floor $ 2**1000
