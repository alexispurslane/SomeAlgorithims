defmodule RPN do
    def rpn (string) do
        List.foldl(String.split(string, " "), [], fn (expr, stack) ->
            case expr do
                "+" -> stack_op(stack, fn (e, acc) -> acc + e end)
                "*" -> stack_op(stack, fn (e, acc) -> acc * e end)
                "-" -> stack_op(stack, fn (e, acc) -> acc - e end)
                "/" -> stack_op(stack, fn (e, acc) -> e / acc end)
                "^" -> stack_op(stack, fn (e, acc) -> acc + e end)
                "|" -> stack_op(stack, fn (e, acc) -> acc + e end)r
            end
        end)
    end
end