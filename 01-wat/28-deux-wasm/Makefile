.PHONY: build clean run serve

build: module1.wasm module2.wasm mono.wasm

module1.wasm: module1.wat
	wat2wasm module1.wat -o module1.wasm

module2.wasm: module2.wat
	wat2wasm module2.wat -o module2.wasm

mono.wasm: mono.wat
	wat2wasm mono.wat -o mono.wasm

run: build
	node wrapper.mjs

serve: build
	@echo "Serveur sur http://localhost:3000"
	@echo "Ouvrez index.html depuis ce serveur"
	python3 -m http.server 3000

clean:
	rm -f module1.wasm module2.wasm mono.wasm