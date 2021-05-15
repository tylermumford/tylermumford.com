+++
title = "Advanced Content Management"
Description = "Ongoing work to improve university website architecture"
SourceCodeURL = ""
Tags = ["Project", "SUU", "CMS"]
date = "2016-07-15"
+++

## Summary

To simplify the creation of complicated page layouts, I developed a new "Advanced Page" content type in our CMS. Advanced pages have automatic support for custom row-and-column layouts and pluggable, reusable, structured component blocks.

{{< figure src="/images/advanced-3.png" link="/images/advanced-3.png" caption="Advanced page multi-column demo screenshot" >}}

## Background

I work in the wonderful Web Services department of my university. I love my job, but our entire department has fewer than five employees supporting the entire university website: almost **3,000** pages and hundreds of faculty and staff. Most of them contact us with updates, and a few make their own changes in the CMS.

Our site uses Bootstrap's grid system, and many of our pages require custom multi-column layouts. Unfortunately, our CMS's WYSIWYG editor doesn't support multi-column layouts except via hand-coded HTML. This meant that Web Services had to be involved whenever someone needed a change to these pages, and we had to be careful not to **break the layout** when adding or removing columns.

## Solution

When summer started, I spent a few weeks learning how our CMS could be customized. I developed a **new page rendering system** (using Apache Velocity, if you're curious) that had built-in support for multi-row and multi-column layouts. At the same time, I added support for **reusable** blocks of WYSIWYG content. These blocks are structured and their WYSYWIG interface can be customized.

{{< figure src="/images/advanced-1.png" caption="Advanced page editing interface" link="/images/advanced-1.png" >}}
{{< figure src="/images/advanced-2.png" caption="Reusable accordion component's editing interface" link="/images/advanced-2.png" >}}