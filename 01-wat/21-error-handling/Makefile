build: error-handling.wasm valid-module.wasm

error-handling.wasm: error-handling.wat
	wat2wasm error-handling.wat -o error-handling.wasm

valid-module.wasm: valid-module.wat
	wat2wasm valid-module.wat -o valid-module.wasm

.PHONY: clean run

run:
	node wrapper.mjs

clean:
	rm -rf error-handling.wasm valid-module.wasm
