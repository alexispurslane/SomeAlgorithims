defmodule CTF do
    def convert(:to, f) do
         (f - 32) * 5 / 9
    end
    def convert(:from, c) do
        ((c * 9) / 5) + 32
    end
end