
import Data.List

main = print $ maximum $ map (\x -> (reccycle x, x)) [1..1000]

reccycle n = i - x
    where (i,x) = head $ dropWhile (\(i,x) -> (x==i)) $ zip [0..] cycles
          cycles = map (\x -> (t(elemIndex (x) dn))) dn
          dn = digits n
          t Nothing = 0
          t (Just n) = n

digits n = iterate (divs n) (0,1)

divs n (x,y) = (10*y)`divMod`n
