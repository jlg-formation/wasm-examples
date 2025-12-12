build: memory-grow.wasm

memory-grow.wasm: memory-grow.wat
	wat2wasm memory-grow.wat -o memory-grow.wasm

.PHONY: clean run

run:
	node wrapper.mjs

clean:
	rm -rf memory-grow.wasm
