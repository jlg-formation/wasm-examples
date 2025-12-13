/**
 * Wrapper pour comparer les niveaux d'optimisation Emscripten
 * Question QCM: em_q10 - Flags -O1/-O2/-O3
 */

import { createRequire } from "module";
import { existsSync, statSync } from "fs";
import { dirname, join } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const require = createRequire(import.meta.url);

// Niveaux d'optimisation à tester
const levels = ["O0", "O1", "O2", "O3", "Os", "Oz"];
const iterations = 1000000; // Nombre d'itérations pour le benchmark

console.log("=== Comparaison des niveaux d'optimisation Emscripten ===\n");

// Tableau des résultats
const results = [];

for (const level of levels) {
  const jsPath = join(__dirname, `dist/compute-${level}.js`);
  const wasmPath = join(__dirname, `dist/compute-${level}.wasm`);

  if (!existsSync(jsPath)) {
    console.log(`⚠️  -${level}: Non compilé (exécutez 'make build-all')`);
    continue;
  }

  try {
    // Taille des fichiers
    const jsSize = statSync(jsPath).size;
    const wasmSize = existsSync(wasmPath) ? statSync(wasmPath).size : 0;
    const totalSize = jsSize + wasmSize;

    // Charger le module
    const Module = require(jsPath);

    // Attendre l'initialisation
    await new Promise((resolve) => {
      if (Module.onRuntimeInitialized) {
        const orig = Module.onRuntimeInitialized;
        Module.onRuntimeInitialized = () => {
          orig();
          resolve();
        };
      } else {
        Module.onRuntimeInitialized = resolve;
      }
      // Fallback si déjà initialisé
      setTimeout(resolve, 100);
    });

    // Benchmark
    const start = performance.now();
    const result = Module.ccall("compute", "number", ["number"], [iterations]);
    const elapsed = performance.now() - start;

    results.push({
      level: `-${level}`,
      jsSize: (jsSize / 1024).toFixed(1) + " KB",
      wasmSize: (wasmSize / 1024).toFixed(1) + " KB",
      totalSize: (totalSize / 1024).toFixed(1) + " KB",
      time: elapsed.toFixed(2) + " ms",
      result: result.toFixed(4),
    });

    console.log(
      `✓ -${level}: ${elapsed.toFixed(2)} ms (${(totalSize / 1024).toFixed(
        1
      )} KB)`
    );
  } catch (e) {
    console.log(`❌ -${level}: Erreur - ${e.message}`);
  }
}

// Tableau récapitulatif
if (results.length > 0) {
  console.log("\n=== Récapitulatif ===\n");
  console.log("| Flag | JS     | WASM   | Total  | Temps      |");
  console.log("|------|--------|--------|--------|------------|");
  for (const r of results) {
    console.log(
      `| ${r.level.padEnd(4)} | ${r.jsSize.padEnd(6)} | ${r.wasmSize.padEnd(
        6
      )} | ${r.totalSize.padEnd(6)} | ${r.time.padEnd(10)} |`
    );
  }

  console.log("\n💡 Conseils:");
  console.log("   - Développement: -O0 ou -O1 (compilation rapide)");
  console.log("   - Production: -O3 (performance) ou -Os/-Oz (taille)");
}
