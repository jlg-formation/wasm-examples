

build: global.wasm
	
global.wasm:
	wat2wasm global.wat -o global.wasm

.PHONY: clean run

run:
	node wrapper.mjs

clean:
	rm -rf global.wasm