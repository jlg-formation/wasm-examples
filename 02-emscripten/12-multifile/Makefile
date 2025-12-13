# Compilation multi-fichiers Emscripten
# Question QCM: em_q18

NODE := $(shell which node)

# Fichiers sources
SOURCES := main.c math_ops.c utils.c

# Fonctions exportées
EXPORTS := -sEXPORTED_FUNCTIONS=_calc_add,_calc_power,_calc_factorial,_convert_temp,_get_abs
RUNTIME := -sEXPORTED_RUNTIME_METHODS=ccall,cwrap

# Méthode 1: Compilation directe (tous les fichiers en une fois)
build:
	@mkdir -p dist
	emcc $(SOURCES) -O2 -o dist/multifile.js $(EXPORTS) $(RUNTIME)
	@echo "✓ Compilé: $(SOURCES) → dist/multifile.js"

# Méthode 2: Compilation séparée puis liaison
build-separate:
	@mkdir -p dist obj
	@echo "1. Compilation des fichiers objets..."
	emcc -c main.c -o obj/main.o
	emcc -c math_ops.c -o obj/math_ops.o
	emcc -c utils.c -o obj/utils.o
	@echo "2. Liaison des fichiers objets..."
	emcc obj/main.o obj/math_ops.o obj/utils.o -O2 -o dist/multifile.js $(EXPORTS) $(RUNTIME)
	@echo "✓ Compilé via fichiers objets"

run:
	$(NODE) wrapper.mjs

clean:
	rm -rf dist obj

.PHONY: build build-separate run clean
