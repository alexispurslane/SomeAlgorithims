defmodule Reverse do
    def reverse(list) do
        List.foldr(list, [], fn (x, acc) ->
            acc ++ [x]
        end)
    end
end