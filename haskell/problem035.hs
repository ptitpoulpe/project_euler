import Data.Numbers.Primes                        
import Data.List

-- filtrer les nombres avec 0,2,4,6,8 dedans car ils ne peuvent pas être premier en étant circulé

main = print $ fst $ fun $ last $ takeWhile ((/=[]).snd) $ iterate fun (0, ps) 
       where ps = filter fil $ map (show) $ takeWhile (<1000000) primes
             fun x = circular (head(snd x)) x
             fil x = not $ any (`elem`x) "02468"

circular n (i,l) = if all (`elem`l) circs then (i+(length n), foldl (flip delete) l circs)
                                      else (i, tail l)
                   where circs = map (flip circulate n) [1..(length n)] 

circulate n l = (drop n l)++(take n l)

