+++
title = "How I'd Make Firefox Amazing"
date = 2023-02-11T22:08:25-07:00
Description = ""
draft = true
+++

Firefox is a good browser, but it has some big problems. Many of Firefox's recent features have felt out of place, like they were shoved in without understanding what users actually want. Compared to other browsers, it's less exciting, less flexible, and less power-efficient. If I had unlimited time and energy, here's how I'd make Firefox amazing.

<!--more-->

tl;dr -- Move Firefox View to the right side, limit power-hungry features, 

shitty first draft

## Firefox View

This is the most recent change I've noticed in Firefox, and it's the one that indicates the greatest disconnect between Firefox's design process and its users. Here's the biggest problem:

It looks like a tab. But it's not a tab.

When you close the last real tab in the browser, it still looks like there's a pinned tab there with the Firefox icon. But it's not a real tab! Firefox closes the window instead of switching to the "pinned tab."

To fix this, Firefox needs to move Firefox View to the *right* side; the opposite of pinned tabs. Or make it look like a button instead of a tab.

(It may seem like this could be fixed by activating Firefox View when the last real tab is closed. I don't think that's a good idea, because, again, it's not a tab. You can't Ctrl-Tab to it, you don't see it in the tab picker. Except you do, because surprise! Firefox View is a new thing called a *hidden tab*. But you can't turn regular tabs into hidden tabs. It's just a browser feature implemented as a tab, but not a normal tab, because it's a browser feature. Gah.)

## Energy efficiency

The only reason I use Safari on the Mac instead of Firefox is battery life. I don't always try to maximize battery life, but when I do, I want to keep using the same browser. Based on checking the battery icon in the menu bar to see "Apps Using Significant Energy," Safari is the most energy efficient.

To fix this, Firefox probably needs to limit some of its power-hungry features. Without data, I can only speculate, but I'd guess that:

- Loading 21 article previews on the new tab page is too many 
- Tracking usage to personalize extension recommendations is unnecessary
- This might be an unfair comparison, because Safari only has to optimize for one OS, while Firefox supports several

## Firefox for iOS

There are lots of little reasons I stopped using Firefox for iOS. It's just not as nice as Safari. It's been a while, so I don't remember everything, but I know Firefox didn't have as nice integration with password managers, so it would take an extra couple taps to log in to websites.

The animations in the app are somehow just "harsher" and less smooth than in Safari. And some basic features were missing, like easily closing all tabs, opening new tabs with a gesture, and probably other things I'm forgetting.

To fix this, someone who really obsesses over these little UX details needs to spend a lot of time polishing up Firefox for iOS.

## Intersting/awesome

I've been using Firefox since about version 2. In recent years, I've liked Colorways, Containers, and Pocket integration. (I know some people don't like Pocket, though.) Huh, on my Mac, I don't see the Colorways feature anywhere. (And when it was introduced, it was sketchy, like telling me I could use this theme for a while and then it would be gone... not cool.)

But there's a *huge* amount of untapped potential here. I'm going to note interesting features that set Safari and Vivaldi apart. I don't use Chrome or Edge, so I don't know what they're up to.

Safari:

- Tab groups
- Along with that, tabs in the sidebar\*
- Compact tab layout (much maligned, shouldn't be the default, but super interesting)
- Zooming out to get a tab overview and search tabs
- Auto-clear history after, by default, 1 year
- Great energy efficiency

Vivaldi:

- "Take a break" feature
- Web panes in the sidebar
- Tab stacks (I only used this a little, but it has so much potential)
- Built-in feed reader (YES. Why doesn't every browser have this? And Vivaldi, why do I have to enable Mail and Calendar to use this? I just want to try feeds. But it probably doesn't support syncing with a hosted service like Feedbin, so maybe not great. Hm, that's probably why not every browser ships with this; you almost have to support Feedbin and Feedwrangler and Feedly at this point. And that's a lot.)
- Rewind and fast-forward by domain
- Tasks, notes, calendar, features for days (I personally don't want my browser to try to be an operating system, but... that's a popular way to go these days.)

Lots of innovative features have become table stakes for browsers. Tabs, syncing, and quickly searching the web are just a given. Chrome is dominating browser usage, but it's grown stale, too. The most interesting feature listed on their website is tab groups. (Which is really just automatic bookmark folders, same as Safari, but it's useful.) Because Chrome is stale, there's a huge opportunity for other browsers to differentiate themselves!

(Of course, browsers should not differentiate themselves in terms of how they implement HTML/CSS/JS standards. We've been there, and *we do not want to go back*.)

Firefox, just like Chrome, barely goes above these table stakes.

\* How the heck is Safari, the most feature-conservative browser by a long shot, the first mainstream browser to have a sidebar for tabs. Before Firefox!!

## Aside: The Worst Possible Move

Other browsers such as Vivaldi and Arc are proving that you can develop innovative feature ideas on top of Chromium. Edge tried it, too.

Firefox must not attempt to "innovate" by switching from Gecko to Blink.

I cannot imagine how difficult it is to maintain a rendering engine with as many features as Gecko. I'm sure that it's tempting for Mozilla to "take advantage of" Blink/Chromium and "move faster." But this would be a terrible mistake.

On principle, if Firefox ditched Gecko and used Blink instead, the web would lose an important guiding principle: "don't be rendering-engine specific." Mozilla's stated mission is to build the open web, so this would go directly against that mission.

And from a technical perspective, Firefox would lose control over its "soul." Vivaldi and Arc and Edge are surface-level. And the UI surface of a browser is incredibly important! So I'm glad they exist. But Firefox has the potential to be *different and better on another level entirely*. Stick with Gecko.

## Feature ideas

Surprise! The whole point of this article was to give me an excuse to write a feature wish list without any responsibility to make sure they're actually good ideas or to implement them myself. So they're worth what you paid for them, but I hope they're interesting.

- Treat tabs like Sublime Text treats files: organized by folder, searchable with a fuzzy finder, click-to-preview
- Add a minimap like Sublime Text and VS Code
- Add a command palette... like Sublime Text
- Show some kind of indicator on pages with infinite scrolling
- Shamelessly copy the "Take a break" feature from Vivaldi
- Integrate with popular sites' notification systems and aggregate them in a sidebar/popup without grabbing my attention, and without me having to manually keep the tabs open
- Support a fediverse:// url protocol to let me open links in my app/server of choice
- Create a service where, with one click, a person can share their browser window/give control to someone who can help them troubleshoot something (make it secure, like by requiring pre-existing connections/friending or something)
- Automatically close tabs I don't need anymore
- Auto-generate an SSH key for use with GitHub
- Support PWAs on the desktop, like Vivaldi
- Or even better, support temporary PWAs by seamlessly condensing the UI when I pull a web app's tab out of a regular browsing window
- Build a better Electron: modularize Gecko and other internal components so people have a platform they can use to create desktop apps or alternative browsers
- Support another freaking programming language besides JavaScript! How about native Lua support, or Python, or TypeScript, or I'm sure there are other interesting possibilities. I guess this is what WASM is for.
- Start to call out heavy, bloated pages. Suggest an ad blocker if a page is over 20 MB for example. (Probably not including images/video, but idk)
- 