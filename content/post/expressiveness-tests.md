+++
title = "Code Expressiveness Tests"
date = 2022-12-30T23:56:38-07:00
Description = ""
draft = true
+++

<!-- When I'm editing this file, :set colorcolumn=90 -->

When writing a project with unit tests, I find it helpful to write a few tests that are
more about what the code *expresses*, rather than what it *does*.

I started using the concept when writing code for a chess game. I wanted to write some
unit tests that got me started with some class names, method names, and high-level
concepts in the code.

For example:

```csharp
[Fact]
public void CanExpressPositionsAsStrings()
{
    var a1 = new Position("a1");
    var e4 = (Position)"e4";
}
```

There are no assertions in this test, and that's intentional. This is all about
capturing the two ways to create a `Position` object from a string.

I want this code to be in a test, because it's fundamental to many other parts of the
code. But for this case, I don't care about the `Position` objects themselves at all.
That can and will be covered in later tests.

These "code expressiveness tests," as I like to call them, are useful in several ways:

* They are some of the easiest tests to write
* They can be written very eary on in the TDD cycle
* They provide a helpful overview of how to use the classes and methods under test

Here are some more examples I like.

```csharp
[Fact]
public void CanEnumerateAllPositions()
{
    foreach (var position in Position.All)
    {
        // Hello, there.
    }
}
```

```csharp
[Fact]
public void GameCanExpressMoveLegality()
{
    var b = new Board();
    var move = b.GetMove(fromPosition: "a2", toPosition: "a4");

    bool _ = move.IsLegal();
}
```

> I've searched for this concept to see if it's been written about before. I've tried
"code expressiveness tests," "non-assertion tests," and "first unit tests." Nothing
I've found quite captures this idea. If you know of it already, please send me a link,
perhaps on Mastodon.

