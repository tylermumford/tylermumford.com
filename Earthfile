VERSION 0.6
FROM klakegg/hugo:0.107.0-busybox

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

