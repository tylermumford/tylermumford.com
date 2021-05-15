+++
date = "2016-12-23T15:41:54-07:00"
title = "On CSS Polyfills"
Tags = ["Writing", "CSS"]
Description = "We shouldn't be writing CSS that needs polyfilling."
+++

I want to respond to "[The Dark Side of Polyfilling CSS](https://philipwalton.com/articles/the-dark-side-of-polyfilling-css/)" by Philip Walton. At the end of the article is this hashtag:

> #makecssfatigueathing

I disagree completely. Putting aside the fact that the word "fatigue" has only negative connotations, CSS is already different enough between browsers. If a CSS snippet's meaning can be changed at will by JavaScript, then:

- There will be more code in the rendering pipeline, and therefore more bugs
- Scripts can change the meaning of *valid* CSS, interfering with the CSS author's expectations and intentions
- Browser vendors can justify ignoring niche new features because the JS community will already have an implementation
- More JS has to be included in the page (yes, less than a polyfill, but a nonzero amount nonetheless)
- Instead of being processed by compiled and (hopefully) well-tested code, CSS will have to rely on JS -- let that sink in.

Where does it end?? I strongly believe in the separation of concerns, and in using the right tool for the job. At what point does an application just ignore HTML/CSS and run entirely in JavaScript? (Yes, I'm sure it's already being done.) You might as well ship a desktop app if you're just using the browser as an execution environment.

The difficulty of polyfilling CSS should convince developers to write simple, backwards-compatible, and extensible CSS; not to make it more complicated.