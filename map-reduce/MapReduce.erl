-module(mapreduce).
-export([map_reduce/1]).

add_to_key(KV, Sum) -> {Key, Value} = KV,
                       Tmp = proplists:get_value(Key, Sum, 0),
                       lists:append([{Key, Value + Tmp}], proplists:delete(Key, Sum)).

map_reduce(Pl) -> lists:foldl(fun add_to_key/2, [], Pl).