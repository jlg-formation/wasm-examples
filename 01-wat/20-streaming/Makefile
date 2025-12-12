build: streaming.wasm

streaming.wasm: streaming.wat
	wat2wasm streaming.wat -o streaming.wasm

.PHONY: clean run serve

run:
	node wrapper.mjs

# Serveur HTTP pour tester instantiateStreaming dans un navigateur
serve:
	@echo "Serveur sur http://localhost:3000"
	@echo "Ouvrez index.html dans le navigateur"
	npx serve -l 3000

clean:
	rm -rf streaming.wasm
