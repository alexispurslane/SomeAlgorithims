module Reverse where
myReverse lst = foldr (flip (++) . return) []