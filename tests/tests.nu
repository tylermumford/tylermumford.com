#!/usr/bin/env nu
# Making sure my URLs don't break.
# 
# There are lots of posts on my site, and I don't want to break the URLs when I
# redo any implementation.
# 
# I intend for this to be a set of parameter-driven tests to make sure URLs still
# function properly.

let prefix = "http://localhost:1313/"
let paths = [
    "",
    "index.xml",
    "project",
    "page/contact",
    "project/multi-minesweeper",
    "project/multi-minesweeper/",
    "post/expressiveness-tests/",
    "post/the-wrong-way-to-avoid-xml/",
    "project/potterscore/",
    "project/potterscore/index.html",
    "post/space-trader-journal-2/",
    "images/savvie-1.png",
]

let urls = ($paths | each { |path| $prefix + $path })

echo $"checking ($urls | length) urls for good HTTP response"

let table = ($urls | wrap "url" | insert "http" { |it| check $it.url })
let ok    = ($table | where http < 400)
let bad   = ($table | where http >= 400)

echo $"ok: ($ok | length), bad: ($bad | length)"
if ($bad | length) > 0 {
	echo $bad
	exit ($bad | length)
}


def check [url: string] {
	# Using curl to work around https://github.com/nushell/nushell/issues/7986
	# First line of headers is like "HTTP/2 200", so get the second word
	alias headers = curl -I --silent $url
	let response_code = (headers | lines | get 0 | split row ' ' | get 1)

	$response_code | into int
}
