build: validate.wasm

validate.wasm: validate.wat
	wat2wasm validate.wat -o validate.wasm

.PHONY: clean run

run:
	node wrapper.mjs

clean:
	rm -rf validate.wasm
