# Serve the site, including drafts
serve:
    zola serve --drafts

alias server := serve

# Build the site to check for errors
check:
    zola build
    zola check
    just clean

# Test common URLs for good response (must run server in another shell)
test:
    pip3 install --quiet --requirement ./tests/requirements.txt
    ./tests/tests.py

# Erase all built files in public/
clean:
    rm -rf public/*

# Build (to preview files with analytics)
build:
    zola build

# Build, commit, and push
push: clean build
    #!/usr/bin/env nu
    if (git status --short | lines | length) > 0 {
        print "There are unstaged changes" --stderr
        exit 1
    }
    git push
    # Netlify will update the site automatically

# Create a new post
post slug:
    hugo new content/post/{{slug}}.md
