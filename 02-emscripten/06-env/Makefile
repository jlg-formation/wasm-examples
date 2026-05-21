NODE := $(shell which node)

build: mylib.c
	mkdir -p dist
	emcc mylib.c -o dist/mylib.mjs \
		-sEXPORTED_FUNCTIONS=_print_env \
		-sEXPORTED_RUNTIME_METHODS=ENV \
		-sEXPORT_ES6

run:
	node wrapper.mjs

clean:
	rm -rf dist

