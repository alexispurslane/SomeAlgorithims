-module(rpn). % Two hours.
-export([rpn/1]).

stack_op(Stack, Op) -> NewStack = lists:reverse(tl(tl(lists:reverse(Stack)))),
                       Lst = lists:reverse(lists:sublist(lists:reverse(Stack), 2)),
                       Result = Op(hd(Lst), hd(tl(Lst))),
                       NewStack ++ [Result].

eval_expr(Expr, Stack) -> case Expr of
                              "+" -> stack_op(Stack, fun (E, Acc) -> Acc + E end);
                              "*" -> stack_op(Stack, fun (E, Acc) -> Acc * E end);
                              "-" -> stack_op(Stack, fun (E, Acc) -> Acc - E end);
                              "/" -> stack_op(Stack, fun (E, Acc) -> E / Acc end);
                              "^" -> stack_op(Stack, fun (E, Acc) -> math:pow(Acc, E) end);
                              "|" -> NewStack = lists:reverse(tl(tl(lists:reverse(Stack)))),
                                     Lst = lists:reverse(lists:sublist(lists:reverse(Stack), 1)),
                                     Result = abs(hd(Lst)),
                                     NewStack ++ [Result];
                              _Else -> Stack ++ [string:to_integer(Expr)]
                          end.

rpn(Str) -> lists:foldl(fun eval_expr/2, [], string:tokens(Str, " ")).