-module(ctf).
-export([convert/2]).

convert(to, F) -> (F - 32) * 5 / 9;
convert(from, C) -> ((C * 9) / 5) + 32.