+++
title = "Space Trader Journal 2"
date = 2017-10-31T15:35:00-07:00
Description = ""
Tags = ["Writing", "Space Trader Returns"]
+++

Here’s my current plan for the code of Space Trader Returns.
Space Trader is written in C, and I want to rewrite it in Go. These two languages have fairly similar syntax, and I think Go can express all the same concepts as C (and then some). So I’m converting the source files, mostly by hand.

I’d love to design the perfect architecture for this before writing a single line of code, and I’d love to rewrite everything from scratch rather than tweaking C source code. But that would be the wrong approach, I think.

Everything I’ve learned about software development tells me that initial designs are always, to some degree, eventually, wrong. Always. The only way to have the right code is to iterate and refactor it along the way. It’s like moulding clay—you start with a rough shape and gradually refine it until you get it right.

I’ve already started converting a few of the original source files, and it’s not too difficult. Sublime Text’s multiple cursors and macros save me from most of the tedium. The trickiest thing so far is that the original code used function-like macros, which don’t specify data types, but Go requires specified types, and it doesn’t support generics. Feel free to mock Go for its most widely criticized shortcoming if you wish. I’m not concerned about this being a problem.

I’m currently handling these function-like macros by just using a specific type, like `int`, in a normal Go function. If I run into cases where I need a more generic approach, I can add new versions of the functions or do some type switching acrobatics. It might not be pretty, but it’ll be isolated to just a few parts of the codebase.

Non-function `#define` statements are easy to convert, because Go constants don’t require specified types. Structs are also pretty straightforward. Type aliases have allowed me to quickly define convenient shortcuts from C-named types like `long` and `Boolean`.

Anyway, for the moment, I’m just focusing on syntax correctness. Along the way, I’m watching the attempted build output and making sure things don’t get too out of hand. There are some undefined external functions that I’ll have to handle at some point, but I’ll worry about that once I have syntactically correct Go files.

Aside: gofmt really ought to handle braces being anywhere instead of throwing an error. It’s silly that I have to format a file correctly before the formatting tool will finish the job.
