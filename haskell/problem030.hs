
main = print $ sum $ [x | (x,y)<- (zip [2..] (map (nthdigs 5) [2..1000000])), x==y]

nthdigs n d = sum $ map (^n) $ digList d

digList :: Integer -> [Integer]
digList = reverse . map (`mod` 10) . takeWhile (/=0) . iterate (`div` 10)
