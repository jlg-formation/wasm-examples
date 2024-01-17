build: hello.rs
	rustup target add wasm32-wasi
	rustc hello.rs --target wasm32-wasi

run:
	wasmtime hello.wasm
