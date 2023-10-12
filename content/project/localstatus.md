+++
title = "LocalStatus"
date = "2023-08-02"
+++

## LocalStatus: monitor your local dev environment

This might sound familiar:
you're coding, tweaking, and developing your application, when suddenly, some part of it stops working.
You undo some changes, check Git, and restart the service, but it's still broken.
After hours of trying to find the problem, you realize that
you forgot to run the latest migrations on your local database, so it was missing a new table.

[LocalStatus] helps prevent delays like this.
It's like an automated checklist for your local dev environment.

[LocalStatus]: https://github.com/tylermumford/localstatus

## Dev environments are finicky these days

I've worked on projects where you have to create two or three
little files in the repository that *shouldn't* be checked in,
so it was up to devs to maintain their own copies.
It's easy to forget them if they get deleted or if the repo gets re-cloned.

Other projects require VPN connections, remote databases, or other services to be running.
It's easy to forget to start all of those things when your computer reboots.
(And the IT department's software makes my computer reboot *a lot*.)

And then there's the ultimate example of statefulness: the database.

- Does it have the latest migrations applied?
- Does it have starter data like the admin user or the feature flags?
- Is it running?

LocalStatus can check all of these things for you
and give you a bird's-eye-view.

## I believe in working offline

The Internet is a mixed bag. It's great, but also terrible.
Without docs and web searches and StackOverflow, I'd be a whole lot less effective.
But without YouTube and Mastodon, I'd be a whole lot *more* effective.
Sometimes, the best way to focus is to disconnect.

I believe that being able to work offline is important.
For starters, we *have to be offline* sometimes.
No Internet connection is 100% reliable.
But also, being able to work offline is supremely empowering.

*(I have a silly little dream of writing code in cool locations.
On mountaintops, on beaches, under the stars, on a boat.
It's trivial, but I think it'd be cool to have a code comment say something like,
"this feature was developed on Pike's Peak.")*

When you can work offline, you can work anywhere.
You can choose to go beyond Wi-Fi and beyond cell reception.
You can work in places that are inspiring, useful, or just a change of pace,
without worrying about their Wi-Fi speed or your mobile data usage.

And you can turn off distractions. All of them.
If you're on a team, you can set your chat status to "working offline for a few hours" and turn off the Wi-Fi.
Turning off notifications can prevent interruptions,
but turning off Wi-Fi can prevent self-inflicted web distractions.
When you get bored, do you have a habit of hitting Cmd-T and typing "you" into the address bar and hitting Enter?
I know I do.

## Works online, too

Opinions aside, LocalStatus helps when you're online, too.
One of my favorite features is how it monitors the `main` branch
while I'm working on a feature branch,
and it lets me know if there are new commits to merge/rebase into my feature branch.

[LocalStatus] is in the early stages, but it's got some good features. I use it constantly.
If you're feeling adventurous, give it a try.
And if you're just interested to see where the project goes,
star or watch the repository. I'm excited to keep working on it.
