function rpn(string) {
    function stackOperation (stack, operation) {
        var args = stack.slice(Math.max(stack.length - 2, 1));
        var newStack = stack.slice(0, stack.length - 2);
        return newStack.concat([operation.apply(null, args)]);
    }
    
    return string.split(" ").reduce(function (stack, expr) {
        switch (expr) {
            case "+":
                return stackOperation(stack, (x, y) => x + y)
                break;
            case "-":
                return stackOperation(stack, (x, y) => x + y)
                break;
            case "*":
                return stackOperation(stack, (x, y) => x + y)
                break;
            case "/":
                return stackOperation(stack, (x, y) => x + y)
                break;
            case "^":
                return stackOperation(stack, (x, y) => x + y)
                break;
            case "|":
                return stackOperation(stack, (x, y) => x + y)
                break;
            default:
                stack.concat([parseInt(expr, 10)])
                break;
        }
    }, []);
}