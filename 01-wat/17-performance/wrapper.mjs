import { readFile } from "node:fs/promises";

// Charger et instancier le module WebAssembly
const wasmBuffer = await readFile(
  new URL("./performance.wasm", import.meta.url)
);
const { instance } = await WebAssembly.instantiate(wasmBuffer);
const { sum_squares, fib, matrix_mul_sum } = instance.exports;

// === Utilitaires de benchmark ===
function benchmark(name, fn, iterations = 1) {
  const start = performance.now();
  let result;
  for (let i = 0; i < iterations; i++) {
    result = fn();
  }
  const end = performance.now();
  return { name, result, time: end - start, iterations };
}

function printResult({ name, result, time, iterations }) {
  console.log(
    `${name}: ${result} (${time.toFixed(3)} ms pour ${iterations} itération(s))`
  );
}

// === Implémentations JavaScript pour comparaison ===
function sumSquaresJS(n) {
  let sum = 0n;
  for (let i = 1n; i <= BigInt(n); i++) {
    sum += i * i;
  }
  return sum;
}

function fibJS(n) {
  if (n <= 1) return n;
  return fibJS(n - 1) + fibJS(n - 2);
}

function matrixMulSumJS(a11, a12, a21, a22, b11, b12, b21, b22) {
  const c11 = a11 * b11 + a12 * b21;
  const c12 = a11 * b12 + a12 * b22;
  const c21 = a21 * b11 + a22 * b21;
  const c22 = a21 * b12 + a22 * b22;
  return c11 + c12 + c21 + c22;
}

// === Tests de performance ===
console.log("=== Démonstration des performances WebAssembly ===\n");

console.log("1. Somme des carrés (1 à 100000):");
console.log("-".repeat(50));
const N = 100000;
printResult(benchmark("  WASM sum_squares", () => sum_squares(N)));
printResult(benchmark("  JS   sumSquaresJS", () => sumSquaresJS(N)));

console.log("\n2. Fibonacci récursif (n=35):");
console.log("-".repeat(50));
const FIB_N = 35;
printResult(benchmark("  WASM fib", () => fib(FIB_N)));
printResult(benchmark("  JS   fibJS", () => fibJS(FIB_N)));

console.log("\n3. Multiplication de matrices 2x2 (1M itérations):");
console.log("-".repeat(50));
const MATRIX_ITER = 1_000_000;
printResult(
  benchmark("  WASM matrix_mul_sum", () => {
    let sum = 0;
    for (let i = 0; i < MATRIX_ITER; i++) {
      sum += matrix_mul_sum(1, 2, 3, 4, 5, 6, 7, 8);
    }
    return sum;
  })
);
printResult(
  benchmark("  JS   matrixMulSumJS", () => {
    let sum = 0;
    for (let i = 0; i < MATRIX_ITER; i++) {
      sum += matrixMulSumJS(1, 2, 3, 4, 5, 6, 7, 8);
    }
    return sum;
  })
);

console.log("\n=== Applications bénéficiaires ===");
console.log("• Jeux vidéo (physique, IA, rendu 3D)");
console.log("• Traitement d'images/vidéo (filtres, compression)");
console.log("• Audio (synthèse, effets temps réel)");
console.log("• Applications scientifiques (simulations, calcul numérique)");
console.log("• Cryptographie (hash, chiffrement)");
