

build: global-import.wasm
	
global-import.wasm: global-import.wat
	wat2wasm global-import.wat -o global-import.wasm

.PHONY: clean run

run:
	node wrapper.mjs

clean:
	rm -rf global-import.wasm