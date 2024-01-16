build: mylib.c
	mkdir -p dist
	emcc mylib.c -o dist/mylib.mjs \
		-sEXPORTED_FUNCTIONS=_print_env \
		-sEXPORT_ES6 \
		-sMODULARIZE 

run:
	node wrapper.mjs

clean:
	rm -rf dist

