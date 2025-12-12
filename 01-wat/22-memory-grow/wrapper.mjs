/**
 * 22-memory-grow - Croissance dynamique de la mémoire
 *
 * Démontre:
 * - memory.size / getMemorySize() pour lire la taille
 * - memory.grow / growMemory() pour augmenter la taille
 * - Le détachement du ArrayBuffer après grow
 */

import { equal, notEqual } from "node:assert";
import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const PAGE_SIZE = 65536; // 64 KB par page

// Charger et instancier le module
const bytes = await readFile(__dirname + "/memory-grow.wasm");
const { instance } = await WebAssembly.instantiate(bytes);

const { memory, getMemorySize, growMemory, writeValue, readValue } =
  instance.exports;

// =====================================================
// Test 1: Taille initiale
// =====================================================
console.log("=== Test 1: Taille initiale ===");
const initialSize = getMemorySize();
console.log(
  `Taille initiale: ${initialSize} page(s) (${initialSize * PAGE_SIZE} octets)`
);
equal(initialSize, 1, "Devrait commencer avec 1 page");

// Garder une référence au buffer initial
const initialBuffer = memory.buffer;
console.log(`Buffer initial byteLength: ${initialBuffer.byteLength}\n`);

// =====================================================
// Test 2: Croissance avec memory.grow (côté WAT)
// =====================================================
console.log("=== Test 2: Croissance côté WAT ===");
console.log("Croissance de 2 pages via growMemory()...");

const oldSize = growMemory(2);
console.log(`Ancienne taille retournée: ${oldSize} page(s)`);
equal(oldSize, 1, "Devrait retourner l'ancienne taille");

const newSize = getMemorySize();
console.log(
  `Nouvelle taille: ${newSize} page(s) (${newSize * PAGE_SIZE} octets)\n`
);
equal(newSize, 3, "Devrait maintenant avoir 3 pages");

// =====================================================
// Test 3: Croissance avec memory.grow() (côté JS)
// =====================================================
console.log("=== Test 3: Croissance côté JS ===");
console.log("Croissance de 1 page via memory.grow()...");

const oldSizeJS = memory.grow(1);
console.log(`Ancienne taille retournée: ${oldSizeJS} page(s)`);
equal(oldSizeJS, 3);

const finalSize = getMemorySize();
console.log(
  `Taille finale: ${finalSize} page(s) (${finalSize * PAGE_SIZE} octets)\n`
);
equal(finalSize, 4);

// =====================================================
// Test 4: Détachement du buffer après grow
// =====================================================
console.log("=== Test 4: Détachement du buffer ===");
console.log(
  `Buffer initial byteLength après grow: ${initialBuffer.byteLength}`
);
equal(initialBuffer.byteLength, 0, "Le buffer initial doit être détaché (0)");

const currentBuffer = memory.buffer;
console.log(`Nouveau buffer byteLength: ${currentBuffer.byteLength}`);
equal(currentBuffer.byteLength, finalSize * PAGE_SIZE);
console.log("⚠️  Toujours récupérer memory.buffer après grow!\n");

// =====================================================
// Test 5: Écriture/lecture après croissance
// =====================================================
console.log("=== Test 5: Écriture dans la nouvelle mémoire ===");
// Écrire à une adresse au-delà de la taille initiale
const addr = 2 * PAGE_SIZE + 100; // Dans la 3ème page
const testValue = 12345;

writeValue(addr, testValue);
const readBack = readValue(addr);
console.log(`Écrit ${testValue} à l'adresse ${addr}`);
console.log(`Lu: ${readBack}`);
equal(readBack, testValue);

console.log("\n✅ Tous les tests passés!");
