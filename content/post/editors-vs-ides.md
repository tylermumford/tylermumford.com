+++
title = "Editors vs IDEs"
date = 2022-12-31T16:38:19-07:00
Description = ""
draft = true
+++

This post is about a [conversation I had on
Reddit](https://www.reddit.com/r/csharp/comments/yxq6tt/comment/iwqx5b6/?utm_source=share&utm_medium=web2x&context=3).
The full context is difficult to convey, but I want to elaborate on the differences I see
between full-blown IDEs like Visual Studio and text editors like VS Code and Neovim.

This is all based on my own opinion as a professional software developer. I use these
tools a lot, but I'm not an expert in anyone's opinion but my own.

For context, right now I use Neovim as my general purpose text editor, and I use
Visual Studio for working on the big C# projects at my company.

### Files vs Features

The central point I made in that Reddit comment, and the newest insight for me, is that
IDEs like Visual Studio are about their features, not about your files.

VS, by default, doesn't show you a file explorer. It shows you a Solution Explorer. Files
are a big part of that, but they're abstracted away behind Projects and Solutions. These
are IDE features that get in the way of editing your code.

VS, by default, tries to prevent you from editing your project files by hand. There are
Microsoft docs that show you how to edit these files, so they're clearly meant to be
human-editable and not just machine-generated. But VS gets in your way and tries to always
open its GUI editor by default.

VS has over 40 panes/windows for its features, and over 20 toolbars. It has GUI designers,
code-behind files, hundreds of Add -> New Item templates, and...

Wait. This isn't a problem with Visual Studio. This was a problem with Microsoft's software
development philosophy prior to .NET 5.

### Reputation

Before I started using it professionally, my impression of Visual Studio was that it was a
high-end, high-powered, luxury tool. Too advanced, too expensive for "beginners like me."

(To be fair, my impression of Vim was also that it was intimidating, but in a different direction. Vim
struck me as an arcane, almost mystical tool. Learnable only by those who had grown up on
the command line. Now, I use and enjoy it.)

But text editors like Sublime Text and VS Code are far more welcoming. They're "just text
editors," and anyone can edit text. I think this makes them more approachable for beginners.

When you open Visual Studio, you see a project template picker and dozens of toolbar
buttons. When you open a good text editor, you see a text area for code. What do tutorials
show? Code.


