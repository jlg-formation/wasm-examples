build: mylib.c
	mkdir -p dist
	emcc mylib.c -o dist/mylib.mjs \
		-sEXPORTED_FUNCTIONS=_load_file,_malloc,_free \
		-sEXPORTED_RUNTIME_METHODS=FS,stringToNewUTF8,UTF8ToString \
		-sEXPORT_ES6 \
		-sMODULARIZE 

run:
	node wrapper.mjs

clean:
	rm -rf dist

