//@ts-nocheck
// Démonstration de la sécurité sandbox WebAssembly
// Question QCM : q6

import { readFile } from "node:fs/promises";

const wasmBuffer = await readFile(new URL("./sandbox.wasm", import.meta.url));
const { instance } = await WebAssembly.instantiate(wasmBuffer);

const { safe_write, safe_read, try_out_of_bounds, memory } = instance.exports;

console.log("=== Démonstration Sandbox WebAssembly ===\n");

// 1. Écriture/lecture dans les limites (OK)
console.log("1. Accès dans les limites de la mémoire (64 Ko):");
safe_write(0, 42);
safe_write(100, 123);
console.log(`   Adresse 0: ${safe_read(0)}`);
console.log(`   Adresse 100: ${safe_read(100)}`);

// 2. Vérification de la taille mémoire
console.log(
  `\n2. Taille mémoire: ${memory.buffer.byteLength} octets (1 page = 64 Ko)`
);

// 3. Tentative d'accès hors limites (TRAP)
console.log("\n3. Tentative d'accès hors limites (adresse 70000):");
try {
  const value = try_out_of_bounds(70000); // Adresse hors limites
  console.log(`   Valeur: ${value}`); // Ne sera jamais atteint
} catch (error) {
  console.log(`   ❌ TRAP détectée: ${error.name}`);
  console.log(`   Message: ${error.message}`);
}

console.log(
  "\n=== La sandbox protège contre les accès mémoire non autorisés ==="
);
