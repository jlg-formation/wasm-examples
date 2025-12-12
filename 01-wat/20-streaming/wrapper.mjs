/**
 * 20-streaming - Démonstration de WebAssembly.instantiateStreaming
 *
 * Note: instantiateStreaming nécessite une Response HTTP.
 * En Node.js, on compare les deux approches :
 * - instantiate (classique, avec buffer)
 * - Simulation du concept streaming
 *
 * Dans un navigateur avec fetch(), utilisez instantiateStreaming directement.
 */

import { equal } from "node:assert";
import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

console.log("=== Comparaison des méthodes d'instanciation ===\n");

// Charger le fichier WASM
const wasmPath = __dirname + "/streaming.wasm";
const wasmBuffer = await readFile(wasmPath);

// =====================================================
// Méthode 1: WebAssembly.instantiate (classique)
// =====================================================
console.log("1. WebAssembly.instantiate (méthode classique):");
console.log("   - Charge le buffer complet en mémoire");
console.log("   - Puis compile et instancie");

const startClassic = performance.now();
const resultClassic = await WebAssembly.instantiate(wasmBuffer);
const endClassic = performance.now();

console.log(`   → Temps: ${(endClassic - startClassic).toFixed(3)} ms\n`);

// =====================================================
// Méthode 2: WebAssembly.compileStreaming (simulation)
// =====================================================
console.log("2. WebAssembly.instantiateStreaming (dans navigateur):");
console.log("   - Compile PENDANT le téléchargement");
console.log("   - Plus efficace pour les gros modules");
console.log("   - Nécessite: Content-Type: application/wasm");
console.log("");

// En Node.js, on peut utiliser compileStreaming avec un ReadableStream
// mais c'est plus complexe. Voici le code pour navigateur:
console.log("   Code navigateur:");
console.log("   ```javascript");
console.log("   const { instance } = await WebAssembly.instantiateStreaming(");
console.log('     fetch("streaming.wasm")');
console.log("   );");
console.log("   ```\n");

// =====================================================
// Test du module instancié
// =====================================================
console.log("=== Test du module ===\n");

const { add, getAnswer } = resultClassic.instance.exports;

// Test add
const result1 = add(10, 32);
console.log(`add(10, 32) = ${result1}`);
equal(result1, 42);

// Test getAnswer
const result2 = getAnswer();
console.log(`getAnswer() = ${result2}`);
equal(result2, 42);

console.log("\n✅ Module fonctionnel !");
console.log("\n💡 Pour tester instantiateStreaming:");
console.log("   make serve");
console.log("   Puis ouvrez http://localhost:3000/index.html");
