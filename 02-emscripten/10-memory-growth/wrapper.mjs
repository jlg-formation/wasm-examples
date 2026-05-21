/**
 * Démonstration de la croissance mémoire dynamique Emscripten
 * Question QCM: em_q14 - -sALLOW_MEMORY_GROWTH
 */

import { createRequire } from "module";
import { dirname } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const require = createRequire(import.meta.url);

console.log("=== Démonstration ALLOW_MEMORY_GROWTH ===\n");

async function loadModule(modulePath) {
  const resolvedPath = require.resolve(modulePath);
  delete require.cache[resolvedPath];

  const moduleInstance = require(modulePath);

  if (moduleInstance.calledRun || moduleInstance.runtimeInitialized) {
    return moduleInstance;
  }

  await new Promise((resolve) => {
    const previousHandler = moduleInstance.onRuntimeInitialized;
    moduleInstance.onRuntimeInitialized = () => {
      previousHandler?.();
      resolve();
    };
  });

  return moduleInstance;
}

/**
 * Formate une taille en bytes de façon lisible
 * @param {number} bytes - Taille en octets
 * @returns {string} Taille formatée (KB, MB, etc.)
 */
function formatSize(bytes) {
  if (bytes >= 1024 * 1024) {
    return (bytes / (1024 * 1024)).toFixed(2) + " MB";
  } else if (bytes >= 1024) {
    return (bytes / 1024).toFixed(2) + " KB";
  }
  return bytes + " bytes";
}

function formatPages(pageCount) {
  return `${pageCount} pages (${formatSize(pageCount * 64 * 1024)})`;
}

async function runScenario(label, modulePath) {
  const moduleInstance = await loadModule(modulePath);
  const allocateBlock = moduleInstance.cwrap("allocateBlock", "number", [
    "number",
  ]);
  const getMemoryPages = moduleInstance.cwrap("getMemoryPages", "number", []);

  const requestedBytes = 10 * 1024 * 1024;
  const beforePages = getMemoryPages();
  const allocatedBytes = allocateBlock(requestedBytes / 1024);
  const afterPages = getMemoryPages();
  const grew = afterPages > beforePages;

  console.log(`\n${label}`);
  console.log("-".repeat(40));
  console.log(`   Avant: ${formatPages(beforePages)}`);
  console.log(`   Demande d'allocation: ${formatSize(requestedBytes)}`);

  if (allocatedBytes < 0) {
    console.log("   Résultat: allocation refusée");
  } else {
    console.log(
      `   Résultat: allocation réussie (${formatSize(allocatedBytes)})`,
    );
  }

  console.log(`   Après: ${formatPages(afterPages)}`);

  if (grew) {
    console.log("   ✓ Croissance observée: la mémoire WASM a augmenté.");
  } else {
    console.log("   ✗ Aucune croissance observée.");
  }

  return { allocatedBytes, beforePages, afterPages, grew };
}

// ============================================
// 1. Concept
// ============================================
console.log("1. Concept ALLOW_MEMORY_GROWTH");
console.log("-".repeat(40));
console.log("   Par défaut, la mémoire WASM est fixe (INITIAL_MEMORY).");
console.log(
  "   Avec -sALLOW_MEMORY_GROWTH=1, elle peut grandir dynamiquement.",
);
console.log("   Cette démo compare deux builds compilés avec:");
console.log("     -sINITIAL_MEMORY=1048576 (1 MB)");
console.log("     - croissance: -sALLOW_MEMORY_GROWTH=1 -sMAXIMUM_MEMORY=64MB");
console.log("     - fixe:       -sALLOW_MEMORY_GROWTH=0");
console.log("     -sABORTING_MALLOC=0 pour observer un échec propre");

// ============================================
// 2. Comparaison directe growth vs fixed
// ============================================
console.log("\n2. Comparaison directe growth vs fixed");
console.log("-".repeat(40));
console.log("   Les deux builds demandent une allocation unique de 10 MB.");
console.log(
  "   Avec 1 MB initial, seul le build growth peut agrandir la mémoire.",
);

const growthResult = await runScenario(
  "   Build avec ALLOW_MEMORY_GROWTH=1",
  "./dist/memory-growth.js",
);
const fixedResult = await runScenario(
  "   Build avec ALLOW_MEMORY_GROWTH=0",
  "./dist/memory-fixed.js",
);

// ============================================
// 3. Conclusion
// ============================================
console.log("\n3. Conclusion");
console.log("-".repeat(40));
if (growthResult.grew && fixedResult.allocatedBytes < 0) {
  console.log("   ✓ La différence est observable: growth agrandit la mémoire,");
  console.log("     fixed refuse l'allocation quand 1 MB ne suffit plus.");
} else {
  console.log("   ✗ La différence attendue n'a pas été observée.");
}

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
  "      heap[0] = 1;                  // DANGER: heap peut être invalide!",
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
