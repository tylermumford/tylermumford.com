VERSION 0.6
FROM klakegg/hugo:0.107.0-busybox
# To check for newer versions of Hugo,
# use https://hub.docker.com/r/klakegg/hugo/tags?page=1&name=busybox

clean:
	LOCALLY
	RUN rm -r docs

build:
	BUILD +clean
	COPY . .
	RUN hugo
	SAVE ARTIFACT docs AS LOCAL docs

commit:
	LOCALLY
	RUN git add docs
	RUN git commit -m "Build"

