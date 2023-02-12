# Serve the site, including drafts
run:
	hugo server --buildDrafts

# Build the site to check for errors
check:
	hugo
	just clean

# Test common URLs for good response (must run server in another shell)
test:
	./tests/tests.py

# Restore the built site to last committed
clean:
	rm -r docs
	git restore docs

# Build, commit, and push
push:
	hugo --cleanDestinationDir
	git add docs
	git commit -m Build
	git push

# Create a new post
post slug:
    hugo new content/post/{{slug}}.md
