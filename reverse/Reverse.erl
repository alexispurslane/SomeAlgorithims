-module(reverse).
-export([reverse/1]).
reverse(List) -> lists:foldl(fun(X, Sum) ->
                                 lists:flatten([X, Sum])
                             end, [], List).