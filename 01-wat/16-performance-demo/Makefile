.PHONY: all clean run

all: performance.wasm

performance.wasm: performance.wat
	wat2wasm performance.wat -o performance.wasm

run: performance.wasm
	node wrapper.mjs

clean:
	rm -f performance.wasm
