// Démonstration : applications bénéficiant de WebAssembly
// Question QCM : q17

import { readFile } from "node:fs/promises";

const wasmBuffer = await readFile(
  new URL("./performance.wasm", import.meta.url)
);
const { instance } = await WebAssembly.instantiate(wasmBuffer);

const { sum_squares, invert_colors, memory } = instance.exports;

console.log("=== Applications bénéficiant de WebAssembly ===\n");

// 1. Calcul intensif : somme des carrés
console.log("1. Calcul intensif (somme des carrés de 1 à N):");

const N = 1_000_000;

// Version WASM
const startWasm = performance.now();
const resultWasm = sum_squares(N);
const timeWasm = performance.now() - startWasm;

// Version JavaScript pure
const startJS = performance.now();
let resultJS = 0n;
for (let i = 1; i <= N; i++) {
  resultJS += BigInt(i) * BigInt(i);
}
const timeJS = performance.now() - startJS;

console.log(`   N = ${N.toLocaleString()}`);
console.log(`   WASM: ${resultWasm} (${timeWasm.toFixed(2)} ms)`);
console.log(`   JS:   ${resultJS} (${timeJS.toFixed(2)} ms)`);
console.log(`   Ratio: ${(timeJS / timeWasm).toFixed(1)}x`);

// 2. Traitement d'image simulé
console.log("\n2. Traitement d'image (inversion de couleurs):");

const numPixels = 10000;
const imageData = new Uint8Array(memory.buffer, 0, numPixels * 4);

// Initialiser avec des données de test
for (let i = 0; i < numPixels; i++) {
  imageData[i * 4] = 100; // R
  imageData[i * 4 + 1] = 150; // G
  imageData[i * 4 + 2] = 200; // B
  imageData[i * 4 + 3] = 255; // A
}

console.log(
  `   Avant: R=${imageData[0]}, G=${imageData[1]}, B=${imageData[2]}`
);

invert_colors(0, numPixels);

console.log(
  `   Après: R=${imageData[0]}, G=${imageData[1]}, B=${imageData[2]}`
);
console.log(`   (255 - 100 = 155, 255 - 150 = 105, 255 - 200 = 55)`);

console.log("\n=== WASM excelle pour les calculs intensifs ===");
console.log("Cas d'usage : jeux 3D, traitement vidéo, CAO, crypto, simulation");
