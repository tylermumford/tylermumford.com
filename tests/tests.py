#!/usr/bin/env python3
"""Making sure my URLs don't break.

There are lots of posts on my site, and I don't want to break the URLs when I
redo any implementation.

I intend for this to be a set of parameter-driven tests to make sure URLs still
function properly.
"""

import requests
from pprint import pp

# Holds a dict of url -> status_code
results = {}

def main():
    prefix = "http://localhost:1111/"
    paths = [
            "",
            #"index.xml",
            # ^^^ This used to exist, so a redirect is necessary.
            "/atom.xml",
            "project",
            "page/contact",
            "project/multi-minesweeper",
            "project/multi-minesweeper/",
            "post/expressiveness-tests/",
            "post/the-wrong-way-to-avoid-xml/",
            "project/potterscore/",
            #"project/potterscore/index.html",
            # ^^^ This should pass, but it doesn't when using `zola serve` for some reason.
            "post/space-trader-journal-2/",
            "images/savvie-1.png",
    ]
    urls = [prefix + path for path in paths]

    print(f"{len(urls)} urls to check for good HTTP response")

    for url in urls:
        check(url)

    ok = [r for r in results.items() if r[1] < 400]
    bad = [r for r in results.items() if r[1] >= 400]

    print(f"ok: {len(ok)}, bad: {len(bad)}")

    if len(bad) > 0:
        pp(bad) 

    print(f"exiting with code {len(bad)}")
    exit(len(bad))

def check(url):
    try:
        response = requests.get(url)
        results[url] = response.status_code
    except Exception as ex:
        raise Exception(f"Couldn't check url {url}") from ex

if __name__ == "__main__":
    main()

