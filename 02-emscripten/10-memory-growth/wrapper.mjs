/**
 * Démonstration de la croissance mémoire dynamique Emscripten
 * Question QCM: em_q14 - -sALLOW_MEMORY_GROWTH
 */

import { createRequire } from "module";
import { dirname } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const require = createRequire(import.meta.url);

// Charger le module Emscripten
const Module = require("./dist/memory-growth.js");

// Attendre l'initialisation
await new Promise((resolve) => {
  Module.onRuntimeInitialized = resolve;
});

console.log("=== Démonstration ALLOW_MEMORY_GROWTH ===\n");

// Wrappers de fonctions
const allocateBlock = Module.cwrap("allocateBlock", "number", ["number"]);
const forceGrowth = Module.cwrap("forceGrowth", "number", ["number", "number"]);
const getMemoryPages = Module.cwrap("getMemoryPages", "number", []);

// Fonction utilitaire pour afficher la taille
function formatSize(bytes) {
  if (bytes >= 1024 * 1024) {
    return (bytes / (1024 * 1024)).toFixed(2) + " MB";
  } else if (bytes >= 1024) {
    return (bytes / 1024).toFixed(2) + " KB";
  }
  return bytes + " bytes";
}

// ============================================
// 1. Concept
// ============================================
console.log("1. Concept ALLOW_MEMORY_GROWTH");
console.log("-".repeat(40));
console.log("   Par défaut, la mémoire WASM est fixe (INITIAL_MEMORY).");
console.log(
  "   Avec -sALLOW_MEMORY_GROWTH=1, elle peut grandir dynamiquement."
);
console.log("   Ce module a été compilé avec:");
console.log("     -sINITIAL_MEMORY=1048576 (1 MB)");
console.log("     -sALLOW_MEMORY_GROWTH=1");
console.log("     -sMAXIMUM_MEMORY=64MB");

// ============================================
// 2. Allocations qui dépassent la taille initiale
// ============================================
console.log("\n2. Allocations dépassant la taille initiale");
console.log("-".repeat(40));

console.log("   Mémoire initiale: 1 MB");
console.log("   Tentative d'allocation de 10 x 1 MB...");

// Allouer 10 blocs de 1 MB chacun
const totalAllocated = forceGrowth(10, 1024);

if (totalAllocated > 0) {
  console.log(`   ✓ Alloué avec succès: ${formatSize(totalAllocated)}`);
  console.log(
    "   → La mémoire a grandi automatiquement pour accommoder les allocations!"
  );
} else {
  console.log("   ✗ Échec de l'allocation");
}

// ============================================
// 3. Que se passe-t-il SANS ALLOW_MEMORY_GROWTH ?
// ============================================
console.log("\n3. Sans ALLOW_MEMORY_GROWTH");
console.log("-".repeat(40));
console.log("   Si on compile sans ce flag, malloc() retourne NULL");
console.log("   quand la mémoire est épuisée, causant un crash ou");
console.log("   un comportement indéfini.");

// ============================================
// 4. Impact sur les vues HEAP*
// ============================================
console.log("\n4. ⚠️ Impact sur les vues HEAP*");
console.log("-".repeat(40));
console.log("   Quand la mémoire grandit, les ArrayBuffer sous-jacents");
console.log("   sont recréés. Les références stockées deviennent invalides:");
console.log("");
console.log("   ❌ Mauvais:");
console.log("      const heap = Module.HEAPU8;   // Référence stockée");
console.log("      Module._malloc(largeSize);    // Peut faire grandir");
console.log(
  "      heap[0] = 1;                  // DANGER: heap peut être invalide!"
);
console.log("");
console.log("   ✓ Bon:");
console.log("      Module._malloc(largeSize);");
console.log("      Module.HEAPU8[0] = 1;         // Toujours à jour");

// ============================================
// 5. Options de compilation
// ============================================
console.log("\n5. Options de compilation mémoire");
console.log("-".repeat(40));
console.log("   | Flag                    | Description                    |");
console.log("   |-------------------------|--------------------------------|");
console.log("   | -sALLOW_MEMORY_GROWTH=1 | Permet la croissance           |");
console.log("   | -sINITIAL_MEMORY=16MB   | Mémoire initiale               |");
console.log("   | -sMAXIMUM_MEMORY=256MB  | Limite maximale                |");
console.log("   | -sSTACK_SIZE=64KB       | Taille de la pile              |");
