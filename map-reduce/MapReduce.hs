module MapReduce where
import qualified Data.Map as M

mapReduce :: [(String, Int)] -> [(String, Int)]
mapReduce = foldl addToKey []
    where addToKey hl (k, v) = M.toList . M.insertWith (+) k v $ M.fromList hl