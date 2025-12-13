build: feature-detect.wasm

feature-detect.wasm: feature-detect.wat
	wat2wasm feature-detect.wat -o feature-detect.wasm

.PHONY: clean run

run:
	node wrapper.mjs

clean:
	rm -rf feature-detect.wasm
