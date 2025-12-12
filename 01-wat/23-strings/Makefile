build: strings.wasm

strings.wasm: strings.wat
	wat2wasm strings.wat -o strings.wasm

.PHONY: clean run

run:
	node wrapper.mjs

clean:
	rm -rf strings.wasm
