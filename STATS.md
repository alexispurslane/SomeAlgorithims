# Round 1: MapReduce
## Statistics

### Lines Of Code
Note: I'm adding blank lines and newlines here and there. The point is not the shortest possible amount of code, but good, idiomatic code that you should write, but as short as possible.
Also, I am comparing the *base* language, with no extra frameworks or libraries. (And no, JavaScript doesn't get a handicap, even though it is a crippled language.)

- JavaScript: 16LOC
- Elixir: 9LOC
- Erlang: 6LOC
- Haskell: 6LOC

Winner: Haskell & Erlang

### Development Speed
Note: This includes looking at documentation and Googling stuff.

- JavaScript: By far the longest, at around 30mins
- Elixir: ~15mins
- Erlang - ~13mins
- Haskell - ~13mins

Winner: Haskell & Erlang

### High-levelness
Note: This is partly a matter of opinion.

- Haskell - the most high-level and easy to understand.
- Elixir - A close second.
- Erlang - A little more low-level, but not too bad.
- JavaScript - Very low-level (I basically had to reimplement an Object type that I could reduce over) and slightly confusing.

Winner: Haskell & Elixir

### Error Message Helpfulness
Note: In order of worst to best.

- Erlang - The pit of insanity. Basically every error is: "Error before end." And thats it.
- JavaScript - Pretty awefully bad.
- Elixir - Really good, with suggestions, but little to no information about where the error happened
- Haskell - Really awesomely good and detailed, and WITH SUGGESTIONS TO BOOT. But definiatly not as good as they could be, especially with the sometimes strange type info.

Winner: Haskell & Elixir

### Syntax Style
Note: In order of worst to best, on a scale of one to ten.

- JavaScript: 3 - Very verbose keywords, lots of syntactic noise (-9), but with a few good ideas sprinkled in there (+2).
- Elixir: 6 - Incosistent and strangly illogical, with many edge-cases (-5). Very clean and not very noisy (+1).
- Erlang: 8 - Sometimes incosistent, with a lazy parser that needs lots of qualifications (-5). Clean, simple, and declarative (+3).
- Haskell: 9.5 - Lots of syntactic sugar that isn't strictly necissary (-0.5). Clean, consistent, no noise, conveinient, easy to read, genius, great type syntax. (+10).

Winner: Haskell & Erlang

### Framework & Library Support
Note: This is a tally from each languages main package site, or, if not that, whatever other most reliable source I could find.
Also, this only counts third-party stuff, not stuff from the STDLIB

- Haskell: 12,063 (From hackage.haskell.org)
- JavaScript: 975 (From javascripting.com)
- Elixir: 864+ (Erlang libraries + Awesome-Elixir library list. This may not be all)
- Erlang: 101 (From ekalinin.github.io/erlang-libs)

Winner: Haskell & JavaScript

## Language Score:

| Language   | Score |
| -----------|------ |
| Haskell    | 6     |
| Erlang     | 3     |
| Elixir     | 2     |
| JavaScript | 1     |
