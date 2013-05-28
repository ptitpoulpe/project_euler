import Data.List

main = print $ head3 $ head $ dropWhile (not.eq3.head3) tripes
    where eq3 (x,y,z) = x==y && x==z
          tripes = iterate drops (triangles, pentagonals, hexagonals)
          fst (x,y,z) = x

drops ((x:xs), y, z) = (xs,ty,tz)
    where ty = dropWhile (<=x) y
          tz = dropWhile (<=x) z
          
head3 (x:_,y:_,z:_) = (x,y,z)

-- T_(285) = P_(165) = H_(143) = 40755.
triangles   = map (\n -> (n*(n+1))`div`2)   [285..]
pentagonals = map (\n -> (n*(3*n-1))`div`2) [1..]
hexagonals  = map (\n -> (n*(2*n-1)))       [1..]
