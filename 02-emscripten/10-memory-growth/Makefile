# Croissance mémoire dynamique Emscripten
# Question QCM: em_q14

NODE := $(shell which node)

# Fonctions exportées
EXPORTS := -sEXPORTED_FUNCTIONS=_getHeapSize,_allocateBlock,_forceGrowth,_getMemoryPages,_malloc,_free

# Méthodes runtime
RUNTIME := -sEXPORTED_RUNTIME_METHODS=ccall,cwrap

# Mémoire initiale réduite pour démontrer la croissance
INITIAL_MEMORY := -sINITIAL_MEMORY=1048576

# Build avec croissance mémoire autorisée
build:
	@mkdir -p dist
	emcc memory-growth.c -O2 -o dist/memory-growth.js \
		$(EXPORTS) $(RUNTIME) \
		$(INITIAL_MEMORY) \
		-sALLOW_MEMORY_GROWTH=1 \
		-sMAXIMUM_MEMORY=64MB
	@echo "✓ Compilé avec ALLOW_MEMORY_GROWTH=1"
	@echo "  Mémoire initiale: 1 MB"
	@echo "  Mémoire maximale: 64 MB"

# Build sans croissance mémoire (pour comparaison)
build-fixed:
	@mkdir -p dist
	emcc memory-growth.c -O2 -o dist/memory-fixed.js \
		$(EXPORTS) $(RUNTIME) \
		-sINITIAL_MEMORY=16777216 \
		-sALLOW_MEMORY_GROWTH=0
	@echo "✓ Compilé avec ALLOW_MEMORY_GROWTH=0 (mémoire fixe 16MB)"

run:
	$(NODE) wrapper.mjs

clean:
	rm -rf dist

.PHONY: build build-fixed run clean
