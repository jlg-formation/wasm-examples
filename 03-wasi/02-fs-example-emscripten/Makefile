EMCC ?= emcc
WASM2WAT ?= wasm2wat
WASMTIME ?= wasmtime
DIST_DIR := dist
OUT_DIR := $(DIST_DIR)/out
WASM := $(DIST_DIR)/write_file.wasm
WAT := $(DIST_DIR)/write_file.wat
CONTENT ?= bonjour
FILENAME ?= message.txt

build: $(WAT)

$(WASM): write_file.c
	mkdir -p $(DIST_DIR)
	$(EMCC) write_file.c -o $(WASM) -sSTANDALONE_WASM

$(WAT): $(WASM)
	$(WASM2WAT) -o $(WAT) $(WASM)

run: build
	mkdir -p $(OUT_DIR)
	cd $(OUT_DIR) && $(WASMTIME) --dir . ../write_file.wasm $(CONTENT) $(FILENAME)

clean:
	rm -rf $(DIST_DIR)