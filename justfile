# Note: Some of these commands require the Nu shell.

# Serve the site, including drafts
serve:
    zola serve --drafts

alias server := serve

# Build the site and check for errors
check:
    just build
    zola check

# Test supported URLs for good responses
test:
    #!/usr/bin/env zsh
    set -euo pipefail
    echo Setting up...
    go build -o /dev/null tests/check_key_urls.go
    zola serve > /dev/null &
    sleep 0.2s
    echo Running tests...
    go run tests/check_key_urls.go
    kill %1
    sleep 0.2s # Not sure why, but kill totally fails unless this sleep is here.
    
# Erase all built files in public/
clean:
    rm -rf public/*

# Build
build: clean
    zola build

# Build the site and push it via the deploy branch
deploy:
    #!/usr/bin/env nu
    if (git status --short | lines | length) > 0 {
        print "There are unstaged changes" --stderr
        exit 1
    }
    git switch deploy
    git reset --hard main
    just build
    git add --force public
    git commit --message "Build for deployment"
    git push --force
    git switch main

# Create a new post
post slug:
    #!/usr/bin/env nu
    cd content/post
    cp .new.md '{{slug}}.md'
    let newTitle = '{{slug}}' | str title-case
    let newDate = date now | date format '%+'
    (
        open {{slug}}.md |
        str replace DATE $newDate |
        str replace TITLE $newTitle |
        save -f {{slug}}.md
    )
