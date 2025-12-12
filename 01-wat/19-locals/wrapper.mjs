/**
 * 19-locals - Variables locales en WAT
 *
 * Démontre l'utilisation de:
 * - local: déclaration de variable locale
 * - local.get: lecture d'une variable locale
 * - local.set: écriture dans une variable locale
 * - local.tee: écriture + retour de la valeur
 */

import { deepEqual, equal } from "node:assert";
import { readFile } from "node:fs/promises";
import { dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Charger et instancier le module
const bytes = await readFile(__dirname + "/locals.wasm");
const { instance } = await WebAssembly.instantiate(bytes);

const { swap, sumWithAccumulator } = instance.exports;

// Test 1: swap utilise une variable locale temporaire
const testSwap = () => {
  const a = 10;
  const b = 20;

  // La fonction retourne deux valeurs (multi-value return)
  const result = swap(a, b);

  console.log(`swap(${a}, ${b}) = [${result[0]}, ${result[1]}]`);

  // Vérifier que les valeurs sont échangées
  deepEqual(result, [b, a], "Values should be swapped");
};

// Test 2: sumWithAccumulator utilise local.tee
const testSum = () => {
  const n = 5;

  // Calcule 1 + 2 + 3 + 4 + 5 = 15
  const result = sumWithAccumulator(n);

  console.log(`sum_with_accumulator(${n}) = ${result}`);

  // Formule: n * (n + 1) / 2
  const expected = (n * (n + 1)) / 2;
  equal(result, expected, `Sum of 1 to ${n} should be ${expected}`);
};

testSwap();
testSum();

console.log("\n✅ All tests passed!");
