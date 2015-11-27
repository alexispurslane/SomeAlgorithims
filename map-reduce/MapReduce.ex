defmodule MapReduce do
    def map_reduce(kl) do
         Enum.reduce(kl, [], fn(kv, acc) ->
            Keyword.merge([kv], acc, fn (_k, v1, v2) ->
                v1 + v2
            end)
         end)
    end
end