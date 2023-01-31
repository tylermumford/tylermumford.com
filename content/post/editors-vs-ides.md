+++
title = "The Wrong Way to Avoid XML"
date = 2023-01-31T01:46:00-07:00
Description = "Instead of using GUIs to edit XML, use JSON instead"
+++

I'm a newcomer to Visual Studio, and at work, I use it to develop projects
written in both .NET Framework and newer .NET versions. Occasionally, when I
want to edit or view a `.csproj` file, Visual Studio will open a GUI instead.

This is absolutely *maddening* for me.

For a while, this had me thinking that Visual Studio was foolishly designed
around its own features instead of being focused on my files. I believed that
this was the opposite of what a text editor should be about. (I still believe
that.) I wrote [this comment on Reddit][comment] about it, which sparked my
motivation to write this blog post. The original title was "Editors vs IDEs."

[comment]: https://www.reddit.com/r/csharp/comments/yxq6tt/comment/iwqx5b6/?utm_source=share&utm_medium=web2x&context=3

Now, I'm starting to see that it's not Visual Studio per se, it's Microsoft and
the age of XML.

## The original approach

For many years, XML was widely used for configuration, serialization, and
content markup. It's a versatile format, but it's overly verbose. Developers in
general hate working with XML; they want to avoid it.

Disclaimer: I'm pretty young. I wasn't a professional developer
during XML's heyday, and I might not have this context right. This is based on
my impressions from reading a *lot* of Internet content and programming blogs.

**It seems to me that Microsoft's approach to managing the flood of XML was to
abstract it away with GUI tools.** IIS Manager and Visual Studio developed lots
of wizards and features to let developers configure things without touching the
XML by hand.

So you have XML files for server configuration, app configuration, project
configuration, and probably others that I'm forgetting, but you're not supposed
to actually touch them. You're supposed to let the GUI do the work.

## Bzzt, problems

There are two problems with this approach. The first problem is that it didn't
match the approach of the open source ecosystem. The web developed languages
like JSON and YAML and TOML, which are all designed to be *both* human-friendly
and machine-friendly (except YAML).

Instead of hiding XML, programmers abandoned it. By force.

The second problem is that when you put everything in GUIs and wizards, you lose
the most powerful advantage of software: after-the-fact automation. Gluing
separate components together through interoperability. Tinkering.

## Microsoft's turnaround

Microsoft realized this and developed .NET Core and Visual Studio Code. They
steered their entire ecosystem towards the same goals of other open source
ecosystems: embracing the advantages of the command line and using
human-friendly configuration files.

Visual Studio still provides excellent productivity benefits when working with
C# projects (especially large ones). The IDE is still valuable. But it's no
longer the only way to work. You can use a text editor and `dotnet` if you want,
and Microsoft provides well-written documentation to support that.

I'm really glad for this turnaround, because my mental model of sofware
development is one of files and commands. If I were trying to use a GUI, but I
couldn't get a basic idea of the shell commands and file operations it were
performing under the hood, it would be frustrating for me.

And now if you use Visual Studio in this new .NET world, it lets you edit the
freaking project files.

