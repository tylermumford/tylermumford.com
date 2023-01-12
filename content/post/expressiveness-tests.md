+++
title = "Code Expressiveness Tests"
date = 2023-01-11T20:48:00-07:00
Description = ""
+++

<!-- When I'm editing this file, :set textwidth=90 -->

When writing a project with unit tests, I find it helpful to write a few tests that are
more about what the code *expresses*, rather than what it *does*.

I thought of the concept and the name when writing code for a chess game (side project,
private repo). I wanted to write some unit tests that got me started with some class
names, method names, and high-level concepts in the code.

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
the two ways to create a `Position` object from a string. Do they compile? Do they "read"
well?

I want this code to be in a test, because it's fundamental to many other parts of the
code. But for this case, I don't care about the `Position` objects themselves at all.
The behavior can and will be covered in later tests.

These "code expressiveness tests," as I like to call them, have several advantages:

* They are some of the easiest tests to write
* They can be written at any point in the project's lifecycle
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

I've searched for this concept to see if it's been written about before. I've tried
"code expressiveness tests," "non-assertion tests," and "first unit tests." Nothing
I've found quite captures this idea. If you know of it already, please send me a link,
perhaps on Mastodon.

One relevant page I do want to point out is [Unit Testing Without Assertions](). The
consensus there seems to be that tests should always assert something--but if they don't,
they should document the reason. I believe that organizing these code expressiveness tests
together and naming them as such sufficiently documents the intent. Demonstrating syntax
and usage is reason enough for these tests. Adding assertions to these tests would make
them more complex and more cluttered.

[Unit Testing Without Assertions]: https://stackoverflow.com/questions/137399/unit-testing-without-assertions

