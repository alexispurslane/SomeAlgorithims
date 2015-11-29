defmodule RPN do
    defp stack_op(stack, op) do
        Enum.drop(stack, -2) ++ [apply(op, Enum.take(stack, -2))]
    end
    def rpn (string) do
        List.foldl(String.split(string, " "), [], fn (expr, stack) ->
            case expr do
                "+" -> stack_op(stack, fn (x, y) -> x + y end)
                "*" -> stack_op(stack, fn (x, y) -> x * y end)
                "-" -> stack_op(stack, fn (x, y) -> x - y end)
                "/" -> stack_op(stack, fn (x, y) -> x / y end)
                "^" -> stack_op(stack, fn (x, y) -> x ^ y end)
                "|" -> stack_op(stack, fn (x, _) -> Kernel.abs(x) end)
                other -> stack ++ [String.to_integer(expr)]
            end
        end)
    end
end