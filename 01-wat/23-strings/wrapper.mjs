/**
 * 23-strings - Passer des chaînes entre JS et WASM
 *
 * Démontre:
 * - JS → WASM : encoder et écrire une chaîne en mémoire
 * - WASM → JS : lire et décoder une chaîne depuis la mémoire
 * - Traitement de chaîne par WASM (toUpperCase)
 */

import { equal } from "node:assert";
import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Charger et instancier le module
const bytes = await readFile(__dirname + "/strings.wasm");
const { instance } = await WebAssembly.instantiate(bytes);

const { memory, getStringOffset, getStringLength, strlen, toUpperCase } =
  instance.exports;

// =====================================================
// Utilitaires pour les chaînes
// =====================================================

/**
 * Écrit une chaîne dans la mémoire WASM
 * @returns L'offset où la chaîne a été écrite
 */
function writeString(str, offset = 0) {
  const encoder = new TextEncoder();
  const bytes = encoder.encode(str + "\0"); // Ajouter null terminator
  const view = new Uint8Array(memory.buffer, offset, bytes.length);
  view.set(bytes);
  return offset;
}

/**
 * Lit une chaîne depuis la mémoire WASM
 */
function readString(offset, length) {
  const decoder = new TextDecoder();
  const bytes = new Uint8Array(memory.buffer, offset, length);
  return decoder.decode(bytes);
}

// =====================================================
// Test 1: Lire une chaîne stockée par WASM
// =====================================================
console.log("=== Test 1: WASM → JS ===");

const wasmStringOffset = getStringOffset();
const wasmStringLength = getStringLength();
const wasmString = readString(wasmStringOffset, wasmStringLength);

console.log(`Offset de la chaîne WASM: ${wasmStringOffset}`);
console.log(`Longueur: ${wasmStringLength}`);
console.log(`Chaîne lue: "${wasmString}"`);
equal(wasmString, "Hello from WASM");
console.log("");

// =====================================================
// Test 2: Écrire une chaîne depuis JS vers WASM
// =====================================================
console.log("=== Test 2: JS → WASM ===");

const jsString = "Hello, WASM!";
const jsStringOffset = 0; // Écrire au début de la mémoire
writeString(jsString, jsStringOffset);

// Utiliser strlen de WASM pour calculer la longueur
const calculatedLength = strlen(jsStringOffset);
console.log(`Chaîne envoyée: "${jsString}"`);
console.log(`Longueur calculée par WASM (strlen): ${calculatedLength}`);
equal(calculatedLength, jsString.length);
console.log("");

// =====================================================
// Test 3: Traitement de chaîne par WASM
// =====================================================
console.log("=== Test 3: Traitement par WASM (toUpperCase) ===");

const testString = "hello world";
const testOffset = 100;
writeString(testString, testOffset);

console.log(`Avant: "${testString}"`);

// Appeler toUpperCase de WASM
toUpperCase(testOffset, testString.length);

// Relire la chaîne modifiée
const upperString = readString(testOffset, testString.length);
console.log(`Après: "${upperString}"`);
equal(upperString, "HELLO WORLD");

console.log("\n✅ Tous les tests passés!");
