# Niveaux d'optimisation Emscripten
# Question QCM: em_q10

NODE := $(shell which node)

# Fonctions exportées
EXPORTS := -sEXPORTED_FUNCTIONS=_compute,_add
RUNTIME := -sEXPORTED_RUNTIME_METHODS=ccall,cwrap

# Compilation avec différents niveaux d'optimisation
build-O0:
	@mkdir -p dist
	emcc compute.c -O0 -o dist/compute-O0.js $(EXPORTS) $(RUNTIME)
	@echo "✓ Compilé avec -O0 (aucune optimisation)"

build-O1:
	@mkdir -p dist
	emcc compute.c -O1 -o dist/compute-O1.js $(EXPORTS) $(RUNTIME)
	@echo "✓ Compilé avec -O1 (optimisations basiques)"

build-O2:
	@mkdir -p dist
	emcc compute.c -O2 -o dist/compute-O2.js $(EXPORTS) $(RUNTIME)
	@echo "✓ Compilé avec -O2 (optimisations standard)"

build-O3:
	@mkdir -p dist
	emcc compute.c -O3 -o dist/compute-O3.js $(EXPORTS) $(RUNTIME)
	@echo "✓ Compilé avec -O3 (optimisations agressives)"

build-Os:
	@mkdir -p dist
	emcc compute.c -Os -o dist/compute-Os.js $(EXPORTS) $(RUNTIME)
	@echo "✓ Compilé avec -Os (optimise taille)"

build-Oz:
	@mkdir -p dist
	emcc compute.c -Oz -o dist/compute-Oz.js $(EXPORTS) $(RUNTIME)
	@echo "✓ Compilé avec -Oz (taille minimale)"

# Compiler tous les niveaux
build-all: build-O0 build-O1 build-O2 build-O3 build-Os build-Oz

# Comparer les tailles des fichiers générés
compare:
	@echo "\n=== Comparaison des tailles ==="
	@echo "Fichiers .js (glue code):"
	@ls -lh dist/*.js 2>/dev/null | awk '{print "  " $$9 ": " $$5}'
	@echo "\nFichiers .wasm:"
	@ls -lh dist/*.wasm 2>/dev/null | awk '{print "  " $$9 ": " $$5}'

# Exécuter le benchmark
run:
	$(NODE) wrapper.mjs

# Tout nettoyer
clean:
	rm -rf dist

.PHONY: build-O0 build-O1 build-O2 build-O3 build-Os build-Oz build-all compare run clean
