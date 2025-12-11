build: hello.rs
	rustup target add wasm32-wasip1
	rustc hello.rs --target wasm32-wasip1 -O -C lto=fat -C opt-level=z -C panic=abort
	wasm-strip hello.wasm

run:
	wasmtime hello.wasm
