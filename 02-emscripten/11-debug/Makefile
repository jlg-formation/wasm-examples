# Emscripten Debug avec Source Maps
# Questions QCM: em_q15, port_q16

# Fonctions exportées
EXPORTS := -sEXPORTED_FUNCTIONS=_calculate,_sumArray,_main,_malloc,_free
RUNTIME := -sEXPORTED_RUNTIME_METHODS=ccall,cwrap

# Build DEBUG avec source maps
build-debug:
	@mkdir -p dist
	emcc debug.c -o dist/debug.js \
		$(EXPORTS) $(RUNTIME) \
		-g3 \
		-gsource-map \
		--source-map-base http://localhost:8080/dist/ \
		-sASSERTIONS=2 \
		-sSAFE_HEAP=1
	@echo "✓ Compilé en mode DEBUG"
	@echo "  - Source maps générées (.wasm.map)"
	@echo "  - Assertions activées"
	@echo "  - SAFE_HEAP activé"

# Build RELEASE optimisé
build-release:
	@mkdir -p dist
	emcc debug.c -o dist/debug-release.js \
		$(EXPORTS) $(RUNTIME) \
		-O3
	@echo "✓ Compilé en mode RELEASE (-O3)"

# Build par défaut
build: build-debug

# Comparer les tailles
compare:
	@echo "=== Comparaison debug vs release ==="
	@ls -lh dist/*.wasm 2>/dev/null | awk '{print $$9 ": " $$5}'
	@ls -lh dist/*.map 2>/dev/null | awk '{print $$9 ": " $$5}' || echo "(pas de source map en release)"

# Servir localement (requis pour source maps)
serve:
	@echo "Serveur sur http://localhost:8080"
	@echo "Ouvrir index.html et utiliser Chrome DevTools pour déboguer"
	npx serve -l 8080

clean:
	rm -rf dist

.PHONY: build-debug build-release build compare serve clean
