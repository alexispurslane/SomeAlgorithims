module RPN where -- 20mins
rpn :: String -> [Int]
rpn = foldl evalExpr [] . words
    where evalExpr stack str = case str of
                                    "+" -> stackDrop stack ++ [uncurry (+) . tuple2 . stackTake $ stack]
                                    "-" -> stackDrop stack ++ [uncurry (-) . tuple2 . stackTake $ stack]
                                    "*" -> stackDrop stack ++ [uncurry (*) . tuple2 . stackTake $ stack]
                                    "/" -> stackDrop stack ++ [uncurry (/) . tuple2 . stackTake $ stack]
                                    "^" -> stackDrop stack ++ [uncurry (^) . tuple2 . stackTake $ stack]
                                    "|" -> init stack ++ [abs (last stack)]
                                    otherwise -> stack ++ [read str :: Int]
          tuple2 [x,y] = (x,y)
          stackDrop = reverse . drop 2 . reverse
          stackTake = reverse . take 2 . reverse