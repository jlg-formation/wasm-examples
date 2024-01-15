

build: import.wasm
	
import.wasm:
	wat2wasm import.wat -o import.wasm

.PHONY: clean run

run:
	node wrapper.mjs

clean:
	rm -rf import.wasm