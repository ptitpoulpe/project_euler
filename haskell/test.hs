import System( getArgs )

mysum term [] = 0
mysum term (x:xs) = (term x) + (mysum term xs)
mysumr term list = foldr (+) 0 list
mysuml term list = foldl (+) 0 list

main = print $ ((sum [1..1000000]))

--main = do
--  [arg] <- getArgs
--  putStrLn $ show $ mysuml id [1..read arg]
