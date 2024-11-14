/*
Making sure my URLs don't break.

There are lots of posts on my site, and I don't want to break the URLs when I
redo any implementation.

I intend for this to be a set of parameter-driven tests to make sure URLs still
function properly.
*/

package main

import (
	"fmt"
	"net/http"
	"os"
)

// Result stores the URL and its corresponding status code
type Result struct {
	URL        string
	StatusCode int
}

func main() {
	prefix := "http://localhost:1111/"
	paths := []string{
		"",
		//  "index.xml", // This used to exist, so a redirect is necessary.
		"/atom.xml",
		"project",
		"page/contact",
		"project/multi-minesweeper",
		"project/multi-minesweeper/",
		"post/expressiveness-tests/",
		"post/the-wrong-way-to-avoid-xml/",
		"project/potterscore/",
		// "project/potterscore/index.html", // Should pass, but doesn't work with `zola serve`
		"post/space-trader-journal-2/",
		"images/savvie-1.png",
	}

	// Generate full URLs
	var urls []string
	for _, path := range paths {
		urls = append(urls, prefix+path)
	}

	fmt.Printf("%d urls to check for good HTTP response\n", len(urls))

	results := make(map[string]int)
	for _, url := range urls {
		statusCode, err := checkURL(url)
		if err != nil {
			fmt.Printf("Error checking %s: %v\n", url, err)
			os.Exit(1)
		}
		results[url] = statusCode
	}

	// Split results into OK and bad
	var ok, bad []Result
	for url, code := range results {
		result := Result{URL: url, StatusCode: code}
		if code >= 200 && code < 400 {
			ok = append(ok, result)
		} else {
			bad = append(bad, result)
		}
	}

	// Report results
	fmt.Printf("ok: %d, bad: %d\n", len(ok), len(bad))

	if len(bad) > 0 {
		fmt.Println("\nBad responses:")
		for _, result := range bad {
			fmt.Printf("%s: %d\n", result.URL, result.StatusCode)
		}
	}

	os.Exit(len(bad))
}

// checkURL makes an HTTP GET request to the specified URL and returns the status code
func checkURL(url string) (int, error) {
	resp, err := http.Get(url)
	if err != nil {
		return 0, fmt.Errorf("couldn't check url %s: %w", url, err)
	}
	defer resp.Body.Close()

	return resp.StatusCode, nil
}
