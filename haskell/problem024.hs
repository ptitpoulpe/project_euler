import Data.List

main = print $ concat $ map show $ (permutations' [0..9]) !! 999999

permutations' [] = [[]]
permutations' l = concat $ map newperms l 
    where subperms x = permutations' (delete x l)
          newperms x = map (x:) $ subperms x


--main = print $ foldl (func) (1000000, []) [9..1]

func (i,t) n = ((last l) + (fact !! n), (length l):t) 
       where l = takeWhile (>0) $ iterate (\x -> x - (fact !! n)) i

fact :: [Int]
fact = scanl (*) 1 [2..]
