defmodule PQsort do
    def pqsort(parent, []), do: send(parent, {self(), []})
    def pqsort(parent, [head | tail]) do
        pid_one = spawn_link(PQsort, :pqsort, [self(), (for x <- tail, head >= x, do: x)])
        pid_two = spawn_link(PQsort, :pqsort, [self(), (for y <- tail, head < y, do: y)])
        receive do
            {^pid_one, small_list} ->
                receive do
                    {^pid_two, large_list} -> send(parent, {self(), small_list ++ [head] ++ large_list})
                end
            {^pid_two, large_list} ->
                receive do
                    {^pid_one, small_list} -> send(parent, {self(), small_list ++ [head] ++ large_list})
                end
        end
    end
    def pqsort(list), do: elem(pqsort(self(), list), 1)
end