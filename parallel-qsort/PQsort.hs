module PQsort where
import Control.Parallel

qsort [] = []
qsort (x:xs) = small `par` (large `pseq` (small ++ (x : large)))
    where small = [y | y <- xs, y <= x]
          large = [y | y <- xs, y > x]