
main = print $ score 200 currencies

score _ [] = 0
score n (c:cs)
    | nc==0     = 1 + (score n cs)
    | nc>0      = (score nc (c:cs)) + (score n cs)
    | otherwise = (score n cs)
    where nc = n-c

currencies = [200,100,50,20,10,5,2,1]
