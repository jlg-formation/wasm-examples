.PHONY: all clean run

WASM = performance.wasm
WAT = performance.wat

all: $(WASM)

$(WASM): $(WAT)
	wat2wasm $< -o $@

run: $(WASM)
	node wrapper.mjs

clean:
	rm -f $(WASM)
