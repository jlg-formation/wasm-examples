SOURCE=$(shell ls *.wat)

build: main.wasm
	
main.wasm: $(SOURCE)
	wat2wasm $(SOURCE) -o main.wasm

.PHONY: clean run

run:
	node wrapper.mjs

clean:
	rm -rf main.wasm