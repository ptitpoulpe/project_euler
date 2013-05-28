import Test.QuickCheck
import Data.List(permutations)
import Data.List(sortBy)
import Data.Function(on)
import Ratio((%))

cost ps = cost' 0 ps
  where cost' t []       = 0
        cost' t ((d,r):ps) = r*t + cost' (t+d) ps

sol ps = head $ sortBy (compare `on` cost) (permutations ps)

louche = sortBy (compare `on` (uncurry (%)))

gen :: Gen (Int,Int)
gen = do
  n <- arbitrary `suchThat` (>0)
  m <- arbitrary `suchThat` (>0)
  return (n,m)

prop = forAll (listOf gen) $ \ps -> (cost (sol ps) == cost (louche ps))

main = quickCheckWith (stdArgs { maxSize = 10 })  prop
