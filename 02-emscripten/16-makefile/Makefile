# Makefile natif (simulé) - Sera exécuté via emmake
# Question QCM: port_q2

# Ce Makefile simule un projet natif typique
# Variables par défaut (seront remplacées par emmake)
CC ?= gcc
AR ?= ar

CFLAGS := -O2 -Wall

OBJS := calculator.o main.o

# =============================================
# Cibles "natives" (simulées)
# =============================================

# Compile les fichiers objets
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Crée une bibliothèque statique
libcalculator.a: calculator.o
	$(AR) rcs $@ $^

# =============================================
# Wrapper Makefile pour Emscripten
# =============================================

NODE := $(shell which node)

EXPORTS := -sEXPORTED_FUNCTIONS=_add,_sub,_mul,_div_int
RUNTIME := -sEXPORTED_RUNTIME_METHODS=ccall,cwrap

# Build WebAssembly via emmake (simulation)
wasm:
	@mkdir -p dist
	@echo "=== Simulation emmake make ==="
	@echo "1. emmake définit: CC=emcc AR=emar ..."
	@echo "2. Compilation des fichiers objets..."
	emcc -c calculator.c -o calculator.o
	emcc -c main.c -o main.o
	@echo "3. Création de la bibliothèque..."
	emar rcs libcalculator.a calculator.o
	@echo "4. Liaison finale..."
	emcc main.o libcalculator.a -O2 -o dist/calculator.js $(EXPORTS) $(RUNTIME)
	@echo "✓ dist/calculator.js créé"

# Build direct (sans simulation)
build:
	@mkdir -p dist
	emcc calculator.c main.c -O2 -o dist/calculator.js $(EXPORTS) $(RUNTIME)
	@echo "✓ Build direct: dist/calculator.js"

run:
	$(NODE) wrapper.mjs

clean:
	rm -rf dist *.o *.a

.PHONY: wasm build run clean
