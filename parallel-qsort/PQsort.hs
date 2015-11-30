module PQsort where
import Control.Parallel (par, pseq)

qsort []	= []
qsort (x:xs) =  force small `par` (force large `pseq` (small ++ mid ++ large))
    where small = qsort [y | y<-xs, y<x]
          mid   = [y | y<-xs, y==x] ++ [x]
          large = qsort [y | y<-xs, y>x]
          force xs = go xs `pseq` ()
              where go (_:xs) = go xs
                    go [] = 1