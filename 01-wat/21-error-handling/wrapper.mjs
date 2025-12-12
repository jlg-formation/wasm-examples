/**
 * 21-error-handling - Gestion des erreurs WebAssembly
 *
 * Démontre les trois types d'erreurs WebAssembly :
 * - CompileError : module binaire invalide
 * - LinkError : imports non satisfaits
 * - RuntimeError : erreur pendant l'exécution (trap)
 */

import { ok } from "node:assert";
import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// =====================================================
// Test 1: CompileError - Module invalide
// =====================================================
console.log("=== Test 1: CompileError ===");
console.log("Un CompileError survient quand le binaire WASM est invalide.\n");

try {
  // Créer un buffer avec un magic number invalide
  const invalidWasm = new Uint8Array([
    0x00,
    0x00,
    0x00,
    0x00, // Mauvais magic (devrait être 0x00, 0x61, 0x73, 0x6D)
    0x01,
    0x00,
    0x00,
    0x00, // Version
  ]);

  await WebAssembly.compile(invalidWasm);
  console.log("❌ Aurait dû lever une erreur");
} catch (error) {
  if (error instanceof WebAssembly.CompileError) {
    console.log(`✅ CompileError attrapé: ${error.message}\n`);
  } else {
    console.log(`❌ Mauvais type d'erreur: ${error.constructor.name}`);
  }
}

// =====================================================
// Test 2: LinkError - Import manquant
// =====================================================
console.log("=== Test 2: LinkError ===");
console.log("Un LinkError survient quand un import requis est manquant.\n");

try {
  const wasmBuffer = await readFile(__dirname + "/error-handling.wasm");

  // Instancier SANS fournir l'import requis
  await WebAssembly.instantiate(wasmBuffer, {
    env: {
      // requiredFunction est manquant !
    },
  });
  console.log("❌ Aurait dû lever une erreur");
} catch (error) {
  if (error instanceof WebAssembly.LinkError) {
    console.log(`✅ LinkError attrapé: ${error.message}\n`);
  } else {
    console.log(`❌ Mauvais type d'erreur: ${error.constructor.name}`);
  }
}

// =====================================================
// Test 3: RuntimeError - Trap (unreachable)
// =====================================================
console.log("=== Test 3: RuntimeError ===");
console.log(
  "Un RuntimeError survient lors d'un trap (unreachable, div/0, etc.).\n"
);

try {
  const wasmBuffer = await readFile(__dirname + "/valid-module.wasm");
  const { instance } = await WebAssembly.instantiate(wasmBuffer);

  // Appeler la fonction qui exécute 'unreachable'
  instance.exports.triggerTrap();
  console.log("❌ Aurait dû lever une erreur");
} catch (error) {
  if (error instanceof WebAssembly.RuntimeError) {
    console.log(`✅ RuntimeError attrapé: ${error.message}\n`);
  } else {
    console.log(`❌ Mauvais type d'erreur: ${error.constructor.name}`);
  }
}

// =====================================================
// Résumé
// =====================================================
console.log("=== Résumé ===");
console.log("┌─────────────────┬────────────────────────────────────┐");
console.log("│ Type d'erreur   │ Cause                              │");
console.log("├─────────────────┼────────────────────────────────────┤");
console.log("│ CompileError    │ Binaire WASM malformé              │");
console.log("│ LinkError       │ Import requis non fourni           │");
console.log("│ RuntimeError    │ Trap: unreachable, div/0, etc.     │");
console.log("└─────────────────┴────────────────────────────────────┘");
