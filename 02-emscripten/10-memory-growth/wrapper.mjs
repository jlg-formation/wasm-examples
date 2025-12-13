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
const getHeapSize = Module.cwrap("getHeapSize", "number", []);
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
// 1. État initial
// ============================================
console.log("1. État initial de la mémoire");
console.log("-".repeat(40));

let pages = getMemoryPages();
let heapSize = getHeapSize();
console.log(`   Pages mémoire: ${pages} (${formatSize(pages * 64 * 1024)})`);
console.log(`   Heap utilisé: ${formatSize(heapSize)}`);
console.log(`   Buffer size: ${formatSize(Module.HEAPU8.length)}`);

// ============================================
// 2. Allocation progressive
// ============================================
console.log("\n2. Allocations progressives");
console.log("-".repeat(40));

const allocations = [64, 128, 256, 512, 1024]; // KB

for (const sizeKB of allocations) {
  const before = Module.HEAPU8.length;
  const result = allocateBlock(sizeKB);
  const after = Module.HEAPU8.length;

  const grew = after > before ? " 📈 GRANDI!" : "";
  console.log(`   Alloué ${sizeKB} KB → Buffer: ${formatSize(after)}${grew}`);
}

// ============================================
// 3. Forcer la croissance
// ============================================
console.log("\n3. Forcer la croissance (allocations massives)");
console.log("-".repeat(40));

const initialBuffer = Module.HEAPU8.length;
console.log(`   Buffer initial: ${formatSize(initialBuffer)}`);

// Allouer 10 blocs de 1 MB chacun
const totalAllocated = forceGrowth(10, 1024);
console.log(`   Alloué au total: ${formatSize(totalAllocated)}`);

const finalBuffer = Module.HEAPU8.length;
console.log(`   Buffer final: ${formatSize(finalBuffer)}`);
console.log(`   Croissance: ${formatSize(finalBuffer - initialBuffer)}`);

// ============================================
// 4. État final
// ============================================
console.log("\n4. État final de la mémoire");
console.log("-".repeat(40));

pages = getMemoryPages();
heapSize = getHeapSize();
console.log(`   Pages mémoire: ${pages} (${formatSize(pages * 64 * 1024)})`);
console.log(`   Heap utilisé: ${formatSize(heapSize)}`);

// ============================================
// 5. Note importante
// ============================================
console.log("\n5. ⚠️ Note importante");
console.log("-".repeat(40));
console.log("   Quand la mémoire grandit, les vues HEAP* sont recréées.");
console.log("   Les références précédentes deviennent invalides!");
console.log("");
console.log("   Mauvais:");
console.log("     const heap = Module.HEAPU8;");
console.log("     allocateSomething();  // Peut faire grandir la mémoire");
console.log("     heap[0] = 1;  // ❌ heap peut être invalide!");
console.log("");
console.log("   Bon:");
console.log("     allocateSomething();");
console.log("     Module.HEAPU8[0] = 1;  // ✅ Toujours à jour");
