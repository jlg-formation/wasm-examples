# Accès mémoire HEAP avec Emscripten
# Question QCM: em_q13

NODE := $(shell which node)

# Fonctions exportées
EXPORTS := -sEXPORTED_FUNCTIONS=_getIntBufferPtr,_getFloatBufferPtr,_fillIntBuffer,_fillFloatBuffer,_sumIntBuffer,_sumFloatBuffer,_allocateIntArray,_freeIntArray,_malloc,_free

# Méthodes runtime pour accéder aux HEAP
RUNTIME := -sEXPORTED_RUNTIME_METHODS=ccall,cwrap,HEAP8,HEAPU8,HEAP16,HEAP32,HEAPF32,HEAPF64,getValue,setValue

build:
	@mkdir -p dist
	emcc heap.c -O2 -o dist/heap.js $(EXPORTS) $(RUNTIME)
	@echo "✓ Compilé avec accès HEAP"

run:
	$(NODE) wrapper.mjs

clean:
	rm -rf dist

.PHONY: build run clean
