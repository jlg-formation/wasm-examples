/**
 * Démonstration des accès mémoire HEAP avec Emscripten
 * Question QCM: em_q13 - HEAP8/HEAP32/HEAPF64
 */

import { createRequire } from "module";
import { dirname } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const require = createRequire(import.meta.url);

// Charger le module Emscripten
const Module = require("./dist/heap.js");

// Attendre l'initialisation
await new Promise((resolve) => {
  Module.onRuntimeInitialized = resolve;
});

console.log("=== Démonstration des accès HEAP Emscripten ===\n");

// Obtenir les wrappers de fonctions
const getIntBufferPtr = Module.cwrap("getIntBufferPtr", "number", []);
const getFloatBufferPtr = Module.cwrap("getFloatBufferPtr", "number", []);
const fillIntBuffer = Module.cwrap("fillIntBuffer", null, []);
const fillFloatBuffer = Module.cwrap("fillFloatBuffer", null, []);
const sumIntBuffer = Module.cwrap("sumIntBuffer", "number", []);
const sumFloatBuffer = Module.cwrap("sumFloatBuffer", "number", []);
const allocateIntArray = Module.cwrap("allocateIntArray", "number", ["number"]);
const freeIntArray = Module.cwrap("freeIntArray", null, ["number"]);

// ============================================
// 1. HEAP32 - Accès aux entiers 32 bits
// ============================================
console.log("1. HEAP32 - Entiers 32 bits");
console.log("-".repeat(40));

// Remplir le buffer côté C
fillIntBuffer();

// Obtenir l'adresse du buffer
const intPtr = getIntBufferPtr();
console.log(`   Adresse du buffer: ${intPtr}`);

// Lire les valeurs via HEAP32
// Note: On divise par 4 car HEAP32 indexe par éléments de 4 octets
console.log("   Valeurs lues via HEAP32:");
const intValues = [];
for (let i = 0; i < 10; i++) {
  const value = Module.HEAP32[(intPtr >> 2) + i]; // >> 2 équivaut à / 4
  intValues.push(value);
}
console.log(`   [${intValues.join(", ")}]`);

// Vérification avec la fonction C
console.log(`   Somme calculée en C: ${sumIntBuffer()}`);
console.log(`   Somme calculée en JS: ${intValues.reduce((a, b) => a + b, 0)}`);

// ============================================
// 2. HEAPF64 - Accès aux flottants 64 bits
// ============================================
console.log("\n2. HEAPF64 - Flottants 64 bits (double)");
console.log("-".repeat(40));

// Remplir le buffer côté C
fillFloatBuffer();

// Obtenir l'adresse du buffer
const floatPtr = getFloatBufferPtr();
console.log(`   Adresse du buffer: ${floatPtr}`);

// Lire les valeurs via HEAPF64
// Note: On divise par 8 car HEAPF64 indexe par éléments de 8 octets
console.log("   Valeurs lues via HEAPF64:");
const floatValues = [];
for (let i = 0; i < 10; i++) {
  const value = Module.HEAPF64[(floatPtr >> 3) + i]; // >> 3 équivaut à / 8
  floatValues.push(value.toFixed(1));
}
console.log(`   [${floatValues.join(", ")}]`);

// Vérification
console.log(`   Somme calculée en C: ${sumFloatBuffer()}`);

// ============================================
// 3. Écriture dans HEAP depuis JavaScript
// ============================================
console.log("\n3. Écriture dans HEAP depuis JavaScript");
console.log("-".repeat(40));

// Modifier directement les valeurs du buffer d'entiers
Module.HEAP32[(intPtr >> 2) + 0] = 100;
Module.HEAP32[(intPtr >> 2) + 1] = 200;
Module.HEAP32[(intPtr >> 2) + 2] = 300;

console.log("   Écrit [100, 200, 300, ...] via HEAP32");
console.log(`   Nouvelle somme calculée en C: ${sumIntBuffer()}`);

// ============================================
// 4. Allocation dynamique
// ============================================
console.log("\n4. Allocation dynamique avec malloc");
console.log("-".repeat(40));

// Allouer un tableau de 5 entiers
const arrayPtr = allocateIntArray(5);
console.log(`   Alloué 5 entiers à l'adresse: ${arrayPtr}`);

// Écrire des valeurs
for (let i = 0; i < 5; i++) {
  Module.HEAP32[(arrayPtr >> 2) + i] = (i + 1) * 100;
}
console.log("   Écrit [100, 200, 300, 400, 500]");

// Relire
const allocatedValues = [];
for (let i = 0; i < 5; i++) {
  allocatedValues.push(Module.HEAP32[(arrayPtr >> 2) + i]);
}
console.log(`   Relu: [${allocatedValues.join(", ")}]`);

// Libérer
freeIntArray(arrayPtr);
console.log("   Mémoire libérée");

// ============================================
// 5. Récapitulatif des vues HEAP
// ============================================
console.log("\n5. Récapitulatif des vues HEAP");
console.log("-".repeat(40));
console.log("   | Vue      | Type C   | Octets | Shift |");
console.log("   |----------|----------|--------|-------|");
console.log("   | HEAP8    | int8_t   | 1      | >> 0  |");
console.log("   | HEAPU8   | uint8_t  | 1      | >> 0  |");
console.log("   | HEAP16   | int16_t  | 2      | >> 1  |");
console.log("   | HEAP32   | int32_t  | 4      | >> 2  |");
console.log("   | HEAPF32  | float    | 4      | >> 2  |");
console.log("   | HEAPF64  | double   | 8      | >> 3  |");

console.log(
  "\n💡 Conseil: Utilisez getValue/setValue pour un accès simplifié:"
);
console.log(
  '   Module.getValue(ptr, "i32") / Module.setValue(ptr, value, "i32")'
);
