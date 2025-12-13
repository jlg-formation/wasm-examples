# Simulation du workflow Autoconf/emmake
# Questions QCM: port_q1, port_q8

NODE := $(shell which node)

EXPORTS := -sEXPORTED_FUNCTIONS=_add,_multiply,_version,_main
RUNTIME := -sEXPORTED_RUNTIME_METHODS=ccall,cwrap,UTF8ToString

# =============================================
# Workflow Autoconf standard (simulation)
# =============================================

# Étape 1: Créer la bibliothèque statique (comme après ./configure && make)
lib:
	@mkdir -p build
	@echo "1. Compilation de la bibliothèque avec emcc..."
	emcc -c mylib.c -o build/mylib.o
	@echo "2. Création de l'archive avec emar..."
	emar rcs build/libmylib.a build/mylib.o
	@echo "✓ Bibliothèque créée: build/libmylib.a"

# Étape 2: Lier la bibliothèque au programme principal
link: lib
	@mkdir -p dist
	@echo "3. Liaison avec le programme principal..."
	emcc main.c build/libmylib.a -O2 -o dist/autoconf.js $(EXPORTS) $(RUNTIME)
	@echo "✓ Module WebAssembly créé: dist/autoconf.js"

# Build complet
build: link
	@echo "\n📋 Workflow Autoconf complet:"
	@echo "   1. emconfigure ./configure  # Configure pour Emscripten"
	@echo "   2. emmake make              # Compile avec emcc"
	@echo "   3. emcc lib.a -o app.js     # Lie en WebAssembly"

# =============================================
# Démonstration des outils Emscripten
# =============================================

# Montre les outils disponibles
show-tools:
	@echo "Outils Emscripten pour le portage:"
	@echo "  emcc      → $(shell which emcc)"
	@echo "  em++      → $(shell which em++)"
	@echo "  emar      → $(shell which emar)"
	@echo "  emranlib  → $(shell which emranlib)"

run:
	$(NODE) wrapper.mjs

clean:
	rm -rf build dist

.PHONY: lib link build show-tools run clean
