+++
title = "Multi-Minesweeper"
date = "2021-02-27"
Description = ""
ProjectURL = "https://minesweeper.tylermumford.com"
SourceCodeURL = ""
+++

I enjoyed the Stock Market Game so much that I wanted to create another pandemic-friendly
game people could play together over a voice/video call. On a whim, I decided to create
a multiplayer version of minesweeper.

Of course, other people had done this before, but everything I found online involved players
working together on the same area of mines. I wanted my version to feel more original, so
I decided that players would work on different minefields, but their fields would be linked.

-----

Players can click to open a square, but they can't see the number below unless **everyone else**
has **also** tried to open that square.

-----

I've playtested the game a few times now, but it's always only mildly enjoyable. I think I need
to rethink some of the mechanics to make it more fun. Players seem to end up just solving their
board at their own pace, without much verbal interaction or difficulty.

Still, I've had a lot of fun making it. I've used [Turbo](//turbo.hotwire.dev), which has been
really interesting and fun. (Needs better documentation, though.) This is also my most server-side
side project to date—most of the things I build are front-end only.

-----

At first, I made a version with Node, Mithril, and websockets. It was fine, but I decided to rewrite it with Go and Turbo.
