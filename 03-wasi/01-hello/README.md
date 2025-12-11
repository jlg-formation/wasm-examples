# Hello in Rust

Install the official Rust toolchain:
https://www.rust-lang.org/tools/install

Normally it should be:

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## File size reduction

Some options have been added to reduce the wasm file size.

```
rustc hello.rs --target wasm32-wasip1
rustc hello.rs --target wasm32-wasip1 -O -C lto=fat -C opt-level=z -C panic=abort
```
