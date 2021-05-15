+++
date = "2015-08-20"
title = "Casino Game Maker GDK"
SourceCodeURL = "https://gitlab.com/cgm/gdk-website"
Tags = ["Project", "PHP", "Web", "CodeIgniter"]
Description = "Admin interface and file distribution platform"
+++

[Casino Game Maker](http://www.casinogamemaker.com/), a local startup, approached me to create a new website. The company had me develop the site online, so I believe it's public knowledge, but they never marketed the site and it is currently down. It involved large file distribution, multi-level managed user accounts, and online payments.

The site had two parts: the majority of it was built using CodeIgniter, an older PHP framework that was easy to use and nice to work with. I built several public-facing pages as well as an admin area by hand. The second part of the site was running on DokuWiki, which I customized to integrate with the user authentication system of the main site.

*I'll dig up the source code and get some screenshots sometime, especially if there is a request for more information.*

----

It's been quite a while since I made this website. If I were to do it again, with what I know now, I'd probably use CodeIgniter again. However, I think Django would be a more appropriate choice. I'd be much easier to build the admin area, and Django is better suited for code reuse than CodeIgniter. I just don't have any real experience with Django yet.