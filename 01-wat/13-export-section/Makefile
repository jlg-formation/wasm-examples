

build: add.wasm
	
add.wasm: add.wat
	wat2wasm add.wat -o add.wasm

.PHONY: clean run

run:
	node wrapper.mjs

clean:
	rm -rf add.wasm