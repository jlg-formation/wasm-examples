.PHONY: all clean run

all: sandbox.wasm

sandbox.wasm: sandbox.wat
	wat2wasm sandbox.wat -o sandbox.wasm

run: sandbox.wasm
	node wrapper.mjs

clean:
	rm -f sandbox.wasm
