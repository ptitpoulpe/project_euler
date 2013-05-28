main = putStrLn $ show $ maximum $ filter (palindrome)  [a*b | a <- [900..999], b <- [900..999]]

palindrome n = reverse x == x where x = show n
