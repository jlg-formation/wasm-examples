NODE := $(shell which node)
NPM := $(shell which npm)

EMCC_FLAGS := \
	-O2 \
	--bind \
	-sMODULARIZE \
	-sEXPORT_ES6 \
	--emit-tsd bindings.d.ts

build: dist/bindings.js wrapper.js

node_modules/typescript/bin/tsc: package.json
	$(NPM) install

dist:
	mkdir -p dist

dist/bindings.js: interop.cpp | dist
	em++ interop.cpp -o dist/bindings.js $(EMCC_FLAGS)

wrapper.js: wrapper.ts tsconfig.json dist/bindings.js | node_modules/typescript/bin/tsc
	./node_modules/.bin/tsc --project tsconfig.json

run: build
	$(NODE) wrapper.js

clean:
	rm -rf dist node_modules wrapper.js

.PHONY: build run clean