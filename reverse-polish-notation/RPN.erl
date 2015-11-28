-module(rpn).
-compile(export_all).
to_expr(Str) -> case Str of
                    "+" -> add;
                    "-" -> subtract;
                    "*" -> multiply;
                    "/" -> divide;
                    "^" -> power;
                    "|" -> abs;
                    _Else -> element(1, string:to_integer(Str))
                end.

stack_op(Stack, Op) -> NewStack = lists:reverse(tl(tl(lists:reverse(Stack)))),
                       Lst = lists:reverse(lists:sublist(lists:reverse(Stack), 2)),
                       Result = Op(hd(Lst), hd(tl(Lst))),
                       NewStack ++ [Result].

eval_expr(Expr, Stack) -> case Expr of
                              add -> stack_op(Stack, fun (E, Acc) ->
                                            Acc + E
                                        end);
                              multiply -> stack_op(Stack, fun (E, Acc) ->
                                            Acc * E
                                        end);
                              subtract -> stack_op(Stack, fun (E, Acc) ->
                                            Acc - E
                                        end);
                              divide -> stack_op(Stack, fun (E, Acc) ->
                                            E / Acc
                                        end);
                              power -> stack_op(Stack, fun (E, Acc) ->
                                            math:pow(Acc, E)
                                        end);
                              abs -> NewStack = lists:reverse(tl(tl(lists:reverse(Stack)))),
                                     Lst = lists:reverse(lists:sublist(lists:reverse(Stack), 1)),
                                     Result = abs(hd(Lst)),
                                     NewStack ++ [Result];
                              _Else -> Stack ++ [Expr]
                          end.
rpn(Str) -> hd(lists:foldl(fun eval_expr/2, [], lists:map(fun to_expr/1, string:tokens(Str, " ")))).