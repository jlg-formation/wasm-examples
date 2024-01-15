

build: add.wasm
	
add.wasm:
	wat2wasm add.wat -o add.wasm

.PHONY: clean run

run:
	node wrapper.mjs

clean:
	rm -rf add.wasm