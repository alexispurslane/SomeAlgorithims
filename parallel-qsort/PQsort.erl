-module(pqsort).
-export([pqsort/1]).

pqsort_worker(Listener, []) -> Listener ! {self(), []};
pqsort_worker(Listener, [H | T]) ->
    PID_1 = spawn_link(pqsort, fun pqsort_worker/2, [self(), [ X || X <- T, H >= X ]]),
    PID_2 = spawn_link(pqsort, fun pqsort_worker/2, [self(), [ Y || Y <- T, H < Y ]]),
    receive
        {PID_1, List_1} ->
            receive
                {PID_2, List_2} -> Listener ! {self(), List_1 ++ [H] ++ List_2}
            end;
        {PID_2, List_2} ->
            receive
                {PID_1, List_1} -> Listener ! {self(), List_1 ++ [H] ++ List_2}
            end
    end.

pqsort(List) -> element(2, pqsort_worker(self(), List)).