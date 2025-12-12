build: binary.wasm

binary.wasm: binary.wat
	wat2wasm binary.wat -o binary.wasm

.PHONY: clean run hex

run:
	node wrapper.mjs

# Afficher les premiers octets en hexadécimal
hex:
	xxd binary.wasm | head -3

clean:
	rm -rf binary.wasm
