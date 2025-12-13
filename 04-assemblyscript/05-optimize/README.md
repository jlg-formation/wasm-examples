# AssemblyScript Optimization

Demonstrates the `--optimize` compilation option for production builds.

## QCM Question

> **as_q10**: Quelle option de compilation AssemblyScript produit un module optimisé pour la production ?  
> **Answer**: L'option `--optimize` ou `-O` qui active les optimisations de taille et vitesse.

## Key Concept

The `--optimize` flag activates Binaryen optimizations to reduce module size and improve performance.

## Optimization Levels

| Flag  | Description             |
| ----- | ----------------------- |
| `-O`  | Default optimization    |
| `-O1` | Light optimization      |
| `-O2` | Medium optimization     |
| `-O3` | Aggressive optimization |
| `-Oz` | Optimize for size       |
| `-Os` | Balance size and speed  |

## Run the Example

```bash
# Install dependencies
npm install

# Build both versions
npm run asbuild

# Compare sizes
ls -la build/
```

## Expected Output

The release build should be significantly smaller than the debug build:

```
debug.wasm    ~2-3KB (with debug info)
release.wasm  ~500B  (optimized)
```

Compare the fibonacci functions in both .wat files:

- `release.wat`: 574 characters
- `debug.wat`: 621 characters
