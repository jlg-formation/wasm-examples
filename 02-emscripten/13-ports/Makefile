# Emscripten Ports - Bibliothèques tierces
# Question QCM: em_q19

NODE := $(shell which node)

# Port zlib activé avec -sUSE_ZLIB=1
ZLIB_FLAG := -sUSE_ZLIB=1

EXPORTS := -sEXPORTED_FUNCTIONS=_get_zlib_version,_compress_data,_decompress_data,_calculate_crc32
RUNTIME := -sEXPORTED_RUNTIME_METHODS=ccall,cwrap,UTF8ToString,stringToUTF8,lengthBytesUTF8

build:
	@mkdir -p dist
	@echo "Compilation avec zlib port..."
	@echo "(Le port sera téléchargé automatiquement si nécessaire)"
	emcc ports.c -O2 $(ZLIB_FLAG) -o dist/ports.js $(EXPORTS) $(RUNTIME)
	@echo "✓ Compilé avec zlib"

# Liste tous les ports disponibles
list-ports:
	emcc --show-ports

# Affiche le cache des ports
show-cache:
	@echo "Cache Emscripten:"
	@ls -la ~/.emscripten_cache/ports 2>/dev/null || echo "Aucun port en cache"

run:
	$(NODE) wrapper.mjs

clean:
	rm -rf dist

.PHONY: build list-ports show-cache run clean
