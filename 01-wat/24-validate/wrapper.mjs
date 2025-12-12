/**
 * 24-validate - WebAssembly.validate()
 *
 * Démontre comment valider un module WebAssembly
 * avant de l'instancier.
 */

import { equal } from "node:assert";
import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// =====================================================
// Test 1: Module valide
// =====================================================
console.log("=== Test 1: Module valide ===");

const validWasm = await readFile(__dirname + "/validate.wasm");
const isValid = WebAssembly.validate(validWasm);

console.log(`Le module est valide: ${isValid}`);
equal(isValid, true, "Le module compilé devrait être valide");
console.log("");

// =====================================================
// Test 2: Module invalide (magic number incorrect)
// =====================================================
console.log("=== Test 2: Module invalide (magic number incorrect) ===");

const invalidMagic = new Uint8Array([
  0x00,
  0x00,
  0x00,
  0x00, // Mauvais magic (devrait être 0x00, 0x61, 0x73, 0x6D)
  0x01,
  0x00,
  0x00,
  0x00, // Version 1
]);

const isValidBadMagic = WebAssembly.validate(invalidMagic);
console.log(`Le module est valide: ${isValidBadMagic}`);
equal(
  isValidBadMagic,
  false,
  "Le module avec mauvais magic devrait être invalide"
);
console.log("");

// =====================================================
// Test 3: Module vide
// =====================================================
console.log("=== Test 3: Module vide ===");

const emptyModule = new Uint8Array([]);
const isValidEmpty = WebAssembly.validate(emptyModule);

console.log(`Le module est valide: ${isValidEmpty}`);
equal(isValidEmpty, false, "Un buffer vide devrait être invalide");
console.log("");

// =====================================================
// Test 4: Module avec seulement le header valide
// =====================================================
console.log("=== Test 4: Header valide mais module incomplet ===");

const headerOnly = new Uint8Array([
  0x00,
  0x61,
  0x73,
  0x6d, // Magic: \0asm
  0x01,
  0x00,
  0x00,
  0x00, // Version 1
]);

const isValidHeaderOnly = WebAssembly.validate(headerOnly);
console.log(`Le module est valide: ${isValidHeaderOnly}`);
// Un module avec juste le header est techniquement valide (module vide)
console.log("(Un module vide avec header valide est accepté)\n");

// =====================================================
// Test 5: Valider avant d'instancier (pattern recommandé)
// =====================================================
console.log("=== Test 5: Pattern recommandé ===");
console.log("Code:");
console.log(`
  async function loadModule(bytes) {
    if (!WebAssembly.validate(bytes)) {
      throw new Error("Invalid WebAssembly module");
    }
    return WebAssembly.instantiate(bytes);
  }
`);

// Démonstration
async function loadModule(bytes) {
  if (!WebAssembly.validate(bytes)) {
    throw new Error("Invalid WebAssembly module");
  }
  return WebAssembly.instantiate(bytes);
}

try {
  await loadModule(invalidMagic);
} catch (error) {
  console.log(`Erreur attrapée: ${error.message}`);
}

console.log("\n✅ Tous les tests passés!");
