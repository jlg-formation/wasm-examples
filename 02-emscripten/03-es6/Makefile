NODE := $(shell which node)

build: add.c
	mkdir -p dist
	emcc add.c -o dist/add.mjs \
		-sEXPORTED_FUNCTIONS=_add \
		-sEXPORT_ES6

run:
	node wrapper.mjs

clean:
	rm -rf dist

