build: simd.wasm

simd.wasm: simd.wat
	wat2wasm simd.wat -o simd.wasm

.PHONY: clean run

run: build
	node wrapper.mjs

clean:
	rm -rf simd.wasm