NODE := $(shell which node)

build: add.c
	mkdir -p dist
	emcc add.c -o dist/add.js -sEXPORTED_FUNCTIONS=_add

run:
	$(NODE) wrapper.js

clean:
	rm -rf dist

