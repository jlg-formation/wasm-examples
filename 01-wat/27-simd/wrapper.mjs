/**
 * 27-simd - Instructions SIMD en WAT
 *
 * Démontre:
 * - L'utilisation de v128 pour traiter 4 lanes i32 d'un coup
 * - Une variante f32x4.mul sur 4 flottants en parallèle
 * - Le passage par la mémoire linéaire, car JS ne manipule pas v128 directement
 * - Une addition vectorielle et une réduction scalaire
 */

import { deepEqual, equal, ok } from "node:assert";
import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const bytes = await readFile(__dirname + "/simd.wasm");
equal(WebAssembly.validate(bytes), true, "Le module SIMD doit être valide");

const { instance } = await WebAssembly.instantiate(bytes);
const { memory, addVectors, mulF32Vectors, sumLanes } = instance.exports;

const i32Lanes = new Int32Array(memory.buffer);
const f32Lanes = new Float32Array(memory.buffer);

const leftOffset = 0;
const rightOffset = 16;
const resultOffset = 32;
const floatLeftOffset = 48;
const floatRightOffset = 64;
const floatResultOffset = 80;

const leftIndex = leftOffset / Int32Array.BYTES_PER_ELEMENT;
const rightIndex = rightOffset / Int32Array.BYTES_PER_ELEMENT;
const resultIndex = resultOffset / Int32Array.BYTES_PER_ELEMENT;
const floatLeftIndex = floatLeftOffset / Float32Array.BYTES_PER_ELEMENT;
const floatRightIndex = floatRightOffset / Float32Array.BYTES_PER_ELEMENT;
const floatResultIndex = floatResultOffset / Float32Array.BYTES_PER_ELEMENT;

console.log("=== Test 1: Addition SIMD i32x4 ===");

i32Lanes.set([1, 2, 3, 4], leftIndex);
i32Lanes.set([10, 20, 30, 40], rightIndex);

console.log("Vecteur A:", Array.from(i32Lanes.slice(leftIndex, leftIndex + 4)));
console.log(
  "Vecteur B:",
  Array.from(i32Lanes.slice(rightIndex, rightIndex + 4)),
);

addVectors(leftOffset, rightOffset, resultOffset);

const result = Array.from(i32Lanes.slice(resultIndex, resultIndex + 4));
console.log("Résultat:", result);
deepEqual(result, [11, 22, 33, 44]);

console.log("\n=== Test 2: Réduction scalaire ===");

const total = sumLanes(resultOffset);
console.log(`Somme des lanes = ${total}`);
equal(total, 110);

console.log("\n=== Test 3: Multiplication SIMD f32x4 ===");

f32Lanes.set([1.5, 2.0, 3.5, 4.0], floatLeftIndex);
f32Lanes.set([2.0, 0.5, 4.0, 1.25], floatRightIndex);

console.log(
  "Vecteur F32 A:",
  Array.from(f32Lanes.slice(floatLeftIndex, floatLeftIndex + 4)),
);
console.log(
  "Vecteur F32 B:",
  Array.from(f32Lanes.slice(floatRightIndex, floatRightIndex + 4)),
);

mulF32Vectors(floatLeftOffset, floatRightOffset, floatResultOffset);

const floatResult = Array.from(
  f32Lanes.slice(floatResultIndex, floatResultIndex + 4),
);
console.log("Résultat F32:", floatResult);

const expectedFloatResult = [3, 1, 14, 5];
for (const [index, value] of floatResult.entries()) {
  ok(
    Math.abs(value - expectedFloatResult[index]) < 1e-6,
    `Lane f32 ${index} incorrecte: ${value}`,
  );
}

console.log("\n=== Test 4: Pourquoi passer par la mémoire ? ===");
console.log(
  "Le type v128 n'est pas exposé directement dans l'API JS de WebAssembly.",
);
console.log(
  "On écrit donc les données dans memory.buffer, WASM applique SIMD, puis JS relit le résultat.",
);

console.log("\n✅ Tous les tests passés!");
