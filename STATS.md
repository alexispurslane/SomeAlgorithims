# Round 1: MapReduce
## Statistics

### Lines Of Code
Note: I'm adding blank lines and newlines here and there. The point is not the shortest possible amount of code, but good, idiomatic code that you should write, but as short as possible.
Also, I am comparing the *base* language, with no extra frameworks or libraries. (And no, JavaScript doesn't get a handicap, even though it is a crippled language.)

- JavaScript: 16LOC
- Elixir: 9LOC
- Erlang: 6LOC
- Haskell: 5LOC

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

# Round 2: Multi-directional Temperature Converter
## Statistics

### Lines Of Code
- Haskell: 3LOC
- Erlang: 5LOC
- JavaScript: 7LOC
- Elixir: 8LOC

Winner: Haskell

### Development Speed
- Haskell: ~1min
- Erlang: ~2min (I had to figure out wether a non-caps name is an atom. This confused me slightly)
- JavaScript: ~2mins (Mostly becouse I knew the language better than the other two, and most of the time it was just typing)
- Elixir: ~4min (I was confused by the single-line function syntax, and needed to look up how to use atoms)

Winner: Haskell

### High-levelness

Ok, this time, Elixir, Erlang, and Haskell had pretty much the same code, with a few minor syntax differences (In Haskell, I also had to use strings instead of atoms, and becouse of that, Haskell loses this round by a bit.)

- Erlang
- Haskell
- Elixir
And, way lower than those three:
- JavaScript

Winner: Erlang

### Error Message Helpfulness

I actually had some errors with Elixir and Erlang. For Erlang, it was a tiny mistake with forgetting that the `export` keyword takes an array. With Elixir, it was a syntactic error with forgetting an `end` statement. In both cases, they majorly failed to give any useful information.

Winner: Haskell

# Overall Remarks

### Syntax Style
Note: In order of worst to best, on a scale of one to ten.

- JavaScript: 5 - Very verbose keywords, lots of syntactic noise (-9), but with a few good ideas sprinkled in there (+4).
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

Winner: Haskell
Becouse JavaScript has a very heft amount of libraries, and seems to be way ahead of both Elixir and Erlang, I'm going to give good ol' JS a **consolation prize**

# Round 3: Reverse-Polish-Notation Calculator
## Statistics

### Lines Of Code
- Haskell: 14LOC
- Elixir: 18LOC
- Erlang: 19LOC
- JavaScript: 33LOC

Winner: Haskell

### Development Speed
- Haskell: ~12mins
- Elixir: ~12min
- JavaScript: ~15mins
- Erlang: ~2hrs

Winner: Haskell & Elixir

### High-levelness

- Haskell
- Elixir
- Erlang

And, way lower than those three:
- JavaScript

Winner: Haskell

### Error Message Helpfulness

Erlang's error messages are just plain evil!

Winner: Haskell

# Round 4: Parallel Qsort
Note: For Haskell, where the parallel STDLIB is optional, you may have to install it. It is part of the core library, but it is not distributed sometimes.
Also, for JavaScript, which doesn't nativly support any parallel processing at all, I'm allowing it to cheat and use a 3rd party library, ParallelJS.


# Overall Remarks

### Syntax Style
Note: In order of worst to best, on a scale of one to ten.

- JavaScript: 5 - Very verbose keywords, lots of syntactic noise (-9), but with a few good ideas sprinkled in there (+4).
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

Winner: Haskell
Becouse JavaScript has a very heft amount of libraries, and seems to be way ahead of both Elixir and Erlang, I'm going to give good ol' JS a **consolation prize**

# Language Score:

| Language   | Score |
| -----------|------ |
| Haskell    | 12    |
| Erlang     | 4     |
| Elixir     | 3     |
| JavaScript | 0.5   |
