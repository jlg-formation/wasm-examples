# AssemblyScript Strings

Demonstrates passing strings between JavaScript and AssemblyScript using `__newString()` and `__getString()`.

## QCM Questions

> **as_q11**: Comment passe-t-on une chaîne de caractères JavaScript à une fonction AssemblyScript ?  
> **Answer**: En utilisant `__newString()` du loader qui alloue et copie la chaîne dans la mémoire WASM.

> **as_q13**: Comment récupère-t-on une chaîne retournée par une fonction AssemblyScript en JavaScript ?  
> **Answer**: En utilisant `__getString(ptr)` du loader qui lit la chaîne depuis la mémoire WASM.

## Key Concept

Strings cannot be passed directly between JS and WASM. The AssemblyScript loader provides helper functions:

- `__newString(str)` - Allocates and copies a JS string into WASM memory
- `__getString(ptr)` - Reads an AS string from WASM memory into JS

## Run the Example

```bash
# Install dependencies
npm install

# Build
npm run asbuild

# Run
npm start
```

## Expected Output

```
Greeting: Hello, WebAssembly!
Reversed: !dlroW olleH
Length: 11
```
