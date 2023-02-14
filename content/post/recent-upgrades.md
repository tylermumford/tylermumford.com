+++
title = "Recent Upgrades on the CLI"
date  = 2023-02-14T15:27:01-07:00
draft = true
Description = "Upgrading to better tools"
+++

Inspired by Julia Evans's article, [A list of new(ish) command line tools][article], I have made many upgrades to my command line toolbelt recently.

[article]: https://jvns.ca/blog/2022/04/12/a-list-of-new-ish--command-line-tools/

<!--more-->

## My Three Champions

- Make ➡️ [Just][]
- bash ➡️ zsh ➡️ PowerShell ➡️ [Nushell][]
- (nothing) ➡️ [Scoop][]

[Just]: https://just.systems
[Nushell]: https://www.nushell.sh
[Scoop]: https://scoop.sh

Just is like Make, but way better, because you don't have to declare `.PHONY` everywhere. It's command-oriented instead of being input-output-file-oriented like Make. It has great features like doc comments, parameters, and OS-specific recipe implementations.

Confession time... I still fear/loathe the syntax of shell scripts for anything with a cyclomatic complexity greater than one. That's part of why I love PowerShell: super usable as a shell, but with a familiar-looking programming language built in. (And holy crap, I hope I never have to touch `cmd.exe` again.)

But *Nushell* has all the advantages of PowerShell with two more big advantages: brevity and Unix-y-ness. It's the shell of my dreams. 💖

Finally, Scoop is the package manager that makes Windows actually easy to like. So many great tools are available, only one `install` command away. It's just as good as Homebrew, in my opinion.

## Even more

That's not all. Here are some more upgrades I've made lately (and some not so lately).

- cat ➡️ bat
- grep ➡️ ripgrep
- find ➡️ fd
- man ➡️ tldr (sort of)
- cd ➡️ z

And for some super opinionated upgrades:

- Regular text editing ➡️ Vim-mode everywhere
- Hugo ➡️ makesite.py ➡️ Zola

## What makes a good tool?

Docs. Seriously, great documentation is the telltale sign of a great tool.

The only thing better than a great tool with great docs is a great tool that's so simple, its built-in help is sufficient. That's the case with the new generation of single-purpose tools like `bat`, `rg`, and `fd`.

Apart from that, yeah, ease of use, features, speed, all that stuff is important, too.

### Rust?

(A lot of these new tools are written in Rust. New languages really do enable new patterns of thinking. Try lots of programming languages.)
