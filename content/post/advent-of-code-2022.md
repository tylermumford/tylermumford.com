+++
title = "Advent of Code 2022"
date = 2022-12-31T13:32:00-07:00
Description = ""
Tags = ["Programming"]
+++

This year, I discovered Advent of Code, and it's been a ton of fun! I want to write about
my experience with the puzzles. While this has the potential to mostly be me rambling on,
I'll try to make it interesting.

I'm not trying to speed through these puzzles or even solve them the night they come out.
I work on most of them days after they're released.

So far, I've used Go, Lua, C#, and Python. I've written about each one below.

### How did I learn about Advent of Code?

I was browsing the old posts of tonsky.me, and I read this article: [It is fast or it is
wrong](https://tonsky.me/blog/slow-wrong/). Bam, right at the top, Advent of Code (AoC). I
decided to check it out.

### General impressions of AoC

I really enjoy the playful stories. They may seem silly to others, but I think they make
each problem more interesting and more fun. (I have three small kids; I see more silly,
illogical nonsense in a day than all of AoC's stories put together.)

For me, the puzzles definitely started easy and got harder. I solved the first few days'
puzzles pretty easily, but since day 5 or 6, puzzles are taking me several hours to
solve each puzzle. This seems to match with what the creator of AoC intended.

I haven't done many other programming puzzles/competions. Just a handful, including one in
person. AoC seems more focused on providing puzzles that are interesting on their own,
rather than puzzles that are merely interesting because they are difficult. I really
appreciate this.

### Multiple languages

#### Go

I solved the first five puzzles in Go, which is generally my favorite language. Go is
pretty well suited to those puzzles, in my opinion. I took advantage of easy unit testing,
the built-in JSON library, and the ability to easily split up code into multiple files
without complicated importing rules.

(This deserves another blog post, but I find that Go isn't very well suited to creating
"small abstractions." In C#, I would just write a class to encapsulate some concepts. In
Go, I feel like I have to write a whole package to get that same enforced encapsulation.)

(I thought I would like the type aliasing feature as a way to avoid Primitive Obsession.
For example, writing `type move string` to keep track of which `string` values were
actually rock-paper-scissors `move` values. But it turns out the compiler can only infer
so many "levels" of this indirection, so suddenly I encountered problems such as being
unable to pass a `[][]move` where a `[][]string` was expected. So in practice, this feature
was more annoying than helpful.)

#### Lua

Then I decided to learn Lua for the first time, so I solved days six and seven in Lua.

Lua is interesting. It's fast, and the language itself is simple. Huh, I guess it's quite
similar to Go in that respect. The one-based tables and functions threw me off sometimes,
but they are actually a perfect fit for some AoC problems!

Looking back and reading these programs now, they're still pretty easy to understand.
There isn't much code. The language is flexible and expressive enough to write concise,
readable code. I could definitely improve my code, though, by getting a better
understanding of unit testing, tables, and splitting Lua code into multiple files. Still,
it was fun for AoC, and I'm very happy to have it in my toolbelt now.

(LuaRocks was also super easy to use. I downloaded a profiler tool and used it to find a
problem with my day 7 solution.)

#### C#

Because C# is my primary language at work, I didn't reach for it until day 10. Day 10 is
still the only puzzle I've solved with C#.

I used a mix of Visual Studio for Mac and VS Code. I feel like VS for Mac is a good
product, and it works well, but I simply tend to prefer editors to IDEs. VS Code is a good
option for macOS C# development.

With both VS and VS Code, however, I noticed that my laptop's battery was running out
*much* more quickly than when I was working with Go or Lua. But take this with a grain of
salt, because this is totally subjective, and I don't have any numbers to back it up. It
was clear enough to me, though. I switched to using other languages and Neovim to save
battery power, and I've noticed that my laptop lasts longer. (2015 MacBook Pro--kind of
old these days.)

One of my biggest pet peeves with C#, compared to Go, is the unit testing story. (This is
from the perspective of text editors and the command line, not as much with IDEs like VS.)
When I want to create unit tests with XUnit, I need to `dotnet new` a whole new project,
either in a sub-directory or a sibling directory of the main code under test. If it's a
sub-directory, I need to manually make sure all its files are ignored from the "real"
project's compilation. If it's in a sibling directory, I usually end up needing to shuffle
files around and add project references and a solution and... it's just so much paperwork.

With Go, I just create a `_test.go` file in the same package, same directory, as my code
under test. It's so much simpler. I suspect this stems from my mental model of "files and
commands" and how that clashes with the more-common-in-C#-land mental model of "IDE
features and projects."

#### Python

Python is fun! I've used it for small projects here and there over the years, but it's
never been one of my main languages. I'm glad I chose to try it again for AoC. I've done
puzzles for days 8, 9, 11, and 25 so far.

I feel like the list comprehension syntax was always so hard for me to remember before.
Now that I'm more experienced (and probably paying more attention), it makes perfect
sense. I enjoy writing list comprehensions to express a concept in a single line.

The dependency management story is... something I still don't love about Python. `venv`
might be simple for simple projects, but it seems like there's a big missing set of
solutions between `venv` and Docker. And... am I missing something, or could this be super
simple? "Make the Python interpreter automatically look for a virtual env, and use it if
it's there, whenever running a Python file." Is it more complicated than that? Why do I
have to "activate" environments? Node and Go don't make me do that.

Also, when using Python, I have to add an import statement at the top of each file when I
want to use something defined in a sibling file. I find this kind of annoying, coming from
Go. Am I missing something? It is very explicit and clear, which matches what I've seen in
other choices Python makes.

### Conclusion

Advent of Code 2022 has been a lot of fun for me. I only have about 21 stars so far, but I
plan to get a few more here and there. Oh, and the subreddit has been fun, too.

I've enjoyed using the puzzles as practice for learning Lua. I might also try some other
languages, like Haskell or Ruby or Clojure. I'd also like to try doing some
visualizations, though that's an area where I have very little experience.

Happy coding, and Happy New Year! ⭐️

