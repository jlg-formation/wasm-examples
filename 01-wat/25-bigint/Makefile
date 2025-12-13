build: bigint.wasm

bigint.wasm: bigint.wat
	wat2wasm bigint.wat -o bigint.wasm

.PHONY: clean run

run:
	node wrapper.mjs

clean:
	rm -rf bigint.wasm
