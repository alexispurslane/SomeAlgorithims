module PQsort where
import Control.Parallel (par, pseq)

qsort []	= []
qsort (x:xs) =  force small `par` (force large `pseq` (small ++ x:large))
    where small = qsort [y | y <- xs, y <= x]
          large = qsort [y | y <- xs, y > x]
          force xs = go xs `pseq` ()
              where go (_:xs) = go xs
                    go [] = 1