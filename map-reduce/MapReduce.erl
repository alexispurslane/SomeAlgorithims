-module(mapreduce).
-export([map_reduce/1]).

add_to_key({Key, Value}, Sums) ->  dict:update(Key, fun (Old) ->
                                                        Old + Value
                                                    end, Value, Sums).

map_reduce(Pl) -> dict:to_list(lists:foldl(fun add_to_key/2, dict:new(), Pl)).