NODE := $(shell which node)
NPM := $(shell which npm)

EMCC_FLAGS := \
	-O2 \
	-sMODULARIZE \
	-sEXPORT_ES6 \
	--emit-tsd bindings.d.ts \
	-sEXPORTED_FUNCTIONS=_add_ints,_average3,_describe_pair,_translate_point_ptr,_malloc,_free \
	-sEXPORTED_RUNTIME_METHODS=cwrap,stringToNewUTF8,UTF8ToString,getValue,setValue

build: dist/bindings.js dist/bindings.d.ts wrapper.js

node_modules/typescript/bin/tsc: package.json
	$(NPM) install

dist:
	mkdir -p dist

dist/bindings.js dist/bindings.d.ts: interop.c | dist node_modules/typescript/bin/tsc
	PATH="$(PWD)/node_modules/.bin:$$PATH" emcc interop.c -o dist/bindings.js $(EMCC_FLAGS)

wrapper.js: wrapper.ts tsconfig.json dist/bindings.js dist/bindings.d.ts | node_modules/typescript/bin/tsc
	./node_modules/.bin/tsc --project tsconfig.json

run: build
	$(NODE) wrapper.js

clean:
	rm -rf dist node_modules wrapper.js

.PHONY: build run clean