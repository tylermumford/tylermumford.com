VERSION 0.6
FROM klakegg/hugo:0.107.0-busybox

build:
	COPY . .
	RUN hugo
	SAVE ARTIFACT docs AS LOCAL docs

