+++
title = "Advent of Code 2022"
date = 2022-12-31T13:32:00-07:00
Description = ""
Tags = ["Programming"]
draft = true
+++

This year, I discovered Advent of Code, and it's been a ton of fun! I want to write about
my experience with the puzzles. While this has the potential to mostly be me rambling on,
I'll try to make it interesting.

I'm not trying to speed through these puzzles or even solve them the night they come out.
I work on most of them days after they're released.

So far, I'ved used Go, Lua, C#, and Python. I've written about each one below.

### How did I learn about Advent of Code?

I was browsing the old posts of tonsky.me, and I read this article: [It is fast or it is
wrong](https://tonsky.me/blog/slow-wrong/). Bam, right at the top, Advent of Code (AoC). I
decided to check it out.

### General impressions of AoC

I really enjoy the playful stories. They may seem silly to others, but I think they make
each problem more interesting and more fun. (I have three small kids; I see more silly,
illogical nonsense in a day than all of AoC's stories put together.)

For me, the puzzles definitely started easy and got harder. I solved the first few days'
puzzles pretty easily, but after about day 5 or 6, it started taking me several hours to
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

I used a mix of Visual Studio for Mac and VS Code.

Battery life

Unit testing

#### Python

Fun again

Dependency management

I miss how you can split files up in Go

