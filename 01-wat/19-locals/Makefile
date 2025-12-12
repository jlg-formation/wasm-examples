build: locals.wasm

locals.wasm: locals.wat
	wat2wasm locals.wat -o locals.wasm

.PHONY: clean run

run:
	node wrapper.mjs

clean:
	rm -rf locals.wasm
