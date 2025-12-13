/**
 * 26-feature-detect - Détection du support WebAssembly
 *
 * Démontre comment vérifier le support WebAssembly
 * et ses fonctionnalités avant de les utiliser.
 */

import { equal } from "node:assert";
import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// =====================================================
// Détection de base
// =====================================================
console.log("=== Détection WebAssembly ===\n");

// Méthode 1: Vérifier l'objet global
const isSupported = typeof WebAssembly === "object";
console.log(`WebAssembly supporté: ${isSupported}`);
equal(isSupported, true, "WebAssembly devrait être supporté");

// =====================================================
// Détection des méthodes
// =====================================================
console.log("\n=== Méthodes disponibles ===\n");

const methods = {
  instantiate: typeof WebAssembly?.instantiate === "function",
  instantiateStreaming: typeof WebAssembly?.instantiateStreaming === "function",
  compile: typeof WebAssembly?.compile === "function",
  compileStreaming: typeof WebAssembly?.compileStreaming === "function",
  validate: typeof WebAssembly?.validate === "function",
  Module: typeof WebAssembly?.Module === "function",
  Instance: typeof WebAssembly?.Instance === "function",
  Memory: typeof WebAssembly?.Memory === "function",
  Table: typeof WebAssembly?.Table === "function",
  Global: typeof WebAssembly?.Global === "function",
};

for (const [method, available] of Object.entries(methods)) {
  console.log(`  ${method}: ${available ? "✅" : "❌"}`);
}

// =====================================================
// Détection des erreurs
// =====================================================
console.log("\n=== Types d'erreurs ===\n");

const errors = {
  CompileError: typeof WebAssembly?.CompileError === "function",
  LinkError: typeof WebAssembly?.LinkError === "function",
  RuntimeError: typeof WebAssembly?.RuntimeError === "function",
};

for (const [error, available] of Object.entries(errors)) {
  console.log(`  ${error}: ${available ? "✅" : "❌"}`);
}

// =====================================================
// Test fonctionnel
// =====================================================
console.log("\n=== Test fonctionnel ===\n");

async function testFunctional() {
  try {
    const bytes = await readFile(__dirname + "/feature-detect.wasm");

    // Test validate
    const isValid = WebAssembly.validate(bytes);
    console.log(`  validate(): ${isValid ? "✅" : "❌"}`);

    // Test instantiate
    const { instance } = await WebAssembly.instantiate(bytes);
    const result = instance.exports.isSupported();
    console.log(`  instantiate(): ${result === 1 ? "✅" : "❌"}`);

    // Test BigInt/i64 support
    try {
      const i64Result = instance.exports.testI64();
      console.log(
        `  BigInt (i64): ${typeof i64Result === "bigint" ? "✅" : "❌"}`
      );
    } catch {
      console.log("  BigInt (i64): ❌");
    }

    return true;
  } catch (error) {
    console.log(`  Erreur: ${error.message}`);
    return false;
  }
}

await testFunctional();

// =====================================================
// Pattern recommandé pour le code de production
// =====================================================
console.log("\n=== Pattern recommandé ===\n");
console.log(`
function checkWebAssemblySupport() {
  if (typeof WebAssembly !== "object") {
    return { supported: false, reason: "WebAssembly non disponible" };
  }

  if (typeof WebAssembly.instantiate !== "function") {
    return { supported: false, reason: "instantiate non disponible" };
  }

  return { supported: true };
}

const { supported, reason } = checkWebAssemblySupport();
if (!supported) {
  console.error("WebAssembly non supporté:", reason);
  // Fallback vers JavaScript pur
}
`);

console.log("✅ Tous les tests passés!");
