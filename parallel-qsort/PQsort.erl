-module(pqsort).
-export([pqsort/1]).

pqsort([]) -> [];
pqsort([Pivot|Rest]) ->
    Left = [X || X <- Rest, X < Pivot],
    Right = [Y || Y <- Rest, Y >= Pivot],
    peval(fun pqsort/1, Left) ++ [Pivot] ++ peval(fun pqsort/1, Right).

peval(Fun, Args) ->
    Pid = spawn_link(fun() -> wait() end),
    Pid ! {self(), Fun, Args},
    receive
        {Pid, R} -> R
    end.

wait() ->
    receive
        {From,Fun,Args} ->
            From ! {self(), Fun(Args)}
    end.