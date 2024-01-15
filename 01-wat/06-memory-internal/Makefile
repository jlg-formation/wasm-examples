

build: memory.wasm
	
memory.wasm: memory.wat
	wat2wasm memory.wat -o memory.wasm

.PHONY: clean run

run:
	node wrapper.mjs

clean:
	rm -rf memory.wasm