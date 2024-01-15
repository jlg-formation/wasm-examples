

build: import.wasm
	
import.wasm: import.wat
	wat2wasm import.wat -o import.wasm

.PHONY: clean run

run:
	node wrapper.mjs

clean:
	rm -rf import.wasm