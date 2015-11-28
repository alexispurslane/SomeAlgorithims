module MapReduce where
import qualified Data.Map as M
mapReduce :: [(String, Int)] -> [(String, Int)]
mapReduce = M.toList . foldl addToKey M.empty
    where addToKey hl (k, v) = M.insertWith (+) k v hl