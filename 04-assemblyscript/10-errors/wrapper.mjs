//@ts-nocheck

// Wrapper Node.js pour tester la gestion des erreurs AssemblyScript
// Question QCM: as_q19 - assert() et abort()

import { readFile } from "fs/promises";

// Charger le module WASM
const wasmBuffer = await readFile(
  new URL("./build/debug.wasm", import.meta.url)
);
const wasmModule = await WebAssembly.compile(wasmBuffer);

// Imports pour gérer les abort (messages d'erreur)
const imports = {
  env: {
    // Fonction appelée lors d'un abort()
    abort(messagePtr, fileNamePtr, line, column) {
      console.error(`❌ ABORT à ligne ${line}:${column}`);
      throw new Error("Module WASM a appelé abort()");
    },
  },
};

const instance = await WebAssembly.instantiate(wasmModule, imports);
const { divide, validateAge, processData, safeOperation } = instance.exports;

console.log("=== Test des erreurs AssemblyScript ===\n");

// Test 1: Opération sûre (pas d'erreur)
console.log("1. Opération sûre:");
console.log(`   safeOperation(10, 20) = ${safeOperation(10, 20)}`);

// Test 2: Division normale
console.log("\n2. Division normale:");
console.log(`   divide(20, 4) = ${divide(20, 4)}`);

// Test 3: Division par zéro (assert échoue)
console.log("\n3. Division par zéro (assert échoue):");
try {
  divide(10, 0);
  console.log("   ⚠️ Pas d'erreur (inattendu)");
} catch (e) {
  console.log(`   ✓ Erreur attrapée: ${e.message}`);
}

// Test 4: Validation d'âge normale
console.log("\n4. Validation d'âge normale:");
try {
  validateAge(25);
  console.log("   ✓ Âge 25 validé");
} catch (e) {
  console.log(`   ❌ Erreur: ${e.message}`);
}

// Test 5: Âge négatif (abort)
console.log("\n5. Âge négatif (abort):");
try {
  validateAge(-5);
  console.log("   ⚠️ Pas d'erreur (inattendu)");
} catch (e) {
  console.log(`   ✓ Erreur attrapée: ${e.message}`);
}

// Test 6: processData normal
console.log("\n6. processData normal:");
console.log(`   processData(50) = ${processData(50)}`);

// Test 7: processData avec valeur trop grande
console.log("\n7. processData avec valeur trop grande:");
try {
  processData(2000000);
  console.log("   ⚠️ Pas d'erreur (inattendu)");
} catch (e) {
  console.log(`   ✓ Erreur attrapée: ${e.message}`);
}

console.log("\n=== Fin des tests ===");
console.log("\n💡 Note: try/catch n'existe pas en AssemblyScript.");
console.log("   Les erreurs sont gérées côté JavaScript après un abort().");
