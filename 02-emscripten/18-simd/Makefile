# Emscripten - SIMD automatique

NODE := $(shell which node)
PYTHON := $(shell which python3)

COMMON_FLAGS := \
	-O3 \
	-sWASM=1 \
	-sMODULARIZE=1 \
	-sEXPORT_ES6=1 \
	-sENVIRONMENT=web,node \
	-sEXPORTED_FUNCTIONS=_vector_length,_init_vectors,_reset_output,_run_kernel,_checksum

SCALAR_FLAGS := $(COMMON_FLAGS)
SIMD_FLAGS := $(COMMON_FLAGS) -msimd128

build: build-scalar build-simd
	@echo "Build termine: variantes scalaire et SIMD disponibles dans dist/"

build-scalar:
	@mkdir -p dist
	emcc simd.c $(SCALAR_FLAGS) -o dist/scalar.mjs
	@echo "✓ Build scalaire: dist/scalar.mjs + dist/scalar.wasm"

build-simd:
	@mkdir -p dist
	emcc simd.c $(SIMD_FLAGS) -o dist/simd.mjs
	@echo "✓ Build SIMD: dist/simd.mjs + dist/simd.wasm"

run: build
	$(NODE) wrapper.mjs

serve: build
	@echo "Ouvrir http://localhost:3000"
	$(PYTHON) -m http.server 3000

inspect: build
	@echo "Instructions SIMD detectees dans dist/simd.wasm:"
	@wasm2wat dist/simd.wasm | grep -E "v128|f32x4|i32x4" | head -n 20

clean:
	rm -rf dist

.PHONY: build build-scalar build-simd run serve inspect clean