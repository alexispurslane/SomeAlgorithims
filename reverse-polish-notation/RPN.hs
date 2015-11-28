module RPN where -- 20mins
data Expr = Number Int
                | Add
                | Subtract
                | Multiply
                | Divide
                | Power
                | Abs
type Exprs = [Expr]

rpn :: String -> [Int]
rpn = foldl evalExpr [] . words
    where evalExpr stack str = case toExpr str of
                                    Number i -> stack ++ [i]
                                    Add -> stackDrop stack ++ [sum . stackTake $ stack]
                                    Subtract -> stackDrop stack ++ [foldl (-) 0 (stackTake stack)]
                                    Multiply -> stackDrop stack ++ [product (stackTake stack)]
                                    Divide -> stackDrop stack ++ [foldr div 1 (stackTake stack)]
                                    Power -> stackDrop stack ++ [foldl (^) 1 (stackTake stack)]
                                    Abs -> (reverse . drop 1 . reverse $ stack) ++ [abs . head $ (reverse . take 1 . reverse $ stack)]
                                    otherwise -> stack
          toExpr x = case x of
                         "+" -> Add
                         "-" -> Subtract
                         "*" -> Multiply
                         "/" -> Divide
                         "^" -> Power
                         "|" -> Abs
                         otherwise -> Number . read $ x
          stackDrop = reverse . drop 2 . reverse
          stackTake = reverse . take 2 . reverse