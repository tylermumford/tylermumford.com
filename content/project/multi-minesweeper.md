+++
title = "Multi-Minesweeper"
date = "2021-02-27"
Description = ""
+++

I enjoyed the Stock Market Game so much that I wanted to create another pandemic-friendly game people could play together over a voice/video call. On a whim, I decided to create a [multiplayer version of minesweeper][link].

[link]: https://minesweeper.tylermumford.com

Of course, other people had done this before, but everything I found online involved players working together on the same area of mines. I wanted my version to feel more original, so I decided that players would work on different minefields, but their fields would be linked.

-----

Players can click to open a square, but they can't see the number below unless **everyone else**
has **also** tried to open that square.

-----

I've playtested the game at least ten times, but it's only mildly enjoyable. Not as fun as regular minesweeper. Players seem to end up just solving their board at their own pace, without the need for much coordination. I think I need to rethink the core mechanics; the ideas need to evolve.

Still, I've had a lot of fun making it. I've used [Turbo](//turbo.hotwire.dev), which has been really interesting and fun. (Needs better documentation, though.) This is also my most server-side side project to date—most of the things I build are front-end only.

<div class="spacer-2"></div>

At first, I made a version with Node, Mithril, and websockets. It was fine, but I decided to rewrite it with Go and Turbo. 🤷‍♂️ What can I say? I like trying cool tech on side projects.

I also _might_ come back to this project someday and rewrite it again. Clearly, I am insane. If I were to do it now, I'd reach for [Alpine.js][]. Probably still Go on the backend, but maybe Deno.

[Alpine.js]: https://alpinejs.dev
