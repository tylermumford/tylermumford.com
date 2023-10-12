+++
Tags = ["Project", "CMS", "SUU", "Design"]
Description = "Admin interface and website design for marketing campaign"
date = "2016-05-01"
title = "SUU to Everywhere"
#SourceCodeURL = ""
# Source code is private

[extra]
project_status = "unlisted"
+++

When the marketing department asked us to build a site for their newest campaign, "[SUU to Everywhere](https://www.suu.edu/everywhere/)," I implemented the CMS page types and the CSS for the site's design.

{{ lazyimg(src="/images/everywhere-thumb.png" alt="SUU to Everywhere front page") }}

----

At the time, our site didn't really have anything like this. A coworker and I planned a way for the new code to be **reusable** in other areas (specifically the university news). We made structured page types for the stories so Marketing could easily create and edit the stories. We used [Masonry](http://masonry.desandro.com/) to keep the lower section of images flexible and visually interesting, and I used **flexbox** to ensure the top three images would be responsive regardless of aspect ratios.

{{ lazyimg(src="/images/everywhere-editing.png" alt="WYSIWYG interface for editing a story in the CMS") }}
