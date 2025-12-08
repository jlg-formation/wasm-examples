build: hello.rs
	rustup target add wasm32-wasip1
	rustc hello.rs --target wasm32-wasip1

run:
	wasmtime hello.wasm
