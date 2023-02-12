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